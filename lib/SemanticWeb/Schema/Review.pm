package SemanticWeb::Schema::Review;

# ABSTRACT: A review of an item - for example

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A review of an item - for example, of a restaurant, movie, or store.




=head1 ATTRIBUTES


=head2 C<item_reviewed>

C<itemReviewed>

The item that is being reviewed/rated.


A item_reviewed should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has item_reviewed => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'itemReviewed',
    json_ld_serializer => \&_serialize_item_reviewed,
);

sub _serialize_item_reviewed { $_[0]->_serializer('item_reviewed') }


=head2 C<review_body>

C<reviewBody>

The actual body of the review.


A review_body should be one of the following types:

=over

=item C<Str>

=back

=cut

has review_body => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'reviewBody',
    json_ld_serializer => \&_serialize_review_body,
);

sub _serialize_review_body { $_[0]->_serializer('review_body') }


=head2 C<review_rating>

C<reviewRating>

=begin html

The rating given in this review. Note that reviews can themselves be rated.
The <code>reviewRating</code> applies to rating given by the review. The <a
class="localLink"
href="http://schema.org/aggregateRating">aggregateRating</a> property
applies to the review itself, as a creative work.

=end html


A review_rating should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Rating']>

=back

=cut

has review_rating => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'reviewRating',
    json_ld_serializer => \&_serialize_review_rating,
);

sub _serialize_review_rating { $_[0]->_serializer('review_rating') }




around json_ld_type => sub { return 'Review' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'itemReviewed' => \&_serialize_item_reviewed,
       'reviewBody' => \&_serialize_review_body,
       'reviewRating' => \&_serialize_review_rating,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;