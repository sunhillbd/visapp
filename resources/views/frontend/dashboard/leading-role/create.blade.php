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

       @include('frontend.dashboard.partials.panel-row',['panelTitle'=>'Leading Role','panelBodyText'=>'Text'])
       @include('frontend.dashboard.partials.panel-row',['panelTitle'=>'Add Event/Production','panelBodyText'=>'Text'])






        @include(
                       'frontend.dashboard.form-elements.select',
                       [

                           'name'=>'event_production_type',
                           'selectValues'=> isset($eventProductions) && !$eventProductions->isEmpty() ? $eventProductions:[],
                           'value'=>null,
                           'question'=>'Type of Event',
                           'attributes'=>['class'=>'form-control', 'autofocus','id'=>'event_production_type']
                       ]
               )

    <br>
    @include(
                     'frontend.dashboard.form-elements.input',
                     [
                         'type'=>'text',
                         'name'=>'other_event_production',
                         'value'=>null,
                         'question'=>'Other Event or Production',
                         'leabelId'=>'label_other_event_production',
                         'rowId'=>'row_other_event_production',
                         'rowStyle'=>'display:none',
                         'attributes'=>['class'=>'form-control', 'autofocus', 'id'=>'other_event_production',]
                     ]
             )

    <br>


    @include(
                 'frontend.dashboard.form-elements.select',
                 [

                     'name'=>'exhibition_type',
                     'selectValues'=> isset($exhibitions) && !$exhibitions->isEmpty() ? $exhibitions:[],
                     'value'=>null,
                     'question'=>'',
                     'attributes'=>['class'=>'form-control', 'autofocus','id'=>'exhibition_type','style'=>'display:none']
                 ]
         )
    <br>
        @include(
                        'frontend.dashboard.form-elements.input',
                        [
                            'type'=>'text',
                            'name'=>'title_event_production',
                            'value'=>null,
                            'question'=>'Title of #typeOfEventOrProduction',
                            'labelClass'=>'pull-left',
                            'leabelId'=>'label_title_event_production',
                            'attributes'=>['class'=>'form-control', 'autofocus','id'=>'title_event_production']
                        ]
                )
        <br>
        @include(
                       'frontend.dashboard.form-elements.input',
                       [
                           'type'=>'text',
                           'name'=>'event_production_venue',
                           'value'=>null,
                           'question'=>'Name of venue where #titleOfEventorProduction took place',
                           'leabelId'=>'label_event_production_venue',
                           'labelClass'=>'label_title',
                           'attributes'=>['class'=>'form-control', 'autofocus', 'id'=>'event_production_venue']
                       ]
               )

        <br>
        @include(
                      'frontend.dashboard.form-elements.input',
                      [
                          'type'=>'text',
                          'name'=>'city_contry_event_production',
                          'value'=>null,
                          'question'=>'City and Country where #titleOfEventorProduction took place',
                          'leabelId'=>'label_city_contry_event_production',
                           'labelClass'=>'label_title',
                          'attributes'=>['class'=>'form-control', 'autofocus','id'=>'city_contry_event_production']
                      ]
              )
        <br>

        @include(
                      'frontend.dashboard.form-elements.input',
                      [
                          'type'=>'text',
                          'name'=>'year_event_production',
                          'value'=>null,
                          'question'=>'Year that #titleOfEventorProduction took place',
                          'leabelId'=>'label_year_event_production',
                           'labelClass'=>'label_title',
                          'attributes'=>['class'=>'form-control', 'autofocus','id'=>'year_event_production']
                      ]
              )

    <br>

    <div id="evidence-of-involvement">

        @include('frontend.dashboard.partials.panel-row',['panelTitle'=>'Add Evidence of Your Involvement','panelBodyText'=>'Text'])

       <div class="step">

           @include(
                            'frontend.dashboard.form-elements.select',
                            [

                                'name'=>' ',
                                'selectValues'=>isset($documentKinds) && !$documentKinds->isEmpty() ? $documentKinds:[],
                                'value'=>null,
                                'question'=>'What kind of document is this?',
                                'attributes'=>['class'=>'form-control', 'autofocus','id'=>'document_type']
                            ]
               )
           <br>
           @include(
                                'frontend.dashboard.form-elements.input',
                                [
                                    'type'=>'text',
                                    'name'=>'',
                                    'value'=>null,
                                    'question'=>'Other Document Type',
                                    'leabelId'=>'label_year_event_production',
                                    'labelClass'=>'label_title',
                                    'rowId'=>'row_other_document_type',
                                    'rowStyle'=>'display:none',
                                    'attributes'=>['class'=>'form-control', 'autofocus','id'=>'other_document_type']
                                ]
                        )


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
                                   'yesNoUploadDivId'=>'lr_yes_no_div_trans',
                                   'yesNoSelectName'=>'choose_upload',
                                   'yesNoUploadStyle'=>'display:none',
                                   'yesNoSelectAttributes'=>['class'=>'form-control','id'=>'lr_yes_no_trans'],

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
           <br>

           @include('frontend.dashboard.form-elements.yes-no-button',[
           'yesButtonType'=>'button',
              'noButtonType'=>'button',
           'question'=>'Do you have additional evidence of your involvement in #titleOfProductionOrEvent.(yes/add evidence of your involvement; no/evidence about distinguished reputation)',
           'yesBtnAttr'=>['class'=>'action next btn btn-info btn-success','id'=>'additional-evidence-yes'],
           'noBtnAttr'=>['class'=>'btn btn-warning','id'=>'additional-evidence-no','style'=>'display:none']
           ])

       </div>



    </div>

    @include('frontend.dashboard.partials.panel-row',['panelTitle'=>'Add Evidence about Distinguished Reputation','panelBodyText'=>'Text'])

    {{--@include(
                    'frontend.dashboard.form-elements.select',
                    [

                        'name'=>'lr_press_coverage',
                        'selectValues'=> ['yes'=>'Yes','no'=>'No'],
                        'value'=>null,
                        'question'=>'Do you have press coverage of #titleOfProductionEvent that you have yet to add to this category? It does not have to mention you by name.(if yes, branch B=press; if no #titleOfProductionEvent is event)',
                        'attributes'=>['class'=>'form-control yes-no-select', 'autofocus','id'=>'press-coverage','style'=>'display:block']
                    ]
            )--}}

    @include('frontend.dashboard.form-elements.yes-no-button',[
     'yesButtonType'=>'button',
       'noButtonType'=>'button',
    'question'=>'Do you have press coverage of #titleOfProductionEvent that you have yet to add to this category? It does not have to mention you by name.(if yes, branch B=press; if no #titleOfProductionEvent is event)',
    'yesBtnAttr'=>['class'=>'btn btn-success','id'=>'press-coverage-yes'],
    'noBtnAttr'=>['class'=>'btn btn-warning','id'=>'press-coverage-no','style'=>'display:none']
    ])

   {{-- @include(
                       'frontend.dashboard.form-elements.select',
                       [

                           'name'=>'lr_press_about_venue',
                           'selectValues'=> ['yes'=>'Yes','no'=>'No'],
                           'value'=>null,
                           'question'=>'If #titleOfEventProduction is an event: is there press about the venue at which it took place? It doesn\'t have to mention you or #titelProductionEvent. (if yes, branch C=press; if no , information about the venue)',
                           'attributes'=>['class'=>'form-control yes-no-select', 'autofocus','id'=>'press-about-venue','style'=>'display:block']
                       ]
               )--}}


        @include('frontend.dashboard.form-elements.yes-no-button',[
        'yesButtonType'=>'button',
       'noButtonType'=>'button',
    'question'=>'If #titleOfEventProduction is an event: is there press about the venue at which it took place? It doesn\'t have to mention you or #titelProductionEvent. (if yes, branch C=press; if no , information about the venue).',
    'yesBtnAttr'=>['class'=>'btn btn-success','id'=>'press-about-venue-yes'],
    'noBtnAttr'=>['class'=>'btn btn-warning','id'=>'press-about-venue-no','style'=>'display:none']
     ])
{{--
    @include(
                      'frontend.dashboard.form-elements.select',
                      [

                          'name'=>'lr_info_about_venue',
                          'selectValues'=> ['yes'=>'Yes','no'=>'No'],
                          'value'=>null,
                          'question'=>'If #titleOfEventProduction is an event: do you have any information about the venue at which it took place? This is typically a screenshot of the About Section of the venue\'s website.',
                          'attributes'=>['class'=>'form-control yes-no-select', 'autofocus','id'=>'info-about-venue','style'=>'display:block']
                      ]
              )--}}

    @include(
                    'frontend.dashboard.form-elements.input',
                    [
                        'type'=>'text',
                        'name'=>'year_event_production',
                        'value'=>null,
                        'question'=>'If #titleOfEventProduction is an event: do you have any information about the venue at which it took place? This is typically a screenshot of the About Section of the venue\'s website.',
                        'leabelId'=>'label_year_event_production',
                        'labelClass'=>'label_title',
                        'inputDivStyle'=>'display:none',
                        'attributes'=>['class'=>'form-control', 'autofocus','id'=>'year_event_production']
                    ]
            )

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

    @include('frontend.dashboard.form-elements.yes-no-upload',
                     [

                             'uploadQuestion'=>'Is this document in english?',
                             'yesNoUploadDivId'=>'lr_yes_no_div_venu_info_trans',
                             'yesNoSelectName'=>'choose_upload',
                             'yesNoUploadStyle'=>'display:none',
                             'yesNoSelectAttributes'=>['class'=>'form-control','id'=>'lr_yes_no_venu_info_trans'],

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
    @include('frontend.dashboard.partials.panel-row',['panelTitle'=>'You are Coming to an End','panelBodyText'=>''])

    @include('frontend.dashboard.form-elements.yes-no-button',[
       'yesButtonType'=>'submit',
       'noButtonType'=>'button',
       'question'=>'That\'s it for #titleOfProductionEvent. Would you like to add evidence of another production or event? ',
       'yesBtnAttr'=>['class'=>'btn btn-success','id'=>'press-about-venue-yes'],
       'noBtnAttr'=>['class'=>'btn btn-warning','id'=>'press-about-venue-no','style'=>'display:block-inline']
   ])


        {!! Form::close() !!}

    {{--{!! Form::open() !!}

    @include('frontend.dashboard.form-elements.yes-no-button',[
     'yesButtonType'=>'submit',
     'noButtonType'=>'button',
     'question'=>'Congrats!!! you have reached the end of this category',
     'yesBtnAttr'=>['class'=>'btn btn-success','id'=>'press-about-venue-yes'],
     'noBtnAttr'=>['class'=>'btn btn-warning','id'=>'press-about-venue-no','style'=>'display:none']
 ])
    {!! Form::close() !!}
--}}

@endsection


@section('scripts')

    <script>

        $(document).ready(function () {

            $('#event_production_type').bind('change' ,function(){

                var eventProductionType = $('#event_production_type option:selected');
                var exhibitionType = $('#exhibition_type option:selected');

                if(eventProductionType.text() == 'Art Exhibition'
                   || eventProductionType.text() == 'Design Exhibition'){

                    $('#exhibition_type').show();
                    $('#row_other_event_production').hide();
                }else if(eventProductionType.text() == 'Other'){

                    $('#row_other_event_production').show();
                    $('#exhibition_type').hide();
                    $('#label_title_event_production').html('Title of #OtherEventOrProductionType');
                }else{

                    $('#exhibition_type').hide();
                    $('#row_other_event_production').hide();
                }

                if($('#exhibition_type').is(':visible')){
                   $('#label_title_event_production').html('Title of '+ exhibitionType.text());
                }else  if($('#exhibition_type').not(':visible') && eventProductionType.text() == 'Other'){
                    $('#label_title_event_production').html('Title of #otherEventOrProductionType');
                }
                else{
                   $('#label_title_event_production').html('Title of '+ eventProductionType.text());
                }

            }) .trigger('change');

            $('#exhibition_type').bind('change',function(){

                $('#label_title_event_production').html('Title of '+ $('#exhibition_type option:selected').text());
            });

            $('#title_event_production').bind('keyup', function () {

//                $('.label_title').html('Name of venue where '+  $('#title_event_production').val() + ' took place')
                $('#label_event_production_venue').html('Name of venue where '+  $('#title_event_production').val() + ' took place')
                $('#label_city_contry_event_production').html('City and Country where '+  $('#title_event_production').val() + ' took place')
                $('#label_year_event_production').html('Year that '+  $('#title_event_production').val() + ' took place')
            });

            $('#other_event_production').bind('keyup', function () {

                $('#label_title_event_production').html('Title of '+ $(this).val())
            });

            $('#lr_yes_no_trans').bind('change',function(){

                if($(this).val()=='yes'){
                    $('#lr_yes_no_div_trans').hide()
                }else{
                    $('#lr_yes_no_div_trans').show()
                }
            }).trigger('change');

            $('#lr_yes_no_venu_info_trans').bind('change',function(){

                if($(this).val()=='yes'){
                    $('#lr_yes_no_div_venu_info_trans').hide()
                }else{
                    $('#lr_yes_no_div_venu_info_trans').show()
                }
            }).trigger('change');

            $('#document_type').bind('change', function(){
                var documentType = $('#document_type option:selected').text();
                if(documentType=='Other'){
                      $('#row_other_document_type').show();
                }else{
                    $('#row_other_document_type').hide();
                }

            }).trigger('change');



        });


    </script>

@endsection