package LDF::Schema::EmploymentAgency;

# ABSTRACT: An employment agency.

use Moo;

extends qw/ LDF::Schema::LocalBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An employment agency.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'EmploymentAgency' }



=head1 SEE ALSO



L<LDF::Schema::LocalBusiness>

=cut

1;
