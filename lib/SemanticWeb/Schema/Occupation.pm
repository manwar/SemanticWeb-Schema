use utf8;

package SemanticWeb::Schema::Occupation;

# ABSTRACT: A profession

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Occupation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.1';

=encoding utf8

=head1 DESCRIPTION

A profession, may involve prolonged training and/or a formal qualification.




=head1 ATTRIBUTES


=head2 C<estimated_salary>

C<estimatedSalary>

An estimated salary for a job posting based on a variety of variables
including, but not limited to industry, job title, and location. Estimated
salaries are often computed by outside organizations rather than the hiring
organization, who may not have committed to the estimated value.


A estimated_salary should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmountDistribution']>

=back

=cut

has estimated_salary => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'estimatedSalary',
);


=head2 C<experience_requirements>

C<experienceRequirements>

Description of skills and experience needed for the position or Occupation.


A experience_requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has experience_requirements => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'experienceRequirements',
);


=head2 C<occupation_location>

C<occupationLocation>

The region/country for which this occupational description is appropriate.
Note that educational requirements and qualifications can vary between
jurisdictions.


A occupation_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=back

=cut

has occupation_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'occupationLocation',
);


=head2 C<occupational_category>

C<occupationalCategory>

Category or categories describing the job. Use BLS O*NET-SOC taxonomy:
http://www.onetcenter.org/taxonomy.html. Ideally includes textual label and
formal code, with the property repeated for each applicable value.


A occupational_category should be one of the following types:

=over

=item C<Str>

=back

=cut

has occupational_category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'occupationalCategory',
);


=head2 C<responsibilities>



Responsibilities associated with this role or Occupation.


A responsibilities should be one of the following types:

=over

=item C<Str>

=back

=cut

has responsibilities => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'responsibilities',
);


=head2 C<skills>



Skills required to fulfill this role or in this Occupation.


A skills should be one of the following types:

=over

=item C<Str>

=back

=cut

has skills => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'skills',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
