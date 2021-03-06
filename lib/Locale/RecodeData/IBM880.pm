#! /bin/false
# vim: set autoindent shiftwidth=4 tabstop=4:

# Conversion routines for IBM880.
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

package Locale::RecodeData::IBM880;

use strict;

require Locale::RecodeData;
use base qw(Locale::RecodeData);

my @to_ucs4 = (
    0x0000,
    0x0001,
    0x0002,
    0x0003,
    0x009c,
    0x0009,
    0x0086,
    0x007f,
    0x0097,
    0x008d,
    0x008e,
    0x000b,
    0x000c,
    0x000d,
    0x000e,
    0x000f,
    0x0010,
    0x0011,
    0x0012,
    0x0013,
    0x009d,
    0x0085,
    0x0008,
    0x0087,
    0x0018,
    0x0019,
    0x0092,
    0x008f,
    0x001c,
    0x001d,
    0x001e,
    0x001f,
    0x0080,
    0x0081,
    0x0082,
    0x0083,
    0x0084,
    0x000a,
    0x0017,
    0x001b,
    0x0088,
    0x0089,
    0x008a,
    0x008b,
    0x008c,
    0x0005,
    0x0006,
    0x0007,
    0x0090,
    0x0091,
    0x0016,
    0x0093,
    0x0094,
    0x0095,
    0x0096,
    0x0004,
    0x0098,
    0x0099,
    0x009a,
    0x009b,
    0x0014,
    0x0015,
    0x009e,
    0x001a,
    0x0020,
    0xfffd,
    0x0452,
    0x0453,
    0x0451,
    0xfffd,
    0x0455,
    0x0456,
    0x0457,
    0x0458,
    0x005b,
    0x002e,
    0x003c,
    0x0028,
    0x002b,
    0x0021,
    0x0026,
    0x0459,
    0x045a,
    0x045b,
    0x045c,
    0xfffd,
    0x045f,
    0x042a,
    0x2116,
    0x0402,
    0x005d,
    0x0024,
    0x002a,
    0x0029,
    0x003b,
    0x005e,
    0x002d,
    0x002f,
    0x0403,
    0x0401,
    0xfffd,
    0x0405,
    0x0406,
    0x0407,
    0x0408,
    0x0409,
    0x00a6,
    0x002c,
    0x0025,
    0x005f,
    0x003e,
    0x003f,
    0x040a,
    0x040b,
    0x040c,
    0xfffd,
    0xfffd,
    0x040f,
    0x044e,
    0x0430,
    0x0431,
    0xfffd,
    0x003a,
    0x0023,
    0x0040,
    0x0027,
    0x003d,
    0x0022,
    0x0446,
    0x0061,
    0x0062,
    0x0063,
    0x0064,
    0x0065,
    0x0066,
    0x0067,
    0x0068,
    0x0069,
    0x0434,
    0x0435,
    0x0444,
    0x0433,
    0x0445,
    0x0438,
    0x0439,
    0x006a,
    0x006b,
    0x006c,
    0x006d,
    0x006e,
    0x006f,
    0x0070,
    0x0071,
    0x0072,
    0x043a,
    0x043b,
    0x043c,
    0x043d,
    0x043e,
    0x043f,
    0x044f,
    0xfffd,
    0x0073,
    0x0074,
    0x0075,
    0x0076,
    0x0077,
    0x0078,
    0x0079,
    0x007a,
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
    0xfffd,
    0x0041,
    0x0042,
    0x0043,
    0x0044,
    0x0045,
    0x0046,
    0x0047,
    0x0048,
    0x0049,
    0x0425,
    0x0418,
    0x0419,
    0x041a,
    0x041b,
    0x041c,
    0xfffd,
    0x004a,
    0x004b,
    0x004c,
    0x004d,
    0x004e,
    0x004f,
    0x0050,
    0x0051,
    0x0052,
    0x041d,
    0x041e,
    0x041f,
    0x042f,
    0x0420,
    0x0421,
    0x005c,
    0x00a4,
    0x0053,
    0x0054,
    0x0055,
    0x0056,
    0x0057,
    0x0058,
    0x0059,
    0x005a,
    0x0422,
    0x0423,
    0x0416,
    0x0412,
    0x042c,
    0x042b,
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
    0x0417,
    0x0428,
    0x042d,
    0x0429,
    0x0427,
    0x009f,
);

