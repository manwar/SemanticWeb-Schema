package SemanticWeb::Schema::Reservation;

# ABSTRACT: Describes a reservation for travel

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

Describes a reservation for travel, dining or an event. Some reservations
require tickets. </p> <p>Note: This type is for information about actual
reservations, e.g. in confirmation emails or HTML pages with individual
confirmations of reservations. For offers of tickets, restaurant
reservations, flights, or rental cars, use <a class="localLink"
href="http://schema.org/Offer">Offer</a>.

=end html




=head1 ATTRIBUTES


=head2 C<booking_agent>

C<bookingAgent>

'bookingAgent' is an out-dated term indicating a 'broker' that serves as a
booking agent.


A booking_agent should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has booking_agent => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'bookingAgent',
    json_ld_serializer => \&_serialize_booking_agent,
);

sub _serialize_booking_agent { $_[0]->_serializer('booking_agent') }


=head2 C<booking_time>

C<bookingTime>

The date and time the reservation was booked.


A booking_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has booking_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'bookingTime',
    json_ld_serializer => \&_serialize_booking_time,
);

sub _serialize_booking_time { $_[0]->_serializer('booking_time') }


=head2 C<broker>



An entity that arranges for an exchange between a buyer and a seller. In
most cases a broker never acquires or releases ownership of a product or
service involved in an exchange. If it is not clear whether an entity is a
broker, seller, or buyer, the latter two terms are preferred.


A broker should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has broker => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'broker',
    json_ld_serializer => \&_serialize_broker,
);

sub _serialize_broker { $_[0]->_serializer('broker') }


=head2 C<modified_time>

C<modifiedTime>

The date and time the reservation was modified.


A modified_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has modified_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'modifiedTime',
    json_ld_serializer => \&_serialize_modified_time,
);

sub _serialize_modified_time { $_[0]->_serializer('modified_time') }


=head2 C<price_currency>

C<priceCurrency>

=begin html

The currency (in 3-letter ISO 4217 format) of the price or a price
component, when attached to <a class="localLink"
href="http://schema.org/PriceSpecification">PriceSpecification</a> and its
subtypes.

=end html


A price_currency should be one of the following types:

=over

=item C<Str>

=back

=cut

has price_currency => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'priceCurrency',
    json_ld_serializer => \&_serialize_price_currency,
);

sub _serialize_price_currency { $_[0]->_serializer('price_currency') }


=head2 C<program_membership_used>

C<programMembershipUsed>

Any membership in a frequent flyer, hotel loyalty program, etc. being
applied to the reservation.


A program_membership_used should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProgramMembership']>

=back

=cut

has program_membership_used => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'programMembershipUsed',
    json_ld_serializer => \&_serialize_program_membership_used,
);

sub _serialize_program_membership_used { $_[0]->_serializer('program_membership_used') }


=head2 C<provider>



The service provider, service operator, or service performer; the goods
producer. Another party (a seller) may offer those services or goods on
behalf of the provider. A provider may also serve as the seller.


A provider should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has provider => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'provider',
    json_ld_serializer => \&_serialize_provider,
);

sub _serialize_provider { $_[0]->_serializer('provider') }


=head2 C<reservation_for>

C<reservationFor>

The thing -- flight, event, restaurant,etc. being reserved.


A reservation_for should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has reservation_for => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'reservationFor',
    json_ld_serializer => \&_serialize_reservation_for,
);

sub _serialize_reservation_for { $_[0]->_serializer('reservation_for') }


=head2 C<reservation_id>

C<reservationId>

A unique identifier for the reservation.


A reservation_id should be one of the following types:

=over

=item C<Str>

=back

=cut

has reservation_id => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'reservationId',
    json_ld_serializer => \&_serialize_reservation_id,
);

sub _serialize_reservation_id { $_[0]->_serializer('reservation_id') }


=head2 C<reservation_status>

C<reservationStatus>

The current status of the reservation.


A reservation_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ReservationStatusType']>

=back

=cut

has reservation_status => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'reservationStatus',
    json_ld_serializer => \&_serialize_reservation_status,
);

sub _serialize_reservation_status { $_[0]->_serializer('reservation_status') }


=head2 C<reserved_ticket>

C<reservedTicket>

A ticket associated with the reservation.


A reserved_ticket should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Ticket']>

=back

=cut

has reserved_ticket => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'reservedTicket',
    json_ld_serializer => \&_serialize_reserved_ticket,
);

sub _serialize_reserved_ticket { $_[0]->_serializer('reserved_ticket') }


=head2 C<total_price>

C<totalPrice>

The total price for the reservation or ticket, including applicable taxes,
shipping, etc.


A total_price should be one of the following types:

=over

=item C<Num>

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=item C<Str>

=back

=cut

has total_price => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'totalPrice',
    json_ld_serializer => \&_serialize_total_price,
);

sub _serialize_total_price { $_[0]->_serializer('total_price') }


=head2 C<under_name>

C<underName>

The person or organization the reservation or ticket is for.


A under_name should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has under_name => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'underName',
    json_ld_serializer => \&_serialize_under_name,
);

sub _serialize_under_name { $_[0]->_serializer('under_name') }




around json_ld_type => sub { return 'Reservation' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'bookingAgent' => \&_serialize_booking_agent,
       'bookingTime' => \&_serialize_booking_time,
       'broker' => \&_serialize_broker,
       'modifiedTime' => \&_serialize_modified_time,
       'priceCurrency' => \&_serialize_price_currency,
       'programMembershipUsed' => \&_serialize_program_membership_used,
       'provider' => \&_serialize_provider,
       'reservationFor' => \&_serialize_reservation_for,
       'reservationId' => \&_serialize_reservation_id,
       'reservationStatus' => \&_serialize_reservation_status,
       'reservedTicket' => \&_serialize_reserved_ticket,
       'totalPrice' => \&_serialize_total_price,
       'underName' => \&_serialize_under_name,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;