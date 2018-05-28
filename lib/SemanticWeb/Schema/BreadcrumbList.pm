package SemanticWeb::Schema::BreadcrumbList;

# ABSTRACT: A BreadcrumbList is an ItemList consisting of a chain of linked Web pages

use Moo;

extends qw/ SemanticWeb::Schema::ItemList /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A BreadcrumbList is an ItemList consisting of a chain of linked Web pages,
typically described using at least their URL and their name, and typically
ending with the current page.</p> <p>The <a class="localLink"
href="http://schema.org/position">position</a> property is used to
reconstruct the order of the items in a BreadcrumbList The convention is
that a breadcrumb list has an <a class="localLink"
href="http://schema.org/itemListOrder">itemListOrder</a> of <a
class="localLink"
href="http://schema.org/ItemListOrderAscending">ItemListOrderAscending</a>
(lower values listed first), and that the first items in this list
correspond to the "top" or beginning of the breadcrumb trail, e.g. with a
site or section homepage. The specific values of 'position' are not
assigned meaning for a BreadcrumbList, but they should be integers, e.g.
beginning with '1' for the first item in the list.

=end html




=cut


around json_ld_type => sub { return 'BreadcrumbList' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::ItemList>

=cut

1;