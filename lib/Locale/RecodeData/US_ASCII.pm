#! /bin/false

# vim: set autoindent shiftwidth=4 tabstop=4:

# Conversion routines for US-ASCII.
# Copyright (C) 2002-2018 Guido Flohr <guido.flohr@cantanea.com>,
# all rights reserved.

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

package Locale::RecodeData::US_ASCII;

use strict;

require Locale::RecodeData;
use base qw(Locale::RecodeData);

sub _recode
{
    if ($_[0]->{_from} eq 'INTERNAL') {
		# FIXME: Maybe the lookup is cheaper than the call to chr().
		$_[1] = join '', 
		    map $_ > 0x7f ? '?' : chr $_,
			    @{$_[1]};
    } elsif ($_[0]->{_to} eq 'UTF-8') {
		# FIXME: Maybe the lookup is cheaper than the call to chr().
		$_[1] = join '', 
		    map $_ > 0x7f ? "\xef\xbf\xbd" : chr $_, unpack 'C*', $_[1];
    } else {
		$_[1] = [ map { $_ > 0x7f ? 0xfffd : $_ } unpack 'C*', $_[1] ];
    }

    return 1;
}

1;

__END__

Local Variables:
mode: perl
perl-indent-level: 4
perl-continued-statement-offset: 4
perl-continued-brace-offset: 0
perl-brace-offset: -4
perl-brace-imaginary-offset: 0
perl-label-offset: -4
cperl-indent-level: 4
cperl-continued-statement-offset: 2
tab-width: 4

