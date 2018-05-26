package LDF::Schema::ArriveAction;

# ABSTRACT: The act of arriving at a place

use Moo;

extends qw/ LDF::Schema::MoveAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of arriving at a place. An agent arrives at a destination from a
fromLocation, optionally with participants.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ArriveAction' }



=head1 SEE ALSO



L<LDF::Schema::MoveAction>

=cut

1;