my @to_utf8 = (
    "\x00",
    "\x01",
    "\x02",
    "\x03",
    "\xc2\x9c",
    "\x09",
    "\xc2\x86",
    "\x7f",
    "\xc2\x97",
    "\xc2\x8d",
    "\xc2\x8e",
    "\x0b",
    "\x0c",
    "\x0d",
    "\x0e",
    "\x0f",
    "\x10",
    "\x11",
    "\x12",
    "\x13",
    "\xc2\x9d",
    "\xc2\x85",
    "\x08",
    "\xc2\x87",
    "\x18",
    "\x19",
    "\xc2\x92",
    "\xc2\x8f",
    "\x1c",
    "\x1d",
    "\x1e",
    "\x1f",
    "\xc2\x80",
    "\xc2\x81",
    "\xc2\x82",
    "\xc2\x83",
    "\xc2\x84",
    "\x0a",
    "\x17",
    "\x1b",
    "\xc2\x88",
    "\xc2\x89",
    "\xc2\x8a",
    "\xc2\x8b",
    "\xc2\x8c",
    "\x05",
    "\x06",
    "\x07",
    "\xc2\x90",
    "\xc2\x91",
    "\x16",
    "\xc2\x93",
    "\xc2\x94",
    "\xc2\x95",
    "\xc2\x96",
    "\x04",
    "\xc2\x98",
    "\xc2\x99",
    "\xc2\x9a",
    "\xc2\x9b",
    "\x14",
    "\x15",
    "\xc2\x9e",
    "\x1a",
    "\x20",
    "\xef\xbf\xbd",
    "\xd1\x92",
    "\xd1\x93",
    "\xd1\x91",
    "\xef\xbf\xbd",
    "\xd1\x95",
    "\xd1\x96",
    "\xd1\x97",
    "\xd1\x98",
    "\x5b",
    "\x2e",
    "\x3c",
    "\x28",
    "\x2b",
    "\x21",
    "\x26",
    "\xd1\x99",
    "\xd1\x9a",
    "\xd1\x9b",
    "\xd1\x9c",
    "\xef\xbf\xbd",
    "\xd1\x9f",
    "\xd0\xaa",
    "\xe2\x84\x96",
    "\xd0\x82",
    "\x5d",
    "\x24",
    "\x2a",
    "\x29",
    "\x3b",
    "\x5e",
    "\x2d",
    "\x2f",
    "\xd0\x83",
    "\xd0\x81",
    "\xef\xbf\xbd",
    "\xd0\x85",
    "\xd0\x86",
    "\xd0\x87",
    "\xd0\x88",
    "\xd0\x89",
    "\xc2\xa6",
    "\x2c",
    "\x25",
    "\x5f",
    "\x3e",
    "\x3f",
    "\xd0\x8a",
    "\xd0\x8b",
    "\xd0\x8c",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xd0\x8f",
    "\xd1\x8e",
    "\xd0\xb0",
    "\xd0\xb1",
    "\xef\xbf\xbd",
    "\x3a",
    "\x23",
    "\x40",
    "\x27",
    "\x3d",
    "\x22",
    "\xd1\x86",
    "\x61",
    "\x62",
    "\x63",
    "\x64",
    "\x65",
    "\x66",
    "\x67",
    "\x68",
    "\x69",
    "\xd0\xb4",
    "\xd0\xb5",
    "\xd1\x84",
    "\xd0\xb3",
    "\xd1\x85",
    "\xd0\xb8",
    "\xd0\xb9",
    "\x6a",
    "\x6b",
    "\x6c",
    "\x6d",
    "\x6e",
    "\x6f",
    "\x70",
    "\x71",
    "\x72",
    "\xd0\xba",
    "\xd0\xbb",
    "\xd0\xbc",
    "\xd0\xbd",
    "\xd0\xbe",
    "\xd0\xbf",
    "\xd1\x8f",
    "\xef\xbf\xbd",
    "\x73",
    "\x74",
    "\x75",
    "\x76",
    "\x77",
    "\x78",
    "\x79",
    "\x7a",
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
    "\xef\xbf\xbd",
    "\x41",
    "\x42",
    "\x43",
    "\x44",
    "\x45",
    "\x46",
    "\x47",
    "\x48",
    "\x49",
    "\xd0\xa5",
    "\xd0\x98",
    "\xd0\x99",
    "\xd0\x9a",
    "\xd0\x9b",
    "\xd0\x9c",
    "\xef\xbf\xbd",
    "\x4a",
    "\x4b",
    "\x4c",
    "\x4d",
    "\x4e",
    "\x4f",
    "\x50",
    "\x51",
    "\x52",
    "\xd0\x9d",
    "\xd0\x9e",
    "\xd0\x9f",
    "\xd0\xaf",
    "\xd0\xa0",
    "\xd0\xa1",
    "\x5c",
    "\xc2\xa4",
    "\x53",
    "\x54",
    "\x55",
    "\x56",
    "\x57",
    "\x58",
    "\x59",
    "\x5a",
    "\xd0\xa2",
    "\xd0\xa3",
    "\xd0\x96",
    "\xd0\x92",
    "\xd0\xac",
    "\xd0\xab",
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
    "\xd0\x97",
    "\xd0\xa8",
    "\xd0\xad",
    "\xd0\xa9",
    "\xd0\xa7",
    "\xc2\x9f",
);

