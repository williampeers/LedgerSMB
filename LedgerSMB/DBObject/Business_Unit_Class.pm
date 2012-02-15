=head1 NAME

LedgerSMB::DBObject::Business_Unit_Class

=head1 SYNOPSYS

This holds the information as to the handling of classes of buisness units.  
Business units are reporting units which can be used to classify various line 
items of transactions in different ways and include handling for departments, 
funds, and projects.

=cut

package LedgerSMB::DBObject::Business_Unit_Class;
use Moose;
extends LedgerSMB::DBobject_Moose;

=head1 PROPERTIES

=over

=item id

This is the internal id of the unit class.  It is undef when the class has not
yet been saved in the database 

=cut

has 'id' => (is => 'rw', isa => 'Int');

=item label

This is the human-readible label for the class.  It must be unique among
classes.

=cut

has 'label' => (is => 'rw', isa => 'Str');

=item active bool

If true, indicates that this will show up on screens.  If not, it will be
hidden.

=cut

has 'active' => (is => 'rw', isa => 'Bool');

=item ordering 

The entry boxes (drop down or text entry) are set arranged from low to high
by this field on the data entry screens.

=cut

has 'ordering' => (is => 'rw', isa => 'Int');

=back

=head1 METHODS

=over

=item get($id)

=item save

=item list

=item delete
 
=back

=head1 PREDEFINED CLASSES

=over

=item Department, ID: 1

=item Project, ID: 2

=item Job, ID: 3

Used for manufacturing lots

=item Fund, ID: 4

Used by non-profits for funds accounting

=item Customer, ID 5

Used in some countries/industries for multi-customer receipts

=item Vendor, ID 6

Used in some countries/industries for multi-vendor payments

=head1 COPYRIGHT

Copyright (C) 2012 The LedgerSMB Core Team.  This module may be used under the
GNU GPL in accordance with the LICENSE file listed.
