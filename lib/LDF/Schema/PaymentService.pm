package LDF::Schema::PaymentService;

# ABSTRACT: A Service to transfer funds from a person or organization to a beneficiary person or organization.

use Moo;

extends qw/ LDF::Schema::FinancialProduct /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A Service to transfer funds from a person or organization to a beneficiary
person or organization.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PaymentService' }



=head1 SEE ALSO



L<LDF::Schema::FinancialProduct>

=cut

1;
