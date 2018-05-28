package SemanticWeb::Schema::Float;

# ABSTRACT: Data type: Floating number.

use Moo;

extends qw/ SemanticWeb::Schema::Number /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Data type: Floating number.




=cut


around json_ld_type => sub { return 'Float' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Number>

=cut

1;