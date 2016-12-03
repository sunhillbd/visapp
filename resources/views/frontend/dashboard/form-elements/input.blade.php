<div class="row" id="{{ isset($rowId)?$rowId:'' }}" style="{{ isset($rowStyle)?$rowStyle:'' }}">
    <div class="col-md-12">
        <div class="form-group{{ $errors->has(isset($name)?$name:'no_name') ? ' has-error' : '' }}">

            <div class="col-md-2 "></div>
            <div class="col-md-8">
                <div class="row">
                    <label for="name" id="{{ isset($leabelId)?$leabelId:null }}" class="{{ isset($labelClass)?$labelClass:null }}">{{ isset($question)?$question:'Question Not Available' }}</label>
                </div>

                <div class="row" style="{{ isset($inputDivStyle)?$inputDivStyle:'' }}">
                    {!! Form::$type(isset($name)?$name:'no_name',
                                isset($value)?$value:null,$attributes) !!}

                    @if ($errors->has(isset($name)?$name:'no_name'))
                        <span class="help-block">
                            <strong>{{ $errors->first($name=0) }}</strong>
                        </span>
                    @endif
                </div>

            </div>
        </div>
    </div>
</div>