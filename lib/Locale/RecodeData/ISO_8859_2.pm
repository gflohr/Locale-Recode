#! /bin/false
# vim: set autoindent shiftwidth=4 tabstop=4:

# Conversion routines for ISO-8859-2.
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

package Locale::RecodeData::ISO_8859_2;

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
    0x0080,
    0x0081,
    0x0082,
    0x0083,
    0x0084,
    0x0085,
    0x0086,
    0x0087,
    0x0088,
    0x0089,
    0x008a,
    0x008b,
    0x008c,
    0x008d,
    0x008e,
    0x008f,
    0x0090,
    0x0091,
    0x0092,
    0x0093,
    0x0094,
    0x0095,
    0x0096,
    0x0097,
    0x0098,
    0x0099,
    0x009a,
    0x009b,
    0x009c,
    0x009d,
    0x009e,
    0x009f,
    0x00a0,
    0x0104,
    0x02d8,
    0x0141,
    0x00a4,
    0x013d,
    0x015a,
    0x00a7,
    0x00a8,
    0x0160,
    0x015e,
    0x0164,
    0x0179,
    0x00ad,
    0x017d,
    0x017b,
    0x00b0,
    0x0105,
    0x02db,
    0x0142,
    0x00b4,
    0x013e,
    0x015b,
    0x02c7,
    0x00b8,
    0x0161,
    0x015f,
    0x0165,
    0x017a,
    0x02dd,
    0x017e,
    0x017c,
    0x0154,
    0x00c1,
    0x00c2,
    0x0102,
    0x00c4,
    0x0139,
    0x0106,
    0x00c7,
    0x010c,
    0x00c9,
    0x0118,
    0x00cb,
    0x011a,
    0x00cd,
    0x00ce,
    0x010e,
    0x0110,
    0x0143,
    0x0147,
    0x00d3,
    0x00d4,
    0x0150,
    0x00d6,
    0x00d7,
    0x0158,
    0x016e,
    0x00da,
    0x0170,
    0x00dc,
    0x00dd,
    0x0162,
    0x00df,
    0x0155,
    0x00e1,
    0x00e2,
    0x0103,
    0x00e4,
    0x013a,
    0x0107,
    0x00e7,
    0x010d,
    0x00e9,
    0x0119,
    0x00eb,
    0x011b,
    0x00ed,
    0x00ee,
    0x010f,
    0x0111,
    0x0144,
    0x0148,
    0x00f3,
    0x00f4,
    0x0151,
    0x00f6,
    0x00f7,
    0x0159,
    0x016f,
    0x00fa,
    0x0171,
    0x00fc,
    0x00fd,
    0x0163,
    0x02d9,
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
    "\xc2\x80",
    "\xc2\x81",
    "\xc2\x82",
    "\xc2\x83",
    "\xc2\x84",
    "\xc2\x85",
    "\xc2\x86",
    "\xc2\x87",
    "\xc2\x88",
    "\xc2\x89",
    "\xc2\x8a",
    "\xc2\x8b",
    "\xc2\x8c",
    "\xc2\x8d",
    "\xc2\x8e",
    "\xc2\x8f",
    "\xc2\x90",
    "\xc2\x91",
    "\xc2\x92",
    "\xc2\x93",
    "\xc2\x94",
    "\xc2\x95",
    "\xc2\x96",
    "\xc2\x97",
    "\xc2\x98",
    "\xc2\x99",
    "\xc2\x9a",
    "\xc2\x9b",
    "\xc2\x9c",
    "\xc2\x9d",
    "\xc2\x9e",
    "\xc2\x9f",
    "\xc2\xa0",
    "\xc4\x84",
    "\xcb\x98",
    "\xc5\x81",
    "\xc2\xa4",
    "\xc4\xbd",
    "\xc5\x9a",
    "\xc2\xa7",
    "\xc2\xa8",
    "\xc5\xa0",
    "\xc5\x9e",
    "\xc5\xa4",
    "\xc5\xb9",
    "\xc2\xad",
    "\xc5\xbd",
    "\xc5\xbb",
    "\xc2\xb0",
    "\xc4\x85",
    "\xcb\x9b",
    "\xc5\x82",
    "\xc2\xb4",
    "\xc4\xbe",
    "\xc5\x9b",
    "\xcb\x87",
    "\xc2\xb8",
    "\xc5\xa1",
    "\xc5\x9f",
    "\xc5\xa5",
    "\xc5\xba",
    "\xcb\x9d",
    "\xc5\xbe",
    "\xc5\xbc",
    "\xc5\x94",
    "\xc3\x81",
    "\xc3\x82",
    "\xc4\x82",
    "\xc3\x84",
    "\xc4\xb9",
    "\xc4\x86",
    "\xc3\x87",
    "\xc4\x8c",
    "\xc3\x89",
    "\xc4\x98",
    "\xc3\x8b",
    "\xc4\x9a",
    "\xc3\x8d",
    "\xc3\x8e",
    "\xc4\x8e",
    "\xc4\x90",
    "\xc5\x83",
    "\xc5\x87",
    "\xc3\x93",
    "\xc3\x94",
    "\xc5\x90",
    "\xc3\x96",
    "\xc3\x97",
    "\xc5\x98",
    "\xc5\xae",
    "\xc3\x9a",
    "\xc5\xb0",
    "\xc3\x9c",
    "\xc3\x9d",
    "\xc5\xa2",
    "\xc3\x9f",
    "\xc5\x95",
    "\xc3\xa1",
    "\xc3\xa2",
    "\xc4\x83",
    "\xc3\xa4",
    "\xc4\xba",
    "\xc4\x87",
    "\xc3\xa7",
    "\xc4\x8d",
    "\xc3\xa9",
    "\xc4\x99",
    "\xc3\xab",
    "\xc4\x9b",
    "\xc3\xad",
    "\xc3\xae",
    "\xc4\x8f",
    "\xc4\x91",
    "\xc5\x84",
    "\xc5\x88",
    "\xc3\xb3",
    "\xc3\xb4",
    "\xc5\x91",
    "\xc3\xb6",
    "\xc3\xb7",
    "\xc5\x99",
    "\xc5\xaf",
    "\xc3\xba",
    "\xc5\xb1",
    "\xc3\xbc",
    "\xc3\xbd",
    "\xc5\xa3",
    "\xcb\x99",
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
    0x00000080 => "\x80",
    0x00000081 => "\x81",
    0x00000082 => "\x82",
    0x00000083 => "\x83",
    0x00000084 => "\x84",
    0x00000085 => "\x85",
    0x00000086 => "\x86",
    0x00000087 => "\x87",
    0x00000088 => "\x88",
    0x00000089 => "\x89",
    0x0000008a => "\x8a",
    0x0000008b => "\x8b",
    0x0000008c => "\x8c",
    0x0000008d => "\x8d",
    0x0000008e => "\x8e",
    0x0000008f => "\x8f",
    0x00000090 => "\x90",
    0x00000091 => "\x91",
    0x00000092 => "\x92",
    0x00000093 => "\x93",
    0x00000094 => "\x94",
    0x00000095 => "\x95",
    0x00000096 => "\x96",
    0x00000097 => "\x97",
    0x00000098 => "\x98",
    0x00000099 => "\x99",
    0x0000009a => "\x9a",
    0x0000009b => "\x9b",
    0x0000009c => "\x9c",
    0x0000009d => "\x9d",
    0x0000009e => "\x9e",
    0x0000009f => "\x9f",
    0x000000a0 => "\xa0",
    0x000000a4 => "\xa4",
    0x000000a7 => "\xa7",
    0x000000a8 => "\xa8",
    0x000000ad => "\xad",
    0x000000b0 => "\xb0",
    0x000000b4 => "\xb4",
    0x000000b8 => "\xb8",
    0x000000c1 => "\xc1",
    0x000000c2 => "\xc2",
    0x000000c4 => "\xc4",
    0x000000c7 => "\xc7",
    0x000000c9 => "\xc9",
    0x000000cb => "\xcb",
    0x000000cd => "\xcd",
    0x000000ce => "\xce",
    0x000000d3 => "\xd3",
    0x000000d4 => "\xd4",
    0x000000d6 => "\xd6",
    0x000000d7 => "\xd7",
    0x000000da => "\xda",
    0x000000dc => "\xdc",
    0x000000dd => "\xdd",
    0x000000df => "\xdf",
    0x000000e1 => "\xe1",
    0x000000e2 => "\xe2",
    0x000000e4 => "\xe4",
    0x000000e7 => "\xe7",
    0x000000e9 => "\xe9",
    0x000000eb => "\xeb",
    0x000000ed => "\xed",
    0x000000ee => "\xee",
    0x000000f3 => "\xf3",
    0x000000f4 => "\xf4",
    0x000000f6 => "\xf6",
    0x000000f7 => "\xf7",
    0x000000fa => "\xfa",
    0x000000fc => "\xfc",
    0x000000fd => "\xfd",
    0x00000102 => "\xc3",
    0x00000103 => "\xe3",
    0x00000104 => "\xa1",
    0x00000105 => "\xb1",
    0x00000106 => "\xc6",
    0x00000107 => "\xe6",
    0x0000010c => "\xc8",
    0x0000010d => "\xe8",
    0x0000010e => "\xcf",
    0x0000010f => "\xef",
    0x00000110 => "\xd0",
    0x00000111 => "\xf0",
    0x00000118 => "\xca",
    0x00000119 => "\xea",
    0x0000011a => "\xcc",
    0x0000011b => "\xec",
    0x00000139 => "\xc5",
    0x0000013a => "\xe5",
    0x0000013d => "\xa5",
    0x0000013e => "\xb5",
    0x00000141 => "\xa3",
    0x00000142 => "\xb3",
    0x00000143 => "\xd1",
    0x00000144 => "\xf1",
    0x00000147 => "\xd2",
    0x00000148 => "\xf2",
    0x00000150 => "\xd5",
    0x00000151 => "\xf5",
    0x00000154 => "\xc0",
    0x00000155 => "\xe0",
    0x00000158 => "\xd8",
    0x00000159 => "\xf8",
    0x0000015a => "\xa6",
    0x0000015b => "\xb6",
    0x0000015e => "\xaa",
    0x0000015f => "\xba",
    0x00000160 => "\xa9",
    0x00000161 => "\xb9",
    0x00000162 => "\xde",
    0x00000163 => "\xfe",
    0x00000164 => "\xab",
    0x00000165 => "\xbb",
    0x0000016e => "\xd9",
    0x0000016f => "\xf9",
    0x00000170 => "\xdb",
    0x00000171 => "\xfb",
    0x00000179 => "\xac",
    0x0000017a => "\xbc",
    0x0000017b => "\xaf",
    0x0000017c => "\xbf",
    0x0000017d => "\xae",
    0x0000017e => "\xbe",
    0x000002c7 => "\xb7",
    0x000002d8 => "\xa2",
    0x000002d9 => "\xff",
    0x000002db => "\xb2",
    0x000002dd => "\xbd",
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

