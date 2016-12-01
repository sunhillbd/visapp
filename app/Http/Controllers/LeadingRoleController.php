<?php

namespace App\Http\Controllers;

use App\Document;
use App\DocumentKind;
use App\Exhibition;
use Illuminate\Http\Request;
use App\EventProduction;

class LeadingRoleController extends Controller
{
    public function __construct()
    {
        $this->middleware('login');
        $this->middleware('dashboard');

    }

    public function create(Document $document, EventProduction $eventProduction, Exhibition $exhibition, DocumentKind $documentKind)
    {
        $authUser = auth()->user();

        $documents = $document->whereHas('documentals', function ($query) use($authUser) {
            $query->where('documentals.user_id', '=',$authUser->id );
        })->with('documentals')->get();

        $eventProductions = $eventProduction->pluck('eop_type','id');
        $exhibitions = $exhibition->pluck('exhibition_type','id');
        $documentKinds = $documentKind->pluck('document_kind','id');
        return view('frontend.dashboard.leading-role.create', compact('documents','eventProductions','exhibitions','documentKinds'));
    }
}
