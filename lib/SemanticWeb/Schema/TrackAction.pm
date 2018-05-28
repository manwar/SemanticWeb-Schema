package SemanticWeb::Schema::TrackAction;

# ABSTRACT: <p>An agent tracks an object for updates

use Moo;

extends qw/ SemanticWeb::Schema::FindAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>An agent tracks an object for updates.</p> <p>Related actions:</p> <ul>
<li><a class="localLink"
href="http://schema.org/FollowAction">FollowAction</a>: Unlike
FollowAction, TrackAction refers to the interest on the location of
innanimates objects.</li> <li><a class="localLink"
href="http://schema.org/SubscribeAction">SubscribeAction</a>: Unlike
SubscribeAction, TrackAction refers to the interest on the location of
innanimate objects.</li> </ul> 

=end html




=head1 ATTRIBUTES


=head2 C<delivery_method>

C<deliveryMethod>

A sub property of instrument. The method of delivery.


A delivery_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DeliveryMethod']>

=back

=cut

has delivery_method => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'deliveryMethod',
    json_ld_serializer => \&_serialize_delivery_method,
);

sub _serialize_delivery_method { $_[0]->_serializer('delivery_method') }




around json_ld_type => sub { return 'TrackAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'deliveryMethod' => \&_serialize_delivery_method,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::FindAction>

=cut

1;