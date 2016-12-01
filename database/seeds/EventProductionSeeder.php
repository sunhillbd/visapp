<?php

use Illuminate\Database\Seeder;

class EventProductionSeeder extends Seeder
{
    private $eops = ['Art Exhibition','Design Exhibition','Music Performance','Fashion Show','Film Production','Television Production','Music Album','Other'];
    private $exhibitions = ['Solo Exhibition','Two-person Exhibition','Three-person Exhibition','Group Exhibition'];
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Eloquent::unguard();
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        (new \App\EventProduction())->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        foreach ($this->eops as $eop) {
            DB::table('event_productions')->insert([

                'eop_type' => $eop,

            ]);
        }

        Eloquent::unguard();
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        (new \App\Exhibition())->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        foreach ($this->exhibitions as $exhibition) {
            DB::table('exhibitions')->insert([

                'exhibition_type' => $exhibition,

            ]);
        }


    }
}
