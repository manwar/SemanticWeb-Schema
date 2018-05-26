package LDF::Schema::Embassy;

# ABSTRACT: An embassy.

use Moo;

extends qw/ LDF::Schema::GovernmentBuilding /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An embassy.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Embassy' }



=head1 SEE ALSO



L<LDF::Schema::GovernmentBuilding>

=cut

1;
