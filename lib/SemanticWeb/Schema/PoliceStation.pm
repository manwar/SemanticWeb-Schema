use utf8;

package SemanticWeb::Schema::PoliceStation;

# ABSTRACT: A police station.

use Moo;

extends qw/ SemanticWeb::Schema::EmergencyService SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'PoliceStation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.1';

=encoding utf8

=head1 DESCRIPTION

A police station.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
