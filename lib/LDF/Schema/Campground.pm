package LDF::Schema::Campground;

# ABSTRACT: A camping site

use Moo;

extends qw/ LDF::Schema::CivicStructure LDF::Schema::LodgingBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A camping site, campsite, or campground is a place used for overnight stay
in the outdoors. In British English a campsite is an area, usually divided
into a number of pitches, where people can camp overnight using tents or
camper vans or caravans; this British English use of the word is synonymous
with the American English expression campground. In American English the
term campsite generally means an area where an individual, family, group,
or military unit can pitch a tent or parks a camper; a campground may
contain many campsites (Source: Wikipedia, the free encyclopedia, see <a
href="http://en.wikipedia.org/wiki/Campsite">http://en.wikipedia.org/wiki/C
ampsite</a>). <br /><br /> See also the <a
href="/docs/hotels.html">dedicated document on the use of schema.org for
marking up hotels and other forms of accommodations</a>.

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Campground' }



=head1 SEE ALSO



L<LDF::Schema::LodgingBusiness>

=cut

1;
