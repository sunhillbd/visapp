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
                         'question'=>'Title of Other Event or Production',
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
                          'attributes'=>['class'=>'form-control', 'autofocus','id'=>'year_event_production']
                      ]
              )

    <br>

    @include('frontend.dashboard.partials.panel-row',['panelTitle'=>'Add Evidence of Your Involvement'])


    @include(
                         'frontend.dashboard.form-elements.select',
                         [

                             'name'=>'event_type',
                             'selectValues'=>isset($documentKinds) && !$documentKinds->isEmpty() ? $documentKinds:[],
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

    @include('frontend.dashboard.form-elements.yes-no-button',['question'=>'Do you have additional evidence of your involvement in #titleOfProductionOrEvent'])

    @include('frontend.dashboard.partials.panel-row',['panelTitle'=>'Add Evidence of Your Involvement'])

        {!! Form::close() !!}


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
                }else{

                   $('#exhibition_type').hide();
                    $('#row_other_event_production').hide();
                }

                if($('#exhibition_type').is(':visible')){
                   $('#label_title_event_production').html('Title of '+ exhibitionType.text());
                }else{
                   $('#label_title_event_production').html('Title of '+ eventProductionType.text());
                }


            }) .trigger('change');



            $('#exhibition_type').bind('change',function(){

                $('#label_title_event_production').html('Title of '+ $('#exhibition_type option:selected').text());
            });

            $('#title_event_production').bind('keyup', function () {

                $('#label_event_production_venue').html('Name of venue where '+  $('#title_event_production').val() + ' took place')
                $('#label_city_contry_event_production').html('Name of venue where '+  $('#title_event_production').val() + ' took place')
                $('#label_year_event_production').html('Name of venue where '+  $('#title_event_production').val() + ' took place')
            });



            $('#lr_yes_no_trans').bind('change',function(){

                if($(this).val()=='yes'){
                    $('#lr_yes_no_div_trans').show()
                }else{
                    $('#lr_yes_no_div_trans').hide()
                }


            }).trigger('change');



        });


    </script>

@endsection