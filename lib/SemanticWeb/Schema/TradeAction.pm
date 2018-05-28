package SemanticWeb::Schema::TradeAction;

# ABSTRACT: The act of participating in an exchange of goods and services for monetary compensation

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of participating in an exchange of goods and services for monetary
compensation. An agent trades an object, product or service with a
participant in exchange for a one time or periodic payment.




=head1 ATTRIBUTES


=head2 C<price>



=begin html

<p>The offer price of a product, or of a price component when attached to
PriceSpecification and its subtypes.</p> <p>Usage guidelines:</p> <ul>
<li>Use the <a class="localLink"
href="http://schema.org/priceCurrency">priceCurrency</a> property (with <a
href="http://en.wikipedia.org/wiki/ISO_4217#Active_codes">ISO 4217
codes</a> e.g. "USD") instead of including <a
href="http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_doll
ar_or_peso_sign">ambiguous symbols</a> such as '$' in the value.</li>
<li>Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a
decimal point. Avoid using these symbols as a readability separator.</li>
<li>Note that both <a
href="http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute">
RDFa</a> and Microdata syntax allow the use of a "content=" attribute for
publishing simple machine-readable values alongside more human-friendly
formatting.</li> <li>Use values from 0123456789 (Unicode 'DIGIT ZERO'
(U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similiar
Unicode symbols.</li> </ul> 

=end html


A price should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=cut

has price => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'price',
    json_ld_serializer => \&_serialize_price,
);

sub _serialize_price { $_[0]->_serializer('price') }


=head2 C<price_specification>

C<priceSpecification>

One or more detailed price specifications, indicating the unit price and
delivery or payment charges.


A price_specification should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=back

=cut

has price_specification => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'priceSpecification',
    json_ld_serializer => \&_serialize_price_specification,
);

sub _serialize_price_specification { $_[0]->_serializer('price_specification') }




around json_ld_type => sub { return 'TradeAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'price' => \&_serialize_price,
       'priceSpecification' => \&_serialize_price_specification,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;