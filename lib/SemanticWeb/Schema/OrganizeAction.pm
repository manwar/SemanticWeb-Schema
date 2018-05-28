package SemanticWeb::Schema::OrganizeAction;

# ABSTRACT: The act of manipulating/administering/supervising/controlling one or more objects.

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of manipulating/administering/supervising/controlling one or more
objects.




=cut


around json_ld_type => sub { return 'OrganizeAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;