package SemanticWeb::Schema::CreativeWorkSeries;

# ABSTRACT: A CreativeWorkSeries in schema

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A CreativeWorkSeries in schema.org is a group of related items, typically
but not necessarily of the same kind. CreativeWorkSeries are usually
organized into some order, often chronological. Unlike <a class="localLink"
href="http://schema.org/ItemList">ItemList</a> which is a general purpose
data structure for lists of things, the emphasis with CreativeWorkSeries is
on published materials (written e.g. books and periodicals, or media such
as tv, radio and games).</p> <p>Specific subtypes are available for
describing <a class="localLink"
href="http://schema.org/TVSeries">TVSeries</a>, <a class="localLink"
href="http://schema.org/RadioSeries">RadioSeries</a>, <a class="localLink"
href="http://schema.org/MovieSeries">MovieSeries</a>, <a class="localLink"
href="http://schema.org/BookSeries">BookSeries</a>, <a class="localLink"
href="http://schema.org/Periodical">Periodical</a> and <a class="localLink"
href="http://schema.org/VideoGameSeries">VideoGameSeries</a>. In each case,
the <a class="localLink" href="http://schema.org/hasPart">hasPart</a> / <a
class="localLink" href="http://schema.org/isPartOf">isPartOf</a> properties
can be used to relate the CreativeWorkSeries to its parts. The general
CreativeWorkSeries type serves largely just to organize these more specific
and practical subtypes.</p> <p>It is common for properties applicable to an
item from the series to be usefully applied to the containing group.
Schema.org attempts to anticipate some of these cases, but publishers
should be free to apply properties of the series parts to the series as a
whole wherever they seem appropriate.

=end html




=head1 ATTRIBUTES


=head2 C<end_date>

C<endDate>

=begin html

The end date and time of the item (in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>).

=end html


A end_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has end_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'endDate',
    json_ld_serializer => \&_serialize_end_date,
);

sub _serialize_end_date { $_[0]->_serializer('end_date') }


=head2 C<issn>



The International Standard Serial Number (ISSN) that identifies this serial
publication. You can repeat this property to identify different formats of,
or the linking ISSN (ISSN-L) for, this serial publication.


A issn should be one of the following types:

=over

=item C<Str>

=back

=cut

has issn => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'issn',
    json_ld_serializer => \&_serialize_issn,
);

sub _serialize_issn { $_[0]->_serializer('issn') }


=head2 C<start_date>

C<startDate>

=begin html

The start date and time of the item (in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>).

=end html


A start_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has start_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'startDate',
    json_ld_serializer => \&_serialize_start_date,
);

sub _serialize_start_date { $_[0]->_serializer('start_date') }




around json_ld_type => sub { return 'CreativeWorkSeries' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'endDate' => \&_serialize_end_date,
       'issn' => \&_serialize_issn,
       'startDate' => \&_serialize_start_date,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;