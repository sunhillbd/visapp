<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Update Password</h4>
            </div>
            <div class="modal-body">

                @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <div id="fp">
                    {!! Form::open(['route' => 'password.update','class'=>'nobottommargin']) !!}

                    {!! Form::label('password','New Password') !!}
                    {!! Form::password('password',['class'=>'form-control']) !!}

                    {!! Form::label('password_confirmation','Confirm Password') !!}
                    {!! Form::password('password_confirmation',['class'=>'form-control']) !!} <br>
                    <button class="button button-3d nomargin"  >Update Password</button>

                    {!! Form::close() !!}
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>


@section('scripts')

    <script>

        $(document).ready(function(){


            $('#forgot-password').click(function(){

                $('#fp').show();
                $('#signin').hide();
                $('.modal-title').html('Reset Password')
                $(this).hide();
                $('#login').show();

            });

            $('#login').click(function(){

                $('#fp').hide();
                $('#signin').show();
                $('.modal-title').html('Please Login')
                $(this).hide();
                $('#forgot-password').show();

            });


        });

    </script>

@endsection