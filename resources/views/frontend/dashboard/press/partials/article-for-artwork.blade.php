<fieldset title="Articles written by you or featuring your work part 1">
    <legend></legend>
    <div class="row">
        <div class="col-md-12" style="margin-bottom: 20px;">
            <h3>Articles written by you or featuring your work</h3>
            <p>You can upload up to ten articles written by you or featuring your work for example, your photography or your designs) with editorial credit. This is the place where photographers, illustrators and designers will upload published materials in which they are given name credit.</p>
            <p>We recommend that you begin with the articles that you think are most impressive and work your way down through articles that you think are less impressive. (If you're not sure about how impressive your articles are, relative to one another, just use your best judgment.) Before you upload an article, be sure to highlight your name.</p>
        </div>
    </div>
    <div class="form-group">
        @if(isset($documents) && !$documents->isEmpty())

            @include('frontend.dashboard.press.partials.upload-modal',['fileUploadName'=>'artwork[doc_artwork_article]','uploadModal'=>'up-artwork','checkName'=>'check_artwork[doc_artwork_article][]'])

        @else
        <label class="col-md-12 form-label">Select document to upload</label>
        <div class="col-md-12">
            <input type="file" name="artwork[doc_artwork_article]" id="fileToUpload">
        </div>

        @endif
    </div>
</fieldset>
<fieldset title="Articles written about you part 2">
    <legend></legend>
    <div class="form-group">
        <label class="col-md-12 form-label">What is the title of this article?</label>
        <div class="col-md-12 form-input">
            <input name='artwork_article_title' type="text" class="form-control">
        </div>
    </div>
</fieldset>
<fieldset title="Articles written by you or featuring your work part 2">
    <legend></legend>
    <div class="form-group">
        <label class="col-md-12 form-label">What is the name of the publication in which this article appeared?</label>
        <div class="col-md-12 form-input">
            <input type="text" name="artwork_publication_name"class="form-control">
        </div>
    </div>
</fieldset>
<fieldset title="Articles written by you or featuring your work part 3">
    <legend></legend>
    <div class="form-group">
        <label class="col-md-12 form-label">When was this article published?</label>
        <div class="col-md-12 form-input">
            <input type="text" name="artwork_publication_time" id="artwork_publication_time" class="form-control">
        </div>
    </div>
</fieldset>
<fieldset title="Articles written by you or featuring your work part 4">
    <legend></legend>
    <div class="form-group">
        <label class="col-md-12 form-label">Is this article in English?</label>
        <div class="col-md-12 form-input">
            <select class="form-control" name="artwork_article_in_english" id="uploadtranslation3">
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>
        </div>
    </div>
    <div class="form-group uploadtranslationbox3" id="artwork_publication_upload_english" style="display: none;">
        @if(isset($documents) && !$documents->isEmpty())

            @include('frontend.dashboard.press.partials.upload-modal',['fileUploadName'=>'artwork[doc_artwork_article_translation]','uploadModal'=>'up-artwork-trans','checkName'=>'check_artwork[doc_artwork_article_translation][]'])
            <div class="checkboxcontainer">
                <label class="checkbox-inline icheck">
                    <input name="artwork_article_translation_back_later" type="checkbox" name="" id="inlinecheckbox1" value="option1"> Come back to this later
                </label>
            </div>
        @else
        <label class="col-md-12 form-label">Upload a translation of the article with certification <a class="btn btn-default-alt btn-xs" data-toggle="modal" href="#tipuploadtranslation">?</a></label>
        <div class="col-md-12 ">
            <input type="file" name="artwork[doc_artwork_article_translation]" id="fileToUpload">
            <div class="checkboxcontainer">
                <label class="checkbox-inline icheck">
                    <input name="artwork_article_translation_back_later" type="checkbox" name="" id="inlinecheckbox1" value="option1"> Come back to this later
                </label>
            </div>
        </div>
        @endif
    </div>
</fieldset>
<fieldset title="Articles written by you or featuring your work part 5">
    <legend></legend>
    <div class="form-group">
        @if(isset($documents) && !$documents->isEmpty())

            @include('frontend.dashboard.press.partials.upload-modal',['fileUploadName'=>'artwork[doc_artwork_publication]','uploadModal'=>'up-artwork-pub','checkName'=>'check_artwork[doc_artwork_publication][]'])
            <div class="checkboxcontainer">
                <label class="checkbox-inline icheck">
                    <input name="artwork_article_translation_back_later" type="checkbox" name="" id="inlinecheckbox1" value="option1"> Come back to this later
                </label>
            </div>
        @else
        <label class="col-md-12 form-label">Please upload evidence of the publication's circulation or readership <a class="btn btn-default-alt btn-xs" data-toggle="modal" href="#tipuploadevidence">?</a></label>
        <div class="col-md-12 ">
            <input type="file" name="artwork[doc_artwork_publication]" id="fileToUpload">
            <div class="checkboxcontainer">
                <label class="checkbox-inline icheck">
                    <input name="artwork_publication_back_later" type="checkbox" id="inlinecheckbox1" value="yes"> Come back to this later
                </label>
            </div>
        </div>

        @endif
    </div>
</fieldset>
<fieldset title="Articles written by you or featuring your work part 6">
    <legend></legend>
    <div class="form-group">
        <label class="col-md-12 form-label">Is this document in English?</label>
        <div class="col-md-12 form-input">
            <select class="form-control" name="artwork_publication_in_english" id="uploadtranslation4">
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>
        </div>
    </div>
    <div class="form-group uploadtranslationbox4" id="artwork_publication_translation" style="display: none;">
        @if(isset($documents) && !$documents->isEmpty())

            @include('frontend.dashboard.press.partials.upload-modal',['fileUploadName'=>'artwork[doc_artwork_publication_translation]','uploadModal'=>'up-artwork-pub-trans','checkName'=>'check_artwork[doc_artwork_publication_translation][]'])
            <div class="checkboxcontainer">
                <label class="checkbox-inline icheck">
                    <input name="artwork_article_translation_back_later" type="checkbox" name="" id="inlinecheckbox1" value="option1"> Come back to this later
                </label>
            </div>
        @else
        <label class="col-md-12 form-label">Upload a translation of the document with certification <a class="btn btn-default-alt btn-xs" data-toggle="modal" href="#tipuploadtranslation">?</a></label>
        <div class="col-md-12 ">
            <input name="artwork[doc_artwork_publication_translation]" type="file" id="fileToUpload">
            <div class="checkboxcontainer">
                <label class="checkbox-inline icheck">
                    <input name="artwork_publication_translation_back_later" type="checkbox" id="inlinecheckbox1" value="option1"> Come back to this later
                </label>
            </div>
        </div>
        @endif
    </div>
</fieldset>
<fieldset title="Articles written by you or featuring your work part 7">
    <legend></legend>
    <div class="form-group">
        <label class="col-md-12 form-label">Upload more articles?</label>
        <div class="col-md-12 form-input">
            <button type="submit"   class="btn btn-success">Save and add more articles</button>
        </div>
    </div>
</fieldset>