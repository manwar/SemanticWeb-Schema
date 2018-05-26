package LDF::Schema::Specialty;

# ABSTRACT: Any branch of a field in which people typically develop specific expertise

use Moo;

extends qw/ LDF::Schema::Enumeration /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Any branch of a field in which people typically develop specific expertise,
usually after significant study, time, and effort.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Specialty' }



=head1 SEE ALSO



L<LDF::Schema::Enumeration>

=cut

1;
