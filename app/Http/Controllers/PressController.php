<?php

namespace App\Http\Controllers;

use App\Document;
use App\Press;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;

class PressController extends Controller
{

    private $press;
    private $doc = [];

    public function __construct(Press $press)
    {
        $this->middleware('login');
        $this->middleware('dashboard');
        $this->press = $press;
    }

    public function create(Press $press, Document $document)
    {

        $authUser = auth()->user();

        /*$pressWithDocs = $press->whereHas('documents', function ($query) use($authUser) {
            $query->where('documentals.user_id', '=',$authUser->id );
        })->get();*/

        $documents = $document->whereHas('documentals', function ($query) use($authUser) {
            $query->where('documentals.user_id', '=',$authUser->id );
        })->with('documentals')->get();

//dd($documents);
        return view('frontend.dashboard.press.create',compact('pressWithDocs','documents'));
    }


    public function store(Request $request)
    {


//dd($request->has('check_article'));
//dd($request->check_article);
        DB::transaction(function () use($request) {

            $press = new Press();
            $press->user_id = auth()->user()->id;
            $press->article_title = $request->has('article_title')?$request->article_title:null;
            $press->publication_name = $request->has('publication_name')? $request->publication_name:null;
            $press->when_published =$request->has('publication_time')? $request->publication_time:null;
            $press->author_name = $request->has('article_author')?$request->article_author:$request->article_author;
            $press->is_confirm = false;
            $press->is_reviewed = false;
            $press->is_in_english = $request->has('article_in_english')?$request->article_in_english == 'yes':true;
            $press->article_translation_back_later = $request->has('article_translation_back_later');
            $press->publication_back_later = $request->has('publication_back_later');
            $press->publication_translation_back_later = $request->has('publication_translation_back_later');
            $press->article_type = ARTICLE_DOC;

            $press->save();


            if ($request->hasFile('article')) {

                foreach ($request->article as $docType => $doc) {

                        $docType = $docType;
                        $document = null;
                        $documentName = time().str_random(4).$doc->getClientOriginalName();
                        $doc->move(public_path('uploads'),$documentName);
                        $document = new Document();
                        $document->user_id = auth()->user()->id;
                        $document->document_name = $documentName;

                        $press->documents()->save($document,[
                            'user_id'=>auth()->user()->id,
                            'document_type'=>$docType
                        ]);

                }
            }

            if($request->has('check_article')){

                foreach($request->check_article as $docType=>$checkArticle){

                    foreach ($checkArticle  as $docId) {
                        $newDoc = null;
                        $newDoc = new Document();
                        $documentToAddForCategory = $newDoc->find($docId);
                        $press->documents()->save($documentToAddForCategory,[
                            'user_id' => auth()->user()->id,
                            'document_type'=>$docType
                        ]);
                    }
                }
            }

        });

        DB::transaction(function()use($request){

            $pressArtwork = new Press();

            $pressArtwork->user_id = auth()->user()->id;
            $pressArtwork->article_title = $request->has('artwork_article_title')?$request->artwork_article_title:null;
            $pressArtwork->publication_name = $request->has('artwork_publication_name')? $request->artwork_publication_name:null;
            $pressArtwork->when_published =$request->has('artwork_publication_time')? $request->artwork_publication_time:null;
            $pressArtwork->is_confirm = false;
            $pressArtwork->is_reviewed = false;
            $pressArtwork->is_in_english = $request->has('artwork_article_in_english')?$request->artwork_article_in_english == 'yes':true;
            $pressArtwork->article_translation_back_later = $request->has('artwork_article_translation_back_later');
            $pressArtwork->publication_back_later = $request->has('artwork_publication_back_later');
            $pressArtwork->publication_translation_back_later = $request->has('artwork_publication_translation_back_later');
            $pressArtwork->article_type = ARTWORK_ARTICLE_DOC;



            if ($request->hasFile('artwork')) {

                $pressArtwork->save();

                foreach ($request->artwork as $docType => $doc) {

                    $docType = $docType;
                    $artworkDocument = null;
                    $documentName = time().str_random(4).$doc->getClientOriginalName();
                    $doc->move(public_path('uploads'),$documentName);
                    $artworkDocument = new Document();
                    $artworkDocument->user_id = auth()->user()->id;
                    $artworkDocument->document_name = $documentName;

                    $pressArtwork->documents()->save($artworkDocument,[
                        'user_id'=>auth()->user()->id,
                        'document_type'=>$docType
                    ]);

                }
            }

            if($request->has('check_artwork')){

                foreach($request->check_artwork as $docType=>$checkArtwork){
                    foreach ($checkArtwork  as $docId) {
                        $newArtworkDoc = null;
                        $newArtworkDoc = new Document();
                        $documentToAddForCategory = $newArtworkDoc->find($docId);
                        $pressArtwork->documents()->save($documentToAddForCategory,[
                            'user_id' => auth()->user()->id,
                            'document_type'=>$docType
                        ]);
                    }
                }
            }



        });

        return back()->withSuccess('press created');
    }

    public function edit($pressId)
    {
        $pressToEdit = $this->press->findOrFail($pressId);

        return view('frontend.dashboard.press.edit', compact('pressToEdit'));

    }

    public function update( Request $request, $pressId)
    {
        $articleDocuments = [
            ARTICLE_DOC,
            ARTICLE_DOC_TRANSLATION,
            PUBLICATION_DOC,
            PUBLICATION_DOC_TRANSLATION
        ];
       $pressToEdit = $this->press->findOrFail($pressId);


        DB::transaction(function () use($request,$articleDocuments,$pressToEdit) {



            $pressToEdit->user_id = auth()->user()->id;
            $pressToEdit->article_title = $request->has('article_title')?$request->article_title:null;
            $pressToEdit->publication_name = $request->has('publication_name')? $request->publication_name:null;
            $pressToEdit->when_published =$request->has('publication_time')? $request->publication_time:null;
            $pressToEdit->author_name = $request->has('article_author')?$request->article_author:$request->article_author;
            $pressToEdit->is_confirm = false;
            $pressToEdit->is_reviewed = false;
            $pressToEdit->is_in_english = $request->has('article_in_english')?$request->article_in_english == 'yes':true;
            $pressToEdit->article_translation_back_later = $request->has('article_translation_back_later');
            $pressToEdit->publication_back_later = $request->has('publication_back_later');
            $pressToEdit->publication_translation_back_later = $request->has('publication_translation_back_later');
            $pressToEdit->article_type = ARTICLE_DOC;

            $pressToEdit->save();

            foreach ($articleDocuments as $doc) {
                if ( $request->hasFile($doc)) {

                    $this->doc[] = $request->file($doc);
                    $docType = $doc;
                    $document = null;
                    $documentName = time().str_random(4).$request->file($doc)->getClientOriginalName();
                    $request->file($doc)->move(public_path('uploads'),$documentName);
                    $document = new Document();
                    $document->user_id = auth()->user()->id;
                    $document->document_name = $documentName;

                    $pressToEdit->documents()->save($document,[
                        'user_id'=>auth()->user()->id,
                        'document_type'=>$docType
                    ]);


                }
            }


        });

        return back()->withSuccess('press updated');


    }


}
