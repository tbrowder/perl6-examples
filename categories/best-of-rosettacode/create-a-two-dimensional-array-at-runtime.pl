=begin pod

=TITLE Create a two-dimensional array at runtime

=AUTHOR Salve J. Nilsen

Get two integers from the user, then create a two-dimensional array where the
two dimensions have the sizes given by those numbers, and which can be accessed
in the most natural way possible. Write some element of that array, and then
output that element. Finally destroy the array if not done by the language
itself.

=head1 More

L<http://rosettacode.org/wiki/Create_a_two-dimensional_array_at_runtime#Perl_6>

=end pod


my ($major, $minor) = prompt("Dimensions? ").comb(/\d+/);
die "Please enter two dimensions" unless $major && $minor;

my @array := [ for ^$major { [ for ^$minor {'@'} ] } ];

@array[ pick 1, ^$major ][ pick 1, ^$minor ] = ' ';

.say for @array;


# vim: expandtab shiftwidth=4 ft=perl6
