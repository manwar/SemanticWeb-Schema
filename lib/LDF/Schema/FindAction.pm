package LDF::Schema::FindAction;

# ABSTRACT: <p>The act of finding an object

use Moo;

extends qw/ LDF::Schema::Action /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of finding an object.</p> <p>Related actions:</p> <ul> <li><a
class="localLink" href="http://schema.org/SearchAction">SearchAction</a>:
FindAction is generally lead by a SearchAction, but not necessarily.</li>
</ul> 

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'FindAction' }



=head1 SEE ALSO



L<LDF::Schema::Action>

=cut

1;
