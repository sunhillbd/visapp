<?php

namespace App\Http\Controllers;

use App\Document;
use Illuminate\Http\Request;

class LeadingRoleController extends Controller
{
    public function __construct()
    {

    }

    public function create(Document $document)
    {
        $authUser = auth()->user();

        $documents = $document->whereHas('documentals', function ($query) use($authUser) {
            $query->where('documentals.user_id', '=',$authUser->id );
        })->with('documentals')->get();


        return view('frontend.dashboard.leading-role.create', compact('documents'));
    }
}
