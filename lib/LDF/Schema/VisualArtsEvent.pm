package LDF::Schema::VisualArtsEvent;

# ABSTRACT: Event type: Visual arts event.

use Moo;

extends qw/ LDF::Schema::Event /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Event type: Visual arts event.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'VisualArtsEvent' }



=head1 SEE ALSO



L<LDF::Schema::Event>

=cut

1;
