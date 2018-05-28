package SemanticWeb::Schema::Airport;

# ABSTRACT: An airport.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An airport.




=head1 ATTRIBUTES


=head2 C<iata_code>

C<iataCode>

IATA identifier for an airline or airport.


A iata_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has iata_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'iataCode',
    json_ld_serializer => \&_serialize_iata_code,
);

sub _serialize_iata_code { $_[0]->_serializer('iata_code') }


=head2 C<icao_code>

C<icaoCode>

ICAO identifier for an airport.


A icao_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has icao_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'icaoCode',
    json_ld_serializer => \&_serialize_icao_code,
);

sub _serialize_icao_code { $_[0]->_serializer('icao_code') }




around json_ld_type => sub { return 'Airport' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'iataCode' => \&_serialize_iata_code,
       'icaoCode' => \&_serialize_icao_code,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;