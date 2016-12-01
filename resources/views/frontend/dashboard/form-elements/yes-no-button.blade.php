<div class="row">
    <div class="col-md-12">
        <div class="form-group">

            <div class="col-md-2 "></div>
            <div class="col-md-8">
                <div class="row">
                    <label for="name" class="pull-left">{{ isset($question)?$question:'Question Not Available' }}</label>
                </div>

                <div class="row">
                    {!! Form::submit('yes',['class'=>'btn btn-success']) !!}
                    {!! Form::button('no',['class'=>'btn btn-warning']) !!}


                </div>

            </div>
        </div>
    </div>
</div>