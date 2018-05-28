package SemanticWeb::Schema::CommentAction;

# ABSTRACT: The act of generating a comment about a subject.

use Moo;

extends qw/ SemanticWeb::Schema::CommunicateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of generating a comment about a subject.




=head1 ATTRIBUTES


=head2 C<result_comment>

C<resultComment>

A sub property of result. The Comment created or sent as a result of this
action.


A result_comment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Comment']>

=back

=cut

has result_comment => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'resultComment',
    json_ld_serializer => \&_serialize_result_comment,
);

sub _serialize_result_comment { $_[0]->_serializer('result_comment') }




around json_ld_type => sub { return 'CommentAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'resultComment' => \&_serialize_result_comment,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CommunicateAction>

=cut

1;