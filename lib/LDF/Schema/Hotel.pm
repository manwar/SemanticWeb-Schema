package LDF::Schema::Hotel;

# ABSTRACT: A hotel is an establishment that provides lodging paid on a short-term basis (Source: Wikipedia

use Moo;

extends qw/ LDF::Schema::LodgingBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A hotel is an establishment that provides lodging paid on a short-term
basis (Source: Wikipedia, the free encyclopedia, see
http://en.wikipedia.org/wiki/Hotel). <br /><br /> See also the <a
href="/docs/hotels.html">dedicated document on the use of schema.org for
marking up hotels and other forms of accommodations</a>.

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Hotel' }



=head1 SEE ALSO



L<LDF::Schema::LodgingBusiness>

=cut

1;
