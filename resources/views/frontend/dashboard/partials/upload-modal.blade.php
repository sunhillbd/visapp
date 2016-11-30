
<div class="row">
    <div class="col-md-12">
        <div class="form-group{{ $errors->has(isset($name)?$name:'no_name') ? ' has-error' : '' }}">

            <div class="col-md-2 "></div>
            <div class="col-md-8">
                <div class="row">
                    <label for="name" class="pull-left">Select document from your file library</label>
                </div>

                <div class="row">

                    <button class=" btn btn-success" data-toggle="modal" data-target="#{{ $uploadModal }}" type="button" name="doc_article" id="fileToUpload">File Library</button>
                    <br>

                    <input name="publication_translation_back_later" type="checkbox" id="inlinecheckbox1" value="yes"> Come back to this later


                </div>

            </div>
        </div>
    </div>
</div>

<div class="col-md-12">



    <!-- tipuploadtranslation Modal -->
    <div class="modal fade" id="{{ $uploadModal }}" tabindex="-1" role="dialog" aria-labelledby="tipuploadtranslation" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <h4>Select or Upload Your File</h4>
                    <table  id="example" class="display" cellspacing="0" width="100%" >

                        <tr >
                            <th style="text-align: center">
                                select
                            </th>
                            <th style="text-align: center">File Preview</th>
                            <th style="text-align: center">File Name</th>
                            <th style="text-align: center">File Type</th>
                            <th style="text-align: center">Download</th>
                        </tr>

                        @foreach($documents as $doc)


                                <tr>
                                    <td style="text-align: center">
                                        <input name="{{ $checkName }}" type="checkbox" value="{{ $doc->id or 'N/A' }} ">
                                    </td>
                                    <td style="text-align: center"><img width="75px" height="100px" src="{{ asset('pdf-images/'.basename($doc->document_name,'.'.strtolower(substr($doc->document_name, strrpos($doc->document_name, '.') + 1))).'.png') }}" alt="no preiview"></td>
                                    <td style="text-align: center">{{ $doc->document_name or 'N/A' }}</td>
                                    <td style="text-align: center">


                                        @foreach($doc->documentals as $documental)

                                            {{ isset($documental->documental_type)? ucwords(str_replace('_',' ',$documental->documental_type)):'N/A' }}
                                            <br>


                                        @endforeach



                                    </td>
                                    <td style="text-align: center">

                                        <a class="btn-primary" href="{{ asset('uploads/'.$doc->document_name) }}"> <i class="fa fa-download"></i></a>

                                    </td>

                                </tr>




                        @endforeach



                    </table>


                </div>
                <div class="modal-footer">
                    <input name={{ $fileUploadName }} type="file">
                    <button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->


</div>