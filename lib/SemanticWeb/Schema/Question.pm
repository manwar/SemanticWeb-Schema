package SemanticWeb::Schema::Question;

# ABSTRACT: A specific question - e

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A specific question - e.g. from a user seeking answers online, or collected
in a Frequently Asked Questions (FAQ) document.




=head1 ATTRIBUTES


=head2 C<accepted_answer>

C<acceptedAnswer>

The answer that has been accepted as best, typically on a Question/Answer
site. Sites vary in their selection mechanisms, e.g. drawing on community
opinion and/or the view of the Question author.


A accepted_answer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Answer']>

=back

=cut

has accepted_answer => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'acceptedAnswer',
    json_ld_serializer => \&_serialize_accepted_answer,
);

sub _serialize_accepted_answer { $_[0]->_serializer('accepted_answer') }


=head2 C<answer_count>

C<answerCount>

The number of answers this question has received.


A answer_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has answer_count => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'answerCount',
    json_ld_serializer => \&_serialize_answer_count,
);

sub _serialize_answer_count { $_[0]->_serializer('answer_count') }


=head2 C<downvote_count>

C<downvoteCount>

The number of downvotes this question, answer or comment has received from
the community.


A downvote_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has downvote_count => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'downvoteCount',
    json_ld_serializer => \&_serialize_downvote_count,
);

sub _serialize_downvote_count { $_[0]->_serializer('downvote_count') }


=head2 C<suggested_answer>

C<suggestedAnswer>

An answer (possibly one of several, possibly incorrect) to a Question, e.g.
on a Question/Answer site.


A suggested_answer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Answer']>

=back

=cut

has suggested_answer => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'suggestedAnswer',
    json_ld_serializer => \&_serialize_suggested_answer,
);

sub _serialize_suggested_answer { $_[0]->_serializer('suggested_answer') }


=head2 C<upvote_count>

C<upvoteCount>

The number of upvotes this question, answer or comment has received from
the community.


A upvote_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has upvote_count => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'upvoteCount',
    json_ld_serializer => \&_serialize_upvote_count,
);

sub _serialize_upvote_count { $_[0]->_serializer('upvote_count') }




around json_ld_type => sub { return 'Question' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'acceptedAnswer' => \&_serialize_accepted_answer,
       'answerCount' => \&_serialize_answer_count,
       'downvoteCount' => \&_serialize_downvote_count,
       'suggestedAnswer' => \&_serialize_suggested_answer,
       'upvoteCount' => \&_serialize_upvote_count,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;