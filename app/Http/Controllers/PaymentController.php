<?php

namespace App\Http\Controllers;

use App\FormCategory;
use App\Plan;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PaymentController extends Controller
{

    public function __construct()
    {

    }

    /**
     * @return $this
     */
    public function getPaymentForm()
    {
        return view('frontend.payment')->with('register',true);
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getUpdatePaymentForm()
    {
        $existingUserPlan = isset(auth()->user()->plan->package_name)?auth()->user()->plan->package_name:null;

        return view('frontend.dashboard.settings.payment', compact('existingUserPlan'))->with('register',true);
    }

    /**
     * @param Request $request
     * @param Plan $plan
     * @param FormCategory $formCategory
     * @return mixed
     */
    public function pay(Request $request, Plan $plan, FormCategory $formCategory)
    {

        $user = auth()->user();
        $plan = $request->has('package')?$plan->getPlan($request->package):null;
//        $user->plan_id = isset($plan)?$plan->id:0;
//        $plan = $user->plan;
        $user->coupon_code =$request->has('coupon_code')? $request->coupon_code:null;
        $token = $request->input('stripeToken');

        DB::transaction(function()use($user,$token,$plan,$formCategory){

            $this->chargeUser($user,$token,$plan);
            $user->update([
                'plan_id'=>$plan->id,
                'coupon_code'=>$user->coupon_code,
                'is_charged'=>true
            ]);

            if($user->formCategories->isEmpty()){

                foreach ($formCategory->all() as $formCategory) {
                    $user->formCategories()->attach($formCategory->id,['status'=>'In Progress']);
                }
            }
        });

        return redirect(route('dashboard'))->withSuccess('Congrats!!! Your Payment is Done. So You can Proceed now.....');
    }



    private function chargeUser(User $user,$token,Plan $plan)
    {
        try  {

            \Stripe\Stripe::setApiKey("sk_test_ti1XFrcR7QnUntyrFHs9wYvq");

            $packagePrice =  isset($plan)?($plan->price)*100:45*100;

            $customer = \Stripe\Customer::create(array(
                "source" => $token,
                "email" => $user->email,
                "coupon" => $user->coupon_code
            ));

//            $coupon = \Stripe\Customer::retrieve($customer->id);

            if(isset($customer->discount->coupon->amount_off) ){

                $packagePrice = $packagePrice - $customer->discount->coupon->amount_off;

            }

            if (isset($customer->discount->coupon->percent_off)) {

                $packagePrice =$packagePrice - $packagePrice*($customer->discount->coupon->percent_off)/100;
            }

            $charged = \Stripe\Charge::create(array(
                'customer'=>$customer->id,
                "amount" => $packagePrice,
                "currency" => "usd",
                "description" => "Charge for ".$user->email
            ));



        } catch (Exception $e) {

            return $e;
        }

    }
}
