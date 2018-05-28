package SemanticWeb::Schema::VisualArtwork;

# ABSTRACT: A work of art that is primarily visual in character.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A work of art that is primarily visual in character.




=head1 ATTRIBUTES


=head2 C<art_edition>

C<artEdition>

The number of copies when multiple copies of a piece of artwork are
produced - e.g. for a limited edition of 20 prints, 'artEdition' refers to
the total number of copies (in this example "20").


A art_edition should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=cut

has art_edition => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'artEdition',
    json_ld_serializer => \&_serialize_art_edition,
);

sub _serialize_art_edition { $_[0]->_serializer('art_edition') }


=head2 C<art_medium>

C<artMedium>

The material used. (e.g. Oil, Watercolour, Acrylic, Linoprint, Marble,
Cyanotype, Digital, Lithograph, DryPoint, Intaglio, Pastel, Woodcut,
Pencil, Mixed Media, etc.)


A art_medium should be one of the following types:

=over

=item C<Str>

=back

=cut

has art_medium => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'artMedium',
    json_ld_serializer => \&_serialize_art_medium,
);

sub _serialize_art_medium { $_[0]->_serializer('art_medium') }


=head2 C<artform>



e.g. Painting, Drawing, Sculpture, Print, Photograph, Assemblage, Collage,
etc.


A artform should be one of the following types:

=over

=item C<Str>

=back

=cut

has artform => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'artform',
    json_ld_serializer => \&_serialize_artform,
);

sub _serialize_artform { $_[0]->_serializer('artform') }


=head2 C<artwork_surface>

C<artworkSurface>

The supporting materials for the artwork, e.g. Canvas, Paper, Wood, Board,
etc.


A artwork_surface should be one of the following types:

=over

=item C<Str>

=back

=cut

has artwork_surface => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'artworkSurface',
    json_ld_serializer => \&_serialize_artwork_surface,
);

sub _serialize_artwork_surface { $_[0]->_serializer('artwork_surface') }


=head2 C<depth>



The depth of the item.


A depth should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=back

=cut

has depth => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'depth',
    json_ld_serializer => \&_serialize_depth,
);

sub _serialize_depth { $_[0]->_serializer('depth') }


=head2 C<height>



The height of the item.


A height should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has height => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'height',
    json_ld_serializer => \&_serialize_height,
);

sub _serialize_height { $_[0]->_serializer('height') }


=head2 C<surface>



A material used as a surface in some artwork, e.g. Canvas, Paper, Wood,
Board, etc.


A surface should be one of the following types:

=over

=item C<Str>

=back

=cut

has surface => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'surface',
    json_ld_serializer => \&_serialize_surface,
);

sub _serialize_surface { $_[0]->_serializer('surface') }


=head2 C<width>



The width of the item.


A width should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has width => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'width',
    json_ld_serializer => \&_serialize_width,
);

sub _serialize_width { $_[0]->_serializer('width') }




around json_ld_type => sub { return 'VisualArtwork' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'artEdition' => \&_serialize_art_edition,
       'artMedium' => \&_serialize_art_medium,
       'artform' => \&_serialize_artform,
       'artworkSurface' => \&_serialize_artwork_surface,
       'depth' => \&_serialize_depth,
       'height' => \&_serialize_height,
       'surface' => \&_serialize_surface,
       'width' => \&_serialize_width,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;