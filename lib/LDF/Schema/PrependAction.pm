package LDF::Schema::PrependAction;

# ABSTRACT: The act of inserting at the beginning if an ordered collection.

use Moo;

extends qw/ LDF::Schema::InsertAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of inserting at the beginning if an ordered collection.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PrependAction' }



=head1 SEE ALSO



L<LDF::Schema::InsertAction>

=cut

1;
