@if(isset($documents) && !$documents->isEmpty())
    @include('frontend.dashboard.partials.upload-modal',$uploadModalMedia)


@else
    <label class="col-md-12 form-label">Upload a translation of the document with certification <a class="btn btn-default-alt btn-xs" data-toggle="modal" href="#tipuploadtranslation">?</a></label>
    <div class="col-md-12">


        <input name={{ isset($uploadModalMediaFileName)?$uploadModalMediaFileName:'' }} type="file" id={{ isset($modalMediaFileId)?$modalMediaFileId:'' }}>

        <div class="checkboxcontainer">
            <label class="checkbox-inline icheck">


                {{--<input name="publication_translation_back_later" type="checkbox" id="inlinecheckbox1" value="yes"> Come back to this later--}}
                <input name={{ isset($modalMediaCheckName)?$modalMediaCheckName:'' }} type="checkbox" id={{ isset($modalMediaCheckId)?$modalMediaCheckId:'' }} value={{ isset($modalMediaCheckValue)?$modalMediaCheckValue:'' }}> Come back to this later
            </label>
        </div>
    </div>
@endif