my %from_ucs4 = (
    0x00000000 => "\x00",
    0x00000001 => "\x01",
    0x00000002 => "\x02",
    0x00000003 => "\x03",
    0x00000004 => "\x37",
    0x00000005 => "\x2d",
    0x00000006 => "\x2e",
    0x00000007 => "\x2f",
    0x00000008 => "\x16",
    0x00000009 => "\x05",
    0x0000000a => "\x25",
    0x0000000b => "\x0b",
    0x0000000c => "\x0c",
    0x0000000d => "\x0d",
    0x0000000e => "\x0e",
    0x0000000f => "\x0f",
    0x00000010 => "\x10",
    0x00000011 => "\x11",
    0x00000012 => "\x12",
    0x00000013 => "\x13",
    0x00000014 => "\x3c",
    0x00000015 => "\x3d",
    0x00000016 => "\x32",
    0x00000017 => "\x26",
    0x00000018 => "\x18",
    0x00000019 => "\x19",
    0x0000001a => "\x3f",
    0x0000001b => "\x27",
    0x0000001c => "\x1c",
    0x0000001d => "\x1d",
    0x0000001e => "\x1e",
    0x0000001f => "\x1f",
    0x00000020 => "\x40",
    0x00000021 => "\x4f",
    0x00000022 => "\x7f",
    0x00000023 => "\x7b",
    0x00000024 => "\x5b",
    0x00000025 => "\x6c",
    0x00000026 => "\x50",
    0x00000027 => "\x7d",
    0x00000028 => "\x4d",
    0x00000029 => "\x5d",
    0x0000002a => "\x5c",
    0x0000002b => "\x4e",
    0x0000002c => "\x6b",
    0x0000002d => "\x60",
    0x0000002e => "\x4b",
    0x0000002f => "\x61",
    0x00000030 => "\xf0",
    0x00000031 => "\xf1",
    0x00000032 => "\xf2",
    0x00000033 => "\xf3",
    0x00000034 => "\xf4",
    0x00000035 => "\xf5",
    0x00000036 => "\xf6",
    0x00000037 => "\xf7",
    0x00000038 => "\xf8",
    0x00000039 => "\xf9",
    0x0000003a => "\x7a",
    0x0000003b => "\x5e",
    0x0000003c => "\x4c",
    0x0000003d => "\x7e",
    0x0000003e => "\x6e",
    0x0000003f => "\x6f",
    0x00000040 => "\x7c",
    0x00000041 => "\xc1",
    0x00000042 => "\xc2",
    0x00000043 => "\xc3",
    0x00000044 => "\xc4",
    0x00000045 => "\xc5",
    0x00000046 => "\xc6",
    0x00000047 => "\xc7",
    0x00000048 => "\xc8",
    0x00000049 => "\xc9",
    0x0000004a => "\xd1",
    0x0000004b => "\xd2",
    0x0000004c => "\xd3",
    0x0000004d => "\xd4",
    0x0000004e => "\xd5",
    0x0000004f => "\xd6",
    0x00000050 => "\xd7",
    0x00000051 => "\xd8",
    0x00000052 => "\xd9",
    0x00000053 => "\xe2",
    0x00000054 => "\xe3",
    0x00000055 => "\xe4",
    0x00000056 => "\xe5",
    0x00000057 => "\xe6",
    0x00000058 => "\xe7",
    0x00000059 => "\xe8",
    0x0000005a => "\xe9",
    0x0000005b => "\x4a",
    0x0000005c => "\xe0",
    0x0000005d => "\x5a",
    0x0000005e => "\x5f",
    0x0000005f => "\x6d",
    0x00000061 => "\x81",
    0x00000062 => "\x82",
    0x00000063 => "\x83",
    0x00000064 => "\x84",
    0x00000065 => "\x85",
    0x00000066 => "\x86",
    0x00000067 => "\x87",
    0x00000068 => "\x88",
    0x00000069 => "\x89",
    0x0000006a => "\x91",
    0x0000006b => "\x92",
    0x0000006c => "\x93",
    0x0000006d => "\x94",
    0x0000006e => "\x95",
    0x0000006f => "\x96",
    0x00000070 => "\x97",
    0x00000071 => "\x98",
    0x00000072 => "\x99",
    0x00000073 => "\xa2",
    0x00000074 => "\xa3",
    0x00000075 => "\xa4",
    0x00000076 => "\xa5",
    0x00000077 => "\xa6",
    0x00000078 => "\xa7",
    0x00000079 => "\xa8",
    0x0000007a => "\xa9",
    0x0000007f => "\x07",
    0x00000080 => "\x20",
    0x00000081 => "\x21",
    0x00000082 => "\x22",
    0x00000083 => "\x23",
    0x00000084 => "\x24",
    0x00000085 => "\x15",
    0x00000086 => "\x06",
    0x00000087 => "\x17",
    0x00000088 => "\x28",
    0x00000089 => "\x29",
    0x0000008a => "\x2a",
    0x0000008b => "\x2b",
    0x0000008c => "\x2c",
    0x0000008d => "\x09",
    0x0000008e => "\x0a",
    0x0000008f => "\x1b",
    0x00000090 => "\x30",
    0x00000091 => "\x31",
    0x00000092 => "\x1a",
    0x00000093 => "\x33",
    0x00000094 => "\x34",
    0x00000095 => "\x35",
    0x00000096 => "\x36",
    0x00000097 => "\x08",
    0x00000098 => "\x38",
    0x00000099 => "\x39",
    0x0000009a => "\x3a",
    0x0000009b => "\x3b",
    0x0000009c => "\x04",
    0x0000009d => "\x14",
    0x0000009e => "\x3e",
    0x0000009f => "\xff",
    0x000000a4 => "\xe1",
    0x000000a6 => "\x6a",
    0x00000401 => "\x63",
    0x00000402 => "\x59",
    0x00000403 => "\x62",
    0x00000405 => "\x65",
    0x00000406 => "\x66",
    0x00000407 => "\x67",
    0x00000408 => "\x68",
    0x00000409 => "\x69",
    0x0000040a => "\x70",
    0x0000040b => "\x71",
    0x0000040c => "\x72",
    0x0000040f => "\x75",
    0x00000410 => "\xb9",
    0x00000411 => "\xba",
    0x00000412 => "\xed",
    0x00000413 => "\xbf",
    0x00000414 => "\xbc",
    0x00000415 => "\xbd",
    0x00000416 => "\xec",
    0x00000417 => "\xfa",
    0x00000418 => "\xcb",
    0x00000419 => "\xcc",
    0x0000041a => "\xcd",
    0x0000041b => "\xce",
    0x0000041c => "\xcf",
    0x0000041d => "\xda",
    0x0000041e => "\xdb",
    0x0000041f => "\xdc",
    0x00000420 => "\xde",
    0x00000421 => "\xdf",
    0x00000422 => "\xea",
    0x00000423 => "\xeb",
    0x00000424 => "\xbe",
    0x00000425 => "\xca",
    0x00000426 => "\xbb",
    0x00000427 => "\xfe",
    0x00000428 => "\xfb",
    0x00000429 => "\xfd",
    0x0000042a => "\x57",
    0x0000042b => "\xef",
    0x0000042c => "\xee",
    0x0000042d => "\xfc",
    0x0000042e => "\xb8",
    0x0000042f => "\xdd",
    0x00000430 => "\x77",
    0x00000431 => "\x78",
    0x00000432 => "\xaf",
    0x00000433 => "\x8d",
    0x00000434 => "\x8a",
    0x00000435 => "\x8b",
    0x00000436 => "\xae",
    0x00000437 => "\xb2",
    0x00000438 => "\x8f",
    0x00000439 => "\x90",
    0x0000043a => "\x9a",
    0x0000043b => "\x9b",
    0x0000043c => "\x9c",
    0x0000043d => "\x9d",
    0x0000043e => "\x9e",
    0x0000043f => "\x9f",
    0x00000440 => "\xaa",
    0x00000441 => "\xab",
    0x00000442 => "\xac",
    0x00000443 => "\xad",
    0x00000444 => "\x8c",
    0x00000445 => "\x8e",
    0x00000446 => "\x80",
    0x00000447 => "\xb6",
    0x00000448 => "\xb3",
    0x00000449 => "\xb5",
    0x0000044a => "\xb7",
    0x0000044b => "\xb1",
    0x0000044c => "\xb0",
    0x0000044d => "\xb4",
    0x0000044e => "\x76",
    0x0000044f => "\xa0",
    0x00000451 => "\x44",
    0x00000452 => "\x42",
    0x00000453 => "\x43",
    0x00000455 => "\x46",
    0x00000456 => "\x47",
    0x00000457 => "\x48",
    0x00000458 => "\x49",
    0x00000459 => "\x51",
    0x0000045a => "\x52",
    0x0000045b => "\x53",
    0x0000045c => "\x54",
    0x0000045f => "\x56",
    0x00002116 => "\x58",
);

sub _recode
{
    if ($_[0]->{_from} eq 'INTERNAL') {
		$_[1] = join '',
	        map $from_ucs4{$_} 
                || (defined $from_ucs4{$_} ? $from_ucs4{$_} : "\x6f"),
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

