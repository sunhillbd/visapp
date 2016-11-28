{{--{{ dd($formData) }}--}}

@extends('frontend.dashboard.layouts.dashboard')

@section('styles')

    {!! Html::style('css/datatable.min.css') !!}
@endsection

@section('content')
    <div class="static-content">
        <div class="page-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div >
                            <div class="form-group">
                                <div class="col-md-12">

                                    @if(!$formData->isEmpty())

                                        <table id="example" class="display" cellspacing="0" width="100%">
                                            <thead>
                                            <tr>
                                                <th>Article Docs</th>
                                                <th>Article Title</th>
                                                <th>Article Type</th>
                                                <th>Publications</th>
                                                <th>Time of Publishment</th>
                                                <th>Author</th>

                                                <th>Confirmation Status</th>
                                                <th>Review Status</th>
                                                <th>Action</th>

                                            </tr>
                                            </thead>
                                            <tfoot>
                                            <tr>
                                                <th>Article Docs</th>
                                                <th>Article Title</th>
                                                <th>Article Type</th>
                                                <th>Publications</th>
                                                <th>Time of Publishment</th>
                                                <th>Author</th>

                                                <th>Confirmation Status</th>
                                                <th>Review Status</th>
                                                <th>Action</th>
                                            </tr>
                                            </tfoot>
                                            <tbody>

                                            @foreach($formData as $data)

                                                <tr>
                                                    <td>

                                                        @if(!$data->documents->isEmpty())

                                                            @foreach($data->documents as $doc)

                                                                <a href="{{ asset('uploads/'.$doc->document_name) }}">
                                                                    {{ $doc->pivot->document_type or 'N/A' }}
                                                                </a>



                                                                <br>
                                                            @endforeach


                                                        @else

                                                         No Documents Uploaded

                                                        @endif



                                                    </td>
                                                    <td>{{ $data->article_title or 'N/A' }}</td>
                                                    <td>
                                                        {{ isset($data->article_type) && $data->article_type == 'doc_article' ? 'Article' : 'Artwork Article' }}
                                                    </td>

                                                    <td>{{ $data->publication_name or 'N/A' }}</td>
                                                    <td>{{ isset($data->when_published)? $data->when_published->format('Y-m-d') : 'N/A' }}</td>
                                                    <td>{{ $data->author_name or 'N/A' }}</td>

                                                    <td>
                                                        {{ isset($data->is_confirm) && $data->is_confirm == 1? 'confirm':'pending'  }}
                                                    </td>
                                                    <td>
                                                        {{ isset($data->is_reviewed) && $data->is_reviewed == 1? 'reviewed':'pending'  }}
                                                    </td>

                                                    <td>

                                                        <a class="btn-xs btn-success" href="{{ route('press.edit',$data->id) }} ">
                                                            {{--<i class="glyphicon glyphicon-edit"></i>--}}edit
                                                        </a>

                                                    </td>

                                                </tr>
                                            @endforeach



                                            </tbody>
                                        </table>


                                    @else


                                    <h4> You are yet to submit any documents.....Please upload your neccessay documents regarding your articles....</h4>
                                        <a href=" {{ route('press.create') }}">Submit Press Docs</a>


                                    @endif

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- .container-fluid -->
        </div> <!-- #page-content -->
    </div>
@endsection

@section('scripts')

    {!! Html::script('js/datatable.min.js') !!}
    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        } );
    </script>


@endsection