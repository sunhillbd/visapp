@extends('frontend.dashboard.layouts.dashboard')

@section('styles')
    <link href="{{ asset('assets/plugins/dropzone/css/dropzone.css') }}" type="text/css" rel="stylesheet">
    {!! Html::style('css/bootstrap-datepicker.min.css') !!}



@endsection

@section('content')

    {!! Form::open([
                 'route'=>Route::has('leading_role.store')?'leading_role.store':'#','files'=>true,
                 'class'=>'form-vertical'
                 ])
    !!}

       @include('frontend.dashboard.partials.panel-row',['panelTitle'=>'Leading Role'])
       @include('frontend.dashboard.partials.panel-row',['panelTitle'=>'Add Event/Production'])






        @include(
                       'frontend.dashboard.form-elements.select',
                       [

                           'name'=>'event_type',
                           'selectValues'=>['Art Exhibition','Design Exhibition','Music Performance','Fashion Show','Film Production','Television Production','Music Album','Others'],
                           'value'=>null,
                           'question'=>'Type of Event',
                           'attributes'=>['class'=>'form-control', 'autofocus']
                       ]
               )
        <br>
        @include(
                        'frontend.dashboard.form-elements.input',
                        [
                            'type'=>'text',
                            'name'=>'name',
                            'value'=>null,
                            'question'=>'Title of Art Exhibition',
                            'attributes'=>['class'=>'form-control', 'autofocus']
                        ]
                )
        <br>
        @include(
                       'frontend.dashboard.form-elements.input',
                       [
                           'type'=>'text',
                           'name'=>'name',
                           'value'=>null,
                           'question'=>'Title of Art Exhibition',
                           'attributes'=>['class'=>'form-control', 'autofocus']
                       ]
               )

        <br>
        @include(
                      'frontend.dashboard.form-elements.input',
                      [
                          'type'=>'text',
                          'name'=>'name',
                          'value'=>null,
                          'question'=>'Title of Art Exhibition',
                          'attributes'=>['class'=>'form-control', 'autofocus']
                      ]
              )
        <br>

        @include(
                      'frontend.dashboard.form-elements.input',
                      [
                          'type'=>'text',
                          'name'=>'name',
                          'value'=>null,
                          'question'=>'Title of Art Exhibition',
                          'attributes'=>['class'=>'form-control', 'autofocus']
                      ]
              )

    <br>

    @include('frontend.dashboard.partials.panel-row',['panelTitle'=>'Add Evidence of Your Involvement'])


    @include(
                         'frontend.dashboard.form-elements.select',
                         [

                             'name'=>'event_type',
                             'selectValues'=>['Press','Exhibition Catelog','Event Poster','Screenshot of Venue Website','Press Release','Exhibition Postcard','Others'],
                             'value'=>null,
                             'question'=>'What kind of document is this?',
                             'attributes'=>['class'=>'form-control', 'autofocus']
                         ]
            )
    <br>


 @include('frontend.dashboard.partials.upload-modal-media-library',
                   [
                           'uploadModalMedia'=>[
                                                    'fileUploadName'=>'article[doc_publication_translation]',
                                                     'uploadModal'=>'up-article-publication-trans',
                                                     'checkName'=>'check_article[doc_publication_translation][]'
                                                ],
                           'uploadModalMediaFileName'=>'',
                           'modalMediaFileId'=>'',
                           'modalMediaCheckName'=>'',
                           'modalMediaCheckId'=>'',
                           'modalMediaCheckValue'=>'',
                   ])

    <br>

   @include('frontend.dashboard.form-elements.yes-no-upload',
                   [

                           'uploadQuestion'=>'Is this document in english?',
                           'yesNoSelectName'=>'choose_upload',
                           'yesNoSelectAttributes'=>['class'=>'form-control'],

                           'uploadSelectIncludeAttr'=> [
                                                        'fileUploadName'=>'article[doc_publication_translation]',
                                                        'uploadModal'=>'up-article-publication-trans',
                                                        'checkName'=>'check_article[doc_publication_translation][]'
                                                        ],
                           'uploadCheckName'=>'upload_check_name',
                           'uploadCheckValue'=>'yes',
                           'checkTrueOrFalse'=>false,
                           'uploadCheckAttr'=>['class'=>'form-control'],
                           'uploadTitle'=>'Upload your file',
                           'fileInputName'=>'file_input',
                           'fileInputAttr'=>['class'=>'form-control']


                   ])

        {!! Form::close() !!}


@endsection