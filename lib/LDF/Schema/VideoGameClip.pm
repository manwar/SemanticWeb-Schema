package LDF::Schema::VideoGameClip;

# ABSTRACT: A short segment/part of a video game.

use Moo;

extends qw/ LDF::Schema::Clip /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A short segment/part of a video game.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'VideoGameClip' }



=head1 SEE ALSO



L<LDF::Schema::Clip>

=cut

1;
