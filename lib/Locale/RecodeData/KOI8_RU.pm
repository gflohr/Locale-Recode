#! /bin/false
# vim: set autoindent shiftwidth=4 tabstop=4:

# Conversion routines for KOI8-RU.
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

package Locale::RecodeData::KOI8_RU;

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
    0x2500,
    0x2502,
    0x250c,
    0x2510,
    0x2514,
    0x2518,
    0x251c,
    0x2524,
    0x252c,
    0x2534,
    0x253c,
    0x2580,
    0x2584,
    0x2588,
    0x258c,
    0x2590,
    0x2591,
    0x2592,
    0x2593,
    0x2320,
    0x25a0,
    0x2219,
    0x221a,
    0x2248,
    0x2264,
    0x2265,
    0x00a0,
    0x2321,
    0x00b0,
    0x00b2,
    0x00b7,
    0x00f7,
    0x2550,
    0x2551,
    0x2552,
    0x0451,
    0x0454,
    0x2554,
    0x0456,
    0x0457,
    0x2557,
    0x2558,
    0x2559,
    0x255a,
    0x255b,
    0x0491,
    0x045e,
    0x255e,
    0x255f,
    0x2560,
    0x2561,
    0x0401,
    0x0404,
    0x2563,
    0x0406,
    0x0407,
    0x2566,
    0x2567,
    0x2568,
    0x2569,
    0x256a,
    0x0490,
    0x040e,
    0x00a9,
    0x044e,
    0x0430,
    0x0431,
    0x0446,
    0x0434,
    0x0435,
    0x0444,
    0x0433,
    0x0445,
    0x0438,
    0x0439,
    0x043a,
    0x043b,
    0x043c,
    0x043d,
    0x043e,
    0x043f,
    0x044f,
    0x0440,
    0x0441,
    0x0442,
    0x0443,
    0x0436,
    0x0432,
    0x044c,
    0x044b,
    0x0437,
    0x0448,
    0x044d,
    0x0449,
    0x0447,
    0x044a,
    0x042e,
    0x0410,
    0x0411,
    0x0426,
    0x0414,
    0x0415,
    0x0424,
    0x0413,
    0x0425,
    0x0418,
    0x0419,
    0x041a,
    0x041b,
    0x041c,
    0x041d,
    0x041e,
    0x041f,
    0x042f,
    0x0420,
    0x0421,
    0x0422,
    0x0423,
    0x0416,
    0x0412,
    0x042c,
    0x042b,
    0x0417,
    0x0428,
    0x042d,
    0x0429,
    0x0427,
    0x042a,
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
    "\xe2\x94\x80",
    "\xe2\x94\x82",
    "\xe2\x94\x8c",
    "\xe2\x94\x90",
    "\xe2\x94\x94",
    "\xe2\x94\x98",
    "\xe2\x94\x9c",
    "\xe2\x94\xa4",
    "\xe2\x94\xac",
    "\xe2\x94\xb4",
    "\xe2\x94\xbc",
    "\xe2\x96\x80",
    "\xe2\x96\x84",
    "\xe2\x96\x88",
    "\xe2\x96\x8c",
    "\xe2\x96\x90",
    "\xe2\x96\x91",
    "\xe2\x96\x92",
    "\xe2\x96\x93",
    "\xe2\x8c\xa0",
    "\xe2\x96\xa0",
    "\xe2\x88\x99",
    "\xe2\x88\x9a",
    "\xe2\x89\x88",
    "\xe2\x89\xa4",
    "\xe2\x89\xa5",
    "\xc2\xa0",
    "\xe2\x8c\xa1",
    "\xc2\xb0",
    "\xc2\xb2",
    "\xc2\xb7",
    "\xc3\xb7",
    "\xe2\x95\x90",
    "\xe2\x95\x91",
    "\xe2\x95\x92",
    "\xd1\x91",
    "\xd1\x94",
    "\xe2\x95\x94",
    "\xd1\x96",
    "\xd1\x97",
    "\xe2\x95\x97",
    "\xe2\x95\x98",
    "\xe2\x95\x99",
    "\xe2\x95\x9a",
    "\xe2\x95\x9b",
    "\xd2\x91",
    "\xd1\x9e",
    "\xe2\x95\x9e",
    "\xe2\x95\x9f",
    "\xe2\x95\xa0",
    "\xe2\x95\xa1",
    "\xd0\x81",
    "\xd0\x84",
    "\xe2\x95\xa3",
    "\xd0\x86",
    "\xd0\x87",
    "\xe2\x95\xa6",
    "\xe2\x95\xa7",
    "\xe2\x95\xa8",
    "\xe2\x95\xa9",
    "\xe2\x95\xaa",
    "\xd2\x90",
    "\xd0\x8e",
    "\xc2\xa9",
    "\xd1\x8e",
    "\xd0\xb0",
    "\xd0\xb1",
    "\xd1\x86",
    "\xd0\xb4",
    "\xd0\xb5",
    "\xd1\x84",
    "\xd0\xb3",
    "\xd1\x85",
    "\xd0\xb8",
    "\xd0\xb9",
    "\xd0\xba",
    "\xd0\xbb",
    "\xd0\xbc",
    "\xd0\xbd",
    "\xd0\xbe",
    "\xd0\xbf",
    "\xd1\x8f",
    "\xd1\x80",
    "\xd1\x81",
    "\xd1\x82",
    "\xd1\x83",
    "\xd0\xb6",
    "\xd0\xb2",
    "\xd1\x8c",
    "\xd1\x8b",
    "\xd0\xb7",
    "\xd1\x88",
    "\xd1\x8d",
    "\xd1\x89",
    "\xd1\x87",
    "\xd1\x8a",
    "\xd0\xae",
    "\xd0\x90",
    "\xd0\x91",
    "\xd0\xa6",
    "\xd0\x94",
    "\xd0\x95",
    "\xd0\xa4",
    "\xd0\x93",
    "\xd0\xa5",
    "\xd0\x98",
    "\xd0\x99",
    "\xd0\x9a",
    "\xd0\x9b",
    "\xd0\x9c",
    "\xd0\x9d",
    "\xd0\x9e",
    "\xd0\x9f",
    "\xd0\xaf",
    "\xd0\xa0",
    "\xd0\xa1",
    "\xd0\xa2",
    "\xd0\xa3",
    "\xd0\x96",
    "\xd0\x92",
    "\xd0\xac",
    "\xd0\xab",
    "\xd0\x97",
    "\xd0\xa8",
    "\xd0\xad",
    "\xd0\xa9",
    "\xd0\xa7",
    "\xd0\xaa",
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
    0x000000a0 => "\x9a",
    0x000000a9 => "\xbf",
    0x000000b0 => "\x9c",
    0x000000b2 => "\x9d",
    0x000000b7 => "\x9e",
    0x000000f7 => "\x9f",
    0x00000401 => "\xb3",
    0x00000404 => "\xb4",
    0x00000406 => "\xb6",
    0x00000407 => "\xb7",
    0x0000040e => "\xbe",
    0x00000410 => "\xe1",
    0x00000411 => "\xe2",
    0x00000412 => "\xf7",
    0x00000413 => "\xe7",
    0x00000414 => "\xe4",
    0x00000415 => "\xe5",
    0x00000416 => "\xf6",
    0x00000417 => "\xfa",
    0x00000418 => "\xe9",
    0x00000419 => "\xea",
    0x0000041a => "\xeb",
    0x0000041b => "\xec",
    0x0000041c => "\xed",
    0x0000041d => "\xee",
    0x0000041e => "\xef",
    0x0000041f => "\xf0",
    0x00000420 => "\xf2",
    0x00000421 => "\xf3",
    0x00000422 => "\xf4",
    0x00000423 => "\xf5",
    0x00000424 => "\xe6",
    0x00000425 => "\xe8",
    0x00000426 => "\xe3",
    0x00000427 => "\xfe",
    0x00000428 => "\xfb",
    0x00000429 => "\xfd",
    0x0000042a => "\xff",
    0x0000042b => "\xf9",
    0x0000042c => "\xf8",
    0x0000042d => "\xfc",
    0x0000042e => "\xe0",
    0x0000042f => "\xf1",
    0x00000430 => "\xc1",
    0x00000431 => "\xc2",
    0x00000432 => "\xd7",
    0x00000433 => "\xc7",
    0x00000434 => "\xc4",
    0x00000435 => "\xc5",
    0x00000436 => "\xd6",
    0x00000437 => "\xda",
    0x00000438 => "\xc9",
    0x00000439 => "\xca",
    0x0000043a => "\xcb",
    0x0000043b => "\xcc",
    0x0000043c => "\xcd",
    0x0000043d => "\xce",
    0x0000043e => "\xcf",
    0x0000043f => "\xd0",
    0x00000440 => "\xd2",
    0x00000441 => "\xd3",
    0x00000442 => "\xd4",
    0x00000443 => "\xd5",
    0x00000444 => "\xc6",
    0x00000445 => "\xc8",
    0x00000446 => "\xc3",
    0x00000447 => "\xde",
    0x00000448 => "\xdb",
    0x00000449 => "\xdd",
    0x0000044a => "\xdf",
    0x0000044b => "\xd9",
    0x0000044c => "\xd8",
    0x0000044d => "\xdc",
    0x0000044e => "\xc0",
    0x0000044f => "\xd1",
    0x00000451 => "\xa3",
    0x00000454 => "\xa4",
    0x00000456 => "\xa6",
    0x00000457 => "\xa7",
    0x0000045e => "\xae",
    0x00000490 => "\xbd",
    0x00000491 => "\xad",
    0x00002219 => "\x95",
    0x0000221a => "\x96",
    0x00002248 => "\x97",
    0x00002264 => "\x98",
    0x00002265 => "\x99",
    0x00002320 => "\x93",
    0x00002321 => "\x9b",
    0x00002500 => "\x80",
    0x00002502 => "\x81",
    0x0000250c => "\x82",
    0x00002510 => "\x83",
    0x00002514 => "\x84",
    0x00002518 => "\x85",
    0x0000251c => "\x86",
    0x00002524 => "\x87",
    0x0000252c => "\x88",
    0x00002534 => "\x89",
    0x0000253c => "\x8a",
    0x00002550 => "\xa0",
    0x00002551 => "\xa1",
    0x00002552 => "\xa2",
    0x00002554 => "\xa5",
    0x00002557 => "\xa8",
    0x00002558 => "\xa9",
    0x00002559 => "\xaa",
    0x0000255a => "\xab",
    0x0000255b => "\xac",
    0x0000255e => "\xaf",
    0x0000255f => "\xb0",
    0x00002560 => "\xb1",
    0x00002561 => "\xb2",
    0x00002563 => "\xb5",
    0x00002566 => "\xb8",
    0x00002567 => "\xb9",
    0x00002568 => "\xba",
    0x00002569 => "\xbb",
    0x0000256a => "\xbc",
    0x00002580 => "\x8b",
    0x00002584 => "\x8c",
    0x00002588 => "\x8d",
    0x0000258c => "\x8e",
    0x00002590 => "\x8f",
    0x00002591 => "\x90",
    0x00002592 => "\x91",
    0x00002593 => "\x92",
    0x000025a0 => "\x94",
);

sub _recode
{
    if ($_[0]->{_from} eq 'INTERNAL') {
		$_[1] = join '',
	        map $from_ucs4{$_} 
                || (defined $from_ucs4{$_} ? $from_ucs4{$_} : "\x3f"),
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

