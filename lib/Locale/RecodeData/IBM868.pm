#! /bin/false
# vim: set autoindent shiftwidth=4 tabstop=4:

# Conversion routines for IBM868.
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

package Locale::RecodeData::IBM868;

use strict;

require Locale::RecodeData;
use base qw(Locale::RecodeData);

my @to_ucs4 = (
    0x0000,
    0x0001,
    0x0002,
    0x0003,
    0x0004,
    0x0005,
    0x0006,
    0x0007,
    0x0008,
    0x0009,
    0x000a,
    0x000b,
    0x000c,
    0x000d,
    0x000e,
    0x000f,
    0x0010,
    0x0011,
    0x0012,
    0x0013,
    0x0014,
    0x0015,
    0x0016,
    0x0017,
    0x0018,
    0x0019,
    0x001a,
    0x001b,
    0x001c,
    0x001d,
    0x001e,
    0x001f,
    0x0020,
    0x0021,
    0x0022,
    0x0023,
    0x0024,
    0x0025,
    0x0026,
    0x0027,
    0x0028,
    0x0029,
    0x002a,
    0x002b,
    0x002c,
    0x002d,
    0x002e,
    0x002f,
    0x0030,
    0x0031,
    0x0032,
    0x0033,
    0x0034,
    0x0035,
    0x0036,
    0x0037,
    0x0038,
    0x0039,
    0x003a,
    0x003b,
    0x003c,
    0x003d,
    0x003e,
    0x003f,
    0x0040,
    0x0041,
    0x0042,
    0x0043,
    0x0044,
    0x0045,
    0x0046,
    0x0047,
    0x0048,
    0x0049,
    0x004a,
    0x004b,
    0x004c,
    0x004d,
    0x004e,
    0x004f,
    0x0050,
    0x0051,
    0x0052,
    0x0053,
    0x0054,
    0x0055,
    0x0056,
    0x0057,
    0x0058,
    0x0059,
    0x005a,
    0x005b,
    0x005c,
    0x005d,
    0x005e,
    0x005f,
    0x0060,
    0x0061,
    0x0062,
    0x0063,
    0x0064,
    0x0065,
    0x0066,
    0x0067,
    0x0068,
    0x0069,
    0x006a,
    0x006b,
    0x006c,
    0x006d,
    0x006e,
    0x006f,
    0x0070,
    0x0071,
    0x0072,
    0x0073,
    0x0074,
    0x0075,
    0x0076,
    0x0077,
    0x0078,
    0x0079,
    0x007a,
    0x007b,
    0x007c,
    0x007d,
    0x007e,
    0x007f,
    0x0660,
    0x0661,
    0x0662,
    0x0663,
    0x0664,
    0x0665,
    0x0666,
    0x0667,
    0x0668,
    0x0669,
    0x060c,
    0x061b,
    0x061f,
    0x0622,
    0x0627,
    0xfe8e,
    0xe016,
    0x0628,
    0xfe91,
    0x067e,
    0xfffd,
    0x0629,
    0x062a,
    0xfe97,
    0xfffd,
    0xfffd,
    0x062b,
    0xfe9b,
    0x062c,
    0xfe9f,
    0xfffd,
    0xfffd,
    0x062d,
    0xfea3,
    0x062e,
    0xfea7,
    0x062f,
    0xfffd,
    0x0630,
    0x0631,
    0xfffd,
    0x0632,
    0xfffd,
    0x0633,
    0xfeb3,
    0x0634,
    0x00ab,
    0x00bb,
    0xfeb7,
    0x0635,
    0x2591,
    0x2592,
    0x2593,
    0x2502,
    0x2524,
    0xfebb,
    0x0636,
    0xfebf,
    0x0637,
    0x2563,
    0x2551,
    0x2557,
    0x255d,
    0x0638,
    0x0639,
    0x2510,
    0x2514,
    0x2534,
    0x252c,
    0x251c,
    0x2500,
    0x253c,
    0xfeca,
    0xfecb,
    0x255a,
    0x2554,
    0x2569,
    0x2566,
    0x2560,
    0x2550,
    0x256c,
    0xfecc,
    0x063a,
    0xfece,
    0xfecf,
    0xfed0,
    0x0641,
    0xfed3,
    0x0642,
    0xfed7,
    0xfeda,
    0x2518,
    0x250c,
    0x2588,
    0x2580,
    0xfedb,
    0xfffd,
    0x2584,
    0xfffd,
    0x0644,
    0xfede,
    0xfee0,
    0x0645,
    0xfee3,
    0xfffd,
    0x0646,
    0xfee7,
    0xfffd,
    0x0648,
    0xfffd,
    0xfffd,
    0xfffd,
    0xfffd,
    0x0621,
    0x00ad,
    0xfffd,
    0xfffd,
    0xfffd,
    0xfffd,
    0xfffd,
    0xfffd,
    0xfffd,
    0xfffd,
    0x0651,
    0xfe7d,
    0xfffd,
    0x25a0,
    0x00a0,
);

