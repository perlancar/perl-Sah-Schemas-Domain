package Sah::Schema::domain::name;

# DATE
# VERSION

our $schema = [str => {
    summary => 'Domain name',
    description => <<'_',

This schema is currently very simple, it just checks for strings with this
pattern:

    /^[0-9a-z]([0-9a-z-]*[0-9a-z])?
      (\.[0-9a-z]([0-9a-z-]*[0-9a-z]?))+$/x

and coerced to lowercase. Does not allow internationalized domain name (but you
can use its Punycode (xn--) representation. Does not check for valid public
suffixes.

_
    match => '\A[0-9a-z]([0-9a-z-]*[0-9a-z])?(\.[0-9a-z]([0-9a-z-]*[0-9a-z]?))+\z',
    'x.perl.coerce_rules'=>['str_tolower'],
}, {}];
