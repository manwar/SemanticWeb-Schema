package SemanticWeb::Schema::ConsumeAction;

# ABSTRACT: The act of ingesting information/resources/food.

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of ingesting information/resources/food.




=head1 ATTRIBUTES


=head2 C<expects_acceptance_of>

C<expectsAcceptanceOf>

An Offer which must be accepted before the user can perform the Action. For
example, the user may need to buy a movie before being able to watch it.


A expects_acceptance_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=cut

has expects_acceptance_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'expectsAcceptanceOf',
    json_ld_serializer => \&_serialize_expects_acceptance_of,
);

sub _serialize_expects_acceptance_of { $_[0]->_serializer('expects_acceptance_of') }




around json_ld_type => sub { return 'ConsumeAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'expectsAcceptanceOf' => \&_serialize_expects_acceptance_of,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;