my @to_utf8 = (
    "\x00",
    "\x01",
    "\x02",
    "\x03",
    "\x04",
    "\x05",
    "\x06",
    "\x07",
    "\x08",
    "\x09",
    "\x0a",
    "\x0b",
    "\x0c",
    "\x0d",
    "\x0e",
    "\x0f",
    "\x10",
    "\x11",
    "\x12",
    "\x13",
    "\x14",
    "\x15",
    "\x16",
    "\x17",
    "\x18",
    "\x19",
    "\x1a",
    "\x1b",
    "\x1c",
    "\x1d",
    "\x1e",
    "\x1f",
    "\x20",
    "\x21",
    "\x22",
    "\x23",
    "\x24",
    "\x25",
    "\x26",
    "\x27",
    "\x28",
    "\x29",
    "\x2a",
    "\x2b",
    "\x2c",
    "\x2d",
    "\x2e",
    "\x2f",
    "\x30",
    "\x31",
    "\x32",
    "\x33",
    "\x34",
    "\x35",
    "\x36",
    "\x37",
    "\x38",
    "\x39",
    "\x3a",
    "\x3b",
    "\x3c",
    "\x3d",
    "\x3e",
    "\x3f",
    "\x40",
    "\x41",
    "\x42",
    "\x43",
    "\x44",
    "\x45",
    "\x46",
    "\x47",
    "\x48",
    "\x49",
    "\x4a",
    "\x4b",
    "\x4c",
    "\x4d",
    "\x4e",
    "\x4f",
    "\x50",
    "\x51",
    "\x52",
    "\x53",
    "\x54",
    "\x55",
    "\x56",
    "\x57",
    "\x58",
    "\x59",
    "\x5a",
    "\x5b",
    "\x5c",
    "\x5d",
    "\x5e",
    "\x5f",
    "\x60",
    "\x61",
    "\x62",
    "\x63",
    "\x64",
    "\x65",
    "\x66",
    "\x67",
    "\x68",
    "\x69",
    "\x6a",
    "\x6b",
    "\x6c",
    "\x6d",
    "\x6e",
    "\x6f",
    "\x70",
    "\x71",
    "\x72",
    "\x73",
    "\x74",
    "\x75",
    "\x76",
    "\x77",
    "\x78",
    "\x79",
    "\x7a",
    "\x7b",
    "\x7c",
    "\x7d",
    "\x7e",
    "\x7f",
    "\xd9\xa0",
    "\xd9\xa1",
    "\xd9\xa2",
    "\xd9\xa3",
    "\xd9\xa4",
    "\xd9\xa5",
    "\xd9\xa6",
    "\xd9\xa7",
    "\xd9\xa8",
    "\xd9\xa9",
    "\xd8\x8c",
    "\xd8\x9b",
    "\xd8\x9f",
    "\xd8\xa2",
    "\xd8\xa7",
    "\xef\xba\x8e",
    "\xee\x80\x96",
    "\xd8\xa8",
    "\xef\xba\x91",
    "\xd9\xbe",
    "\xef\xbf\xbd",
    "\xd8\xa9",
    "\xd8\xaa",
    "\xef\xba\x97",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xd8\xab",
    "\xef\xba\x9b",
    "\xd8\xac",
    "\xef\xba\x9f",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xd8\xad",
    "\xef\xba\xa3",
    "\xd8\xae",
    "\xef\xba\xa7",
    "\xd8\xaf",
    "\xef\xbf\xbd",
    "\xd8\xb0",
    "\xd8\xb1",
    "\xef\xbf\xbd",
    "\xd8\xb2",
    "\xef\xbf\xbd",
    "\xd8\xb3",
    "\xef\xba\xb3",
    "\xd8\xb4",
    "\xc2\xab",
    "\xc2\xbb",
    "\xef\xba\xb7",
    "\xd8\xb5",
    "\xe2\x96\x91",
    "\xe2\x96\x92",
    "\xe2\x96\x93",
    "\xe2\x94\x82",
    "\xe2\x94\xa4",
    "\xef\xba\xbb",
    "\xd8\xb6",
    "\xef\xba\xbf",
    "\xd8\xb7",
    "\xe2\x95\xa3",
    "\xe2\x95\x91",
    "\xe2\x95\x97",
    "\xe2\x95\x9d",
    "\xd8\xb8",
    "\xd8\xb9",
    "\xe2\x94\x90",
    "\xe2\x94\x94",
    "\xe2\x94\xb4",
    "\xe2\x94\xac",
    "\xe2\x94\x9c",
    "\xe2\x94\x80",
    "\xe2\x94\xbc",
    "\xef\xbb\x8a",
    "\xef\xbb\x8b",
    "\xe2\x95\x9a",
    "\xe2\x95\x94",
    "\xe2\x95\xa9",
    "\xe2\x95\xa6",
    "\xe2\x95\xa0",
    "\xe2\x95\x90",
    "\xe2\x95\xac",
    "\xef\xbb\x8c",
    "\xd8\xba",
    "\xef\xbb\x8e",
    "\xef\xbb\x8f",
    "\xef\xbb\x90",
    "\xd9\x81",
    "\xef\xbb\x93",
    "\xd9\x82",
    "\xef\xbb\x97",
    "\xef\xbb\x9a",
    "\xe2\x94\x98",
    "\xe2\x94\x8c",
    "\xe2\x96\x88",
    "\xe2\x96\x80",
    "\xef\xbb\x9b",
    "\xef\xbf\xbd",
    "\xe2\x96\x84",
    "\xef\xbf\xbd",
    "\xd9\x84",
    "\xef\xbb\x9e",
    "\xef\xbb\xa0",
    "\xd9\x85",
    "\xef\xbb\xa3",
    "\xef\xbf\xbd",
    "\xd9\x86",
    "\xef\xbb\xa7",
    "\xef\xbf\xbd",
    "\xd9\x88",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xd8\xa1",
    "\xc2\xad",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xd9\x91",
    "\xef\xb9\xbd",
    "\xef\xbf\xbd",
    "\xe2\x96\xa0",
    "\xc2\xa0",
);

