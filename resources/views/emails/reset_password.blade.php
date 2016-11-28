<p>
    Mr {{ $name }}
</p>
Thanks for taking our service.

Please, follow the link below to reset your password.



<a href="{!! route('auth.reset.password',[$password_reset_token]) !!}">Reset Password </a>