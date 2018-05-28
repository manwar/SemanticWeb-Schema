package SemanticWeb::Schema::DataFeedItem;

# ABSTRACT: A single item within a larger data feed.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A single item within a larger data feed.




=head1 ATTRIBUTES


=head2 C<date_created>

C<dateCreated>

The date on which the CreativeWork was created or the item was added to a
DataFeed.


A date_created should be one of the following types:

=over

=item C<Str>

=back

=cut

has date_created => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dateCreated',
    json_ld_serializer => \&_serialize_date_created,
);

sub _serialize_date_created { $_[0]->_serializer('date_created') }


=head2 C<date_deleted>

C<dateDeleted>

The datetime the item was removed from the DataFeed.


A date_deleted should be one of the following types:

=over

=item C<Str>

=back

=cut

has date_deleted => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dateDeleted',
    json_ld_serializer => \&_serialize_date_deleted,
);

sub _serialize_date_deleted { $_[0]->_serializer('date_deleted') }


=head2 C<date_modified>

C<dateModified>

The date on which the CreativeWork was most recently modified or when the
item's entry was modified within a DataFeed.


A date_modified should be one of the following types:

=over

=item C<Str>

=back

=cut

has date_modified => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dateModified',
    json_ld_serializer => \&_serialize_date_modified,
);

sub _serialize_date_modified { $_[0]->_serializer('date_modified') }


=head2 C<item>



An entity represented by an entry in a list or data feed (e.g. an 'artist'
in a list of 'artists')’.


A item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has item => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'item',
    json_ld_serializer => \&_serialize_item,
);

sub _serialize_item { $_[0]->_serializer('item') }




around json_ld_type => sub { return 'DataFeedItem' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'dateCreated' => \&_serialize_date_created,
       'dateDeleted' => \&_serialize_date_deleted,
       'dateModified' => \&_serialize_date_modified,
       'item' => \&_serialize_item,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;