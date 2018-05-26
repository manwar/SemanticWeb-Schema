package LDF::Schema::TelevisionChannel;

# ABSTRACT: A unique instance of a television BroadcastService on a CableOrSatelliteService lineup.

use Moo;

extends qw/ LDF::Schema::BroadcastChannel /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A unique instance of a television BroadcastService on a
CableOrSatelliteService lineup.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'TelevisionChannel' }



=head1 SEE ALSO



L<LDF::Schema::BroadcastChannel>

=cut

1;
