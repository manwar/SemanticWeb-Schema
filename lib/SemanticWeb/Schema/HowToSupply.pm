package SemanticWeb::Schema::HowToSupply;

# ABSTRACT: A supply consumed when performing the instructions for how to achieve a result.

use Moo;

extends qw/ SemanticWeb::Schema::HowToItem /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A supply consumed when performing the instructions for how to achieve a
result.




=head1 ATTRIBUTES


=head2 C<estimated_cost>

C<estimatedCost>

The estimated cost of the supply or supplies consumed when performing
instructions.


A estimated_cost should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=cut

has estimated_cost => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'estimatedCost',
    json_ld_serializer => \&_serialize_estimated_cost,
);

sub _serialize_estimated_cost { $_[0]->_serializer('estimated_cost') }




around json_ld_type => sub { return 'HowToSupply' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'estimatedCost' => \&_serialize_estimated_cost,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::HowToItem>

=cut

1;