my %from_ucs4 = (
    0x00000000 => "\x00",
    0x00000001 => "\x01",
    0x00000002 => "\x02",
    0x00000003 => "\x03",
    0x00000004 => "\x04",
    0x00000005 => "\x05",
    0x00000006 => "\x06",
    0x00000007 => "\x07",
    0x00000008 => "\x08",
    0x00000009 => "\x09",
    0x0000000a => "\x0a",
    0x0000000b => "\x0b",
    0x0000000c => "\x0c",
    0x0000000d => "\x0d",
    0x0000000e => "\x0e",
    0x0000000f => "\x0f",
    0x00000010 => "\x10",
    0x00000011 => "\x11",
    0x00000012 => "\x12",
    0x00000013 => "\x13",
    0x00000014 => "\x14",
    0x00000015 => "\x15",
    0x00000016 => "\x16",
    0x00000017 => "\x17",
    0x00000018 => "\x18",
    0x00000019 => "\x19",
    0x0000001a => "\x1a",
    0x0000001b => "\x1b",
    0x0000001c => "\x1c",
    0x0000001d => "\x1d",
    0x0000001e => "\x1e",
    0x0000001f => "\x1f",
    0x00000020 => "\x20",
    0x00000021 => "\x21",
    0x00000022 => "\x22",
    0x00000023 => "\x23",
    0x00000024 => "\x24",
    0x00000025 => "\x25",
    0x00000026 => "\x26",
    0x00000027 => "\x27",
    0x00000028 => "\x28",
    0x00000029 => "\x29",
    0x0000002a => "\x2a",
    0x0000002b => "\x2b",
    0x0000002c => "\x2c",
    0x0000002d => "\x2d",
    0x0000002e => "\x2e",
    0x0000002f => "\x2f",
    0x00000030 => "\x30",
    0x00000031 => "\x31",
    0x00000032 => "\x32",
    0x00000033 => "\x33",
    0x00000034 => "\x34",
    0x00000035 => "\x35",
    0x00000036 => "\x36",
    0x00000037 => "\x37",
    0x00000038 => "\x38",
    0x00000039 => "\x39",
    0x0000003a => "\x3a",
    0x0000003b => "\x3b",
    0x0000003c => "\x3c",
    0x0000003d => "\x3d",
    0x0000003e => "\x3e",
    0x0000003f => "\x3f",
    0x00000040 => "\x40",
    0x00000041 => "\x41",
    0x00000042 => "\x42",
    0x00000043 => "\x43",
    0x00000044 => "\x44",
    0x00000045 => "\x45",
    0x00000046 => "\x46",
    0x00000047 => "\x47",
    0x00000048 => "\x48",
    0x00000049 => "\x49",
    0x0000004a => "\x4a",
    0x0000004b => "\x4b",
    0x0000004c => "\x4c",
    0x0000004d => "\x4d",
    0x0000004e => "\x4e",
    0x0000004f => "\x4f",
    0x00000050 => "\x50",
    0x00000051 => "\x51",
    0x00000052 => "\x52",
    0x00000053 => "\x53",
    0x00000054 => "\x54",
    0x00000055 => "\x55",
    0x00000056 => "\x56",
    0x00000057 => "\x57",
    0x00000058 => "\x58",
    0x00000059 => "\x59",
    0x0000005a => "\x5a",
    0x0000005b => "\x5b",
    0x0000005c => "\x5c",
    0x0000005d => "\x5d",
    0x0000005e => "\x5e",
    0x0000005f => "\x5f",
    0x00000060 => "\x60",
    0x00000061 => "\x61",
    0x00000062 => "\x62",
    0x00000063 => "\x63",
    0x00000064 => "\x64",
    0x00000065 => "\x65",
    0x00000066 => "\x66",
    0x00000067 => "\x67",
    0x00000068 => "\x68",
    0x00000069 => "\x69",
    0x0000006a => "\x6a",
    0x0000006b => "\x6b",
    0x0000006c => "\x6c",
    0x0000006d => "\x6d",
    0x0000006e => "\x6e",
    0x0000006f => "\x6f",
    0x00000070 => "\x70",
    0x00000071 => "\x71",
    0x00000072 => "\x72",
    0x00000073 => "\x73",
    0x00000074 => "\x74",
    0x00000075 => "\x75",
    0x00000076 => "\x76",
    0x00000077 => "\x77",
    0x00000078 => "\x78",
    0x00000079 => "\x79",
    0x0000007a => "\x7a",
    0x0000007b => "\x7b",
    0x0000007c => "\x7c",
    0x0000007d => "\x7d",
    0x0000007e => "\x7e",
    0x0000007f => "\x7f",
    0x000000a0 => "\xff",
    0x000000ab => "\xae",
    0x000000ad => "\xf2",
    0x000000bb => "\xaf",
    0x0000060c => "\x8a",
    0x0000061b => "\x8b",
    0x0000061f => "\x8c",
    0x00000621 => "\xf1",
    0x00000622 => "\x8d",
    0x00000627 => "\x8e",
    0x00000628 => "\x91",
    0x00000629 => "\x95",
    0x0000062a => "\x96",
    0x0000062b => "\x9a",
    0x0000062c => "\x9c",
    0x0000062d => "\xa0",
    0x0000062e => "\xa2",
    0x0000062f => "\xa4",
    0x00000630 => "\xa6",
    0x00000631 => "\xa7",
    0x00000632 => "\xa9",
    0x00000633 => "\xab",
    0x00000634 => "\xad",
    0x00000635 => "\xb1",
    0x00000636 => "\xb8",
    0x00000637 => "\xba",
    0x00000638 => "\xbf",
    0x00000639 => "\xc0",
    0x0000063a => "\xd2",
    0x00000641 => "\xd6",
    0x00000642 => "\xd8",
    0x00000644 => "\xe3",
    0x00000645 => "\xe6",
    0x00000646 => "\xe9",
    0x00000648 => "\xec",
    0x00000651 => "\xfb",
    0x00000660 => "\x80",
    0x00000661 => "\x81",
    0x00000662 => "\x82",
    0x00000663 => "\x83",
    0x00000664 => "\x84",
    0x00000665 => "\x85",
    0x00000666 => "\x86",
    0x00000667 => "\x87",
    0x00000668 => "\x88",
    0x00000669 => "\x89",
    0x0000067e => "\x93",
    0x00002500 => "\xc6",
    0x00002502 => "\xb5",
    0x0000250c => "\xdc",
    0x00002510 => "\xc1",
    0x00002514 => "\xc2",
    0x00002518 => "\xdb",
    0x0000251c => "\xc5",
    0x00002524 => "\xb6",
    0x0000252c => "\xc4",
    0x00002534 => "\xc3",
    0x0000253c => "\xc7",
    0x00002550 => "\xcf",
    0x00002551 => "\xbc",
    0x00002554 => "\xcb",
    0x00002557 => "\xbd",
    0x0000255a => "\xca",
    0x0000255d => "\xbe",
    0x00002560 => "\xce",
    0x00002563 => "\xbb",
    0x00002566 => "\xcd",
    0x00002569 => "\xcc",
    0x0000256c => "\xd0",
    0x00002580 => "\xde",
    0x00002584 => "\xe1",
    0x00002588 => "\xdd",
    0x00002591 => "\xb2",
    0x00002592 => "\xb3",
    0x00002593 => "\xb4",
    0x000025a0 => "\xfe",
    0x0000e016 => "\x90",
    0x0000fe7d => "\xfc",
    0x0000fe8e => "\x8f",
    0x0000fe91 => "\x92",
    0x0000fe97 => "\x97",
    0x0000fe9b => "\x9b",
    0x0000fe9f => "\x9d",
    0x0000fea3 => "\xa1",
    0x0000fea7 => "\xa3",
    0x0000feb3 => "\xac",
    0x0000feb7 => "\xb0",
    0x0000febb => "\xb7",
    0x0000febf => "\xb9",
    0x0000feca => "\xc8",
    0x0000fecb => "\xc9",
    0x0000fecc => "\xd1",
    0x0000fece => "\xd3",
    0x0000fecf => "\xd4",
    0x0000fed0 => "\xd5",
    0x0000fed3 => "\xd7",
    0x0000fed7 => "\xd9",
    0x0000feda => "\xda",
    0x0000fedb => "\xdf",
    0x0000fede => "\xe4",
    0x0000fee0 => "\xe5",
    0x0000fee3 => "\xe7",
    0x0000fee7 => "\xea",
);

sub _recode
{
    if ($_[0]->{_from} eq 'INTERNAL') {
		$_[1] = join '',
	        map $from_ucs4{$_} 
                || (defined $from_ucs4{$_} ? $from_ucs4{$_} : "\x8c"),
		    @{$_[1]};
    } elsif ($_[0]->{_to} eq 'UTF-8',) {
		$_[1] = join '', map $to_utf8[$_], unpack 'C*', $_[1];
    } else {
		$_[1] = [ map 
				  $to_ucs4[$_],
				  unpack 'C*', $_[1] 
				  ];
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

