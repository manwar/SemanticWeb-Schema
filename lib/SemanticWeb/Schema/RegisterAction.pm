package SemanticWeb::Schema::RegisterAction;

# ABSTRACT: <p>The act of registering to be a user of a service

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of registering to be a user of a service, product or web
page.</p> <p>Related actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/JoinAction">JoinAction</a>: Unlike JoinAction,
RegisterAction implies you are registering to be a user of a service,
<em>not</em> a group/team of people.</li> <li>[FollowAction]]: Unlike
FollowAction, RegisterAction doesn't imply that the agent is expecting to
poll for updates from the object.</li> <li><a class="localLink"
href="http://schema.org/SubscribeAction">SubscribeAction</a>: Unlike
SubscribeAction, RegisterAction doesn't imply that the agent is expecting
updates from the object.</li> </ul> 

=end html




=cut


around json_ld_type => sub { return 'RegisterAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;