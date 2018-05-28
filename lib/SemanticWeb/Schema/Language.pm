package SemanticWeb::Schema::Language;

# ABSTRACT: Natural languages such as Spanish

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

Natural languages such as Spanish, Tamil, Hindi, English, etc. Formal
language code tags expressed in <a
href="https://en.wikipedia.org/wiki/IETF_language_tag">BCP 47</a> can be
used via the <a class="localLink"
href="http://schema.org/alternateName">alternateName</a> property. The
Language type previously also covered programming languages such as Scheme
and Lisp, which are now best represented using <a class="localLink"
href="http://schema.org/ComputerLanguage">ComputerLanguage</a>.

=end html




=cut


around json_ld_type => sub { return 'Language' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;