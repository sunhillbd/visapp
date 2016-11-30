
<div class="row">
    <div class="col-md-12">
        <div class="form-group{{ $errors->has(isset($name)?$name:'no_name') ? ' has-error' : '' }}">

            <div class="col-md-2 "></div>
            <div class="col-md-8">
                <div class="row">
                    <label for="name" class="pull-left">{{ isset($uploadQuestion)?$uploadQuestion:'Upload your file' }}</label>
                </div>

                <div class="row">
                    {!! Form::select($yesNoSelectName,['yes'=>'Yes','no'=>'No'],'yes',$yesNoSelectAttributes) !!}
                </div>

            </div>
        </div>
    </div>
</div>


<div class="form-group uploadtranslationbox2" id="publication_upload_english" style="display: none;">
    @if(isset($documents) && !$documents->isEmpty())

        @include('frontend.dashboard.partials.upload-modal',isset($uploadSelectIncludeAttr)?$uploadSelectIncludeAttr:[])

    @else
        <label class="col-md-12 form-label">{{ $uploadTitle }} <a class="btn btn-default-alt btn-xs" data-toggle="modal" href="#tipuploadtranslation">?</a></label>
        <div class="col-md-12">
            {!! Form::file($fileInputName,$fileInputAttr) !!}


            <div class="checkboxcontainer">
                <label class="checkbox-inline icheck">
                    {!! Form::checkbox($uploadCheckName, $uploadCheckValue,$checkTrueOrFalse,$uploadCheckAttr) !!}Come back to this later

                </label>
            </div>
        </div>
    @endif
</div>