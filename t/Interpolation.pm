package Interpolation;

use strict;
use warnings;
use Lexical::Attributes;

has ($.scalar, @.array, %.hash) is rw;
has $.scalar2 is rw;

sub new {
    bless [] => shift;
}

sub scalar_as_string {
    "This is '$.scalar'";
}
sub scalar_single_quotes {
    'This is "$.scalar"';
}
sub more_scalar_quotes {
   (qq {This is '$.scalar'}, qq'This is "$.scalar"', qq !This is '$.scalar'!,
    qq qThis is '$.scalar'q, qq@This is "$.scalar"@, qq ,This is '$.scalar',,
     q {This is '$.scalar'},  q'This is "$.scalar"',  q !This is '$.scalar'!,
     q qThis is '$.scalar'q,  q@This is "$.scalar"@,  q ,This is '$.scalar',,)
}
sub double_interpolate {
    "This is '$.scalar' and that is '$.scalar2'";
}
sub escaped {
   ("This is '$.scalar' and that is '\$.scalar2'",
    "This is '\\$.scalar' and that is '\\\$.scalar2'");
}

sub array_as_string {
    "This is [@.array]";
}
sub array_single_quotes {
    'This is [@.array]';
}

sub hash_as_string {
    "This is {%.hash}";
}


1;

__END__

=head1 HISTORY

 $Log: Interpolation.pm,v $
 Revision 1.1  2005/03/03 23:34:03  abigail
 New files

