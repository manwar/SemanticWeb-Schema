use utf8;

package SemanticWeb::Schema::JobPosting;

# ABSTRACT: A listing that describes a job opening in a certain organization.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'JobPosting';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.1';

=encoding utf8

=head1 DESCRIPTION

A listing that describes a job opening in a certain organization.




=head1 ATTRIBUTES


=head2 C<base_salary>

C<baseSalary>

The base salary of the job or of an employee in an EmployeeRole.


A base_salary should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=item C<Num>

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=cut

has base_salary => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'baseSalary',
);


=head2 C<benefits>



Description of benefits associated with the job.


A benefits should be one of the following types:

=over

=item C<Str>

=back

=cut

has benefits => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'benefits',
);


=head2 C<date_posted>

C<datePosted>

Publication date for the job posting.


A date_posted should be one of the following types:

=over

=item C<Str>

=back

=cut

has date_posted => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'datePosted',
);


=head2 C<employment_type>

C<employmentType>

Type of employment (e.g. full-time, part-time, contract, temporary,
seasonal, internship).


A employment_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has employment_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'employmentType',
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


=head2 C<hiring_organization>

C<hiringOrganization>

Organization offering the job position.


A hiring_organization should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has hiring_organization => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hiringOrganization',
);


=head2 C<incentive_compensation>

C<incentiveCompensation>

Description of bonus and commission compensation aspects of the job.


A incentive_compensation should be one of the following types:

=over

=item C<Str>

=back

=cut

has incentive_compensation => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'incentiveCompensation',
);


=head2 C<incentives>



Description of bonus and commission compensation aspects of the job.


A incentives should be one of the following types:

=over

=item C<Str>

=back

=cut

has incentives => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'incentives',
);


=head2 C<industry>



The industry associated with the job position.


A industry should be one of the following types:

=over

=item C<Str>

=back

=cut

has industry => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'industry',
);


=head2 C<job_benefits>

C<jobBenefits>

Description of benefits associated with the job.


A job_benefits should be one of the following types:

=over

=item C<Str>

=back

=cut

has job_benefits => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'jobBenefits',
);


=head2 C<job_location>

C<jobLocation>

A (typically single) geographic location associated with the job position.


A job_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has job_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'jobLocation',
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


=head2 C<relevant_occupation>

C<relevantOccupation>

The Occupation for the JobPosting.


A relevant_occupation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Occupation']>

=back

=cut

has relevant_occupation => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'relevantOccupation',
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


=head2 C<salary_currency>

C<salaryCurrency>

=begin html

The currency (coded using <a
href="http://en.wikipedia.org/wiki/ISO_4217">ISO 4217</a> ) used for the
main salary information in this job posting or for this employee.

=end html


A salary_currency should be one of the following types:

=over

=item C<Str>

=back

=cut

has salary_currency => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'salaryCurrency',
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


=head2 C<special_commitments>

C<specialCommitments>

Any special commitments associated with this job posting. Valid entries
include VeteranCommit, MilitarySpouseCommit, etc.


A special_commitments should be one of the following types:

=over

=item C<Str>

=back

=cut

has special_commitments => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'specialCommitments',
);


=head2 C<title>



The title of the job.


A title should be one of the following types:

=over

=item C<Str>

=back

=cut

has title => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'title',
);


=head2 C<valid_through>

C<validThrough>

The date after when the item is not valid. For example the end of an offer,
salary period, or a period of opening hours.


A valid_through should be one of the following types:

=over

=item C<Str>

=back

=cut

has valid_through => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'validThrough',
);


=head2 C<work_hours>

C<workHours>

The typical working hours for this job (e.g. 1st shift, night shift,
8am-5pm).


A work_hours should be one of the following types:

=over

=item C<Str>

=back

=cut

has work_hours => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'workHours',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
