package LDF::Schema::PerformingGroup;

# ABSTRACT: A performance group

use Moo;

extends qw/ LDF::Schema::Organization /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A performance group, such as a band, an orchestra, or a circus.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PerformingGroup' }



=head1 SEE ALSO



L<LDF::Schema::Organization>

=cut

1;
