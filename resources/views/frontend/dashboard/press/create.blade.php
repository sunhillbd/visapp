
@extends('frontend.dashboard.layouts.dashboard')

@section('styles')
    <link href="{{ asset('assets/plugins/dropzone/css/dropzone.css') }}" type="text/css" rel="stylesheet">
        {!! Html::style('css/bootstrap-datepicker.min.css') !!}
{{--    {!! Html::style('css/datatable.min.css') !!}--}}


@endsection
@section('content')

    {{--@include('frontend.partials.upload-modal')--}}
                    <div class="static-content">
                        <div class="page-content">
                            <div class="container-fluid">
                            	<div class="row">
	                        		<div class="col-md-12">



                                        <div class="panel panel-default" style="margin-top: 20px;">
                                            <div class="panel-body">
                                                <div class="tab-content">
                                                    <div class="tab-pane active">

                                                        <form action="{{ route('press.store') }}" enctype="multipart/form-data" id="basicwizard" class="form-horizontal" method="POST">
                                                            {{ csrf_field() }}

                                                           @include('frontend.dashboard.press.partials.article-written-about-you')

                                                           @include('frontend.dashboard.press.partials.article-for-artwork')

                                                            <fieldset title="Congratulations">
                                                                <legend></legend>
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <h3 class="congratulations">Congratulations you've reached the end of this category</h3>
                                                                    </div>
                                                                </div>
                                                            </fieldset>
                                                            <input type="submit" class="finish btn-success btn" value="Save and return to categories home" />
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>



	                        		</div>
	                        	</div>

                            </div> <!-- .container-fluid -->
                        </div> <!-- #page-content -->
                    </div>




        <!-- tipuploadtranslation Modal -->
        <div class="modal fade" id="tipuploadtranslation" tabindex="-1" role="dialog" aria-labelledby="tipuploadtranslation" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <p style="font-weight: bold;">What is a translation with certification?</p>
                        <p>It's probably not as complicated as you think. See our <a href="#">translation guidelines</a> resource for everything you need to know about how to properly format your translation and have it certified by a friend.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <!-- tipuploadevidence Modal -->
        <div class="modal fade" id="tipuploadevidence" tabindex="-1" role="dialog" aria-labelledby="tipuploadtranslation" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <p style="font-weight: bold;">What is this?</p>
                        <p>The best evidence of a publication's circulation or readership is its media kit. For more information about how to find a publication's media kit, or for alternative sources of this kind of information that you can use in cases where a media kit is not available, see our resource for <a href="#">finding evidence of a publication's readership</a></p>
                        <p style="font-weight: bold;">Why are you asking me for this?</p>
                        <p>To be of value to your case, articles must be shown to have appeared in publications with national or international audiences.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->


@endsection

@section('scripts')

<!-- Load page level scripts-->
<script src="{{ asset('assets/plugins/form-validation/jquery.validate.min.js') }}"></script>                   <!-- Validate Plugin -->
<script src="{{ asset('assets/plugins/form-stepy/jquery.stepy.js') }}"></script>                               <!-- Stepy Plugin -->
<script src="{{ asset('assets/demo/demo-formwizard.js') }}"></script>
<script src="{{ asset('assets/plugins/dropzone/dropzone.min.js') }}"></script>
<script src="{{ asset('js/bootstrap-datepicker.min.js') }}"></script>



<script>
$(function() {

    $('#uploadtranslation').change(function(){
        $('.uploadtranslationbox').hide();
        $('#' + $(this).val()).show();
    });

});
$(function() {

    $('#uploadtranslation2').change(function(){
        $('.uploadtranslationbox2').hide();
//        $('#' + $(this).val()).show();
        $('#publication_upload_english').show();
    });

});
$(function() {

    $('#uploadtranslation3').change(function(){
        $('.uploadtranslationbox3').hide();
//        $('#' + $(this).val()).show();
        $('#artwork_publication_upload_english').show();
    });

});
$(function() {

    $('#uploadtranslation4').change(function(){
        $('.uploadtranslationbox4').hide();
//        $('#' + $(this).val()).show();
        $('#artwork_publication_translation').show();
    });

});
</script>
<!-- End loading page level scripts-->

<script>


    $(document).ready(function(){


{{--        {!! Html::script('js/datatable.min.js') !!}--}}

                   $('#when_published').datepicker({

                format: 'yyyy-mm-dd'
            });

        $('#artwork_publication_time').datepicker({

            format: 'yyyy-mm-dd'
        });
    });





</script>

@endsection
