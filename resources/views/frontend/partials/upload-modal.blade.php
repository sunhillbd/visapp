<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Please Login</h4>
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
                $('.modal-title').html('Put your email to get the link to reset your password');
                $(this).hide();
                $('#login').show();

            });

            $('#login').click(function(){

                $('#fp').hide();
                $('#signin').show();
                $('.modal-title').html('Please Login');
                $(this).hide();
                $('#forgot-password').show();

            });


        });

    </script>

@endsection