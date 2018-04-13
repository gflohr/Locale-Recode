#! /bin/false
# vim: set autoindent shiftwidth=4 tabstop=4:

# Conversion routines for WIN-SAMI-2.
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

package Locale::RecodeData::SAMI_WS2;

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
    0x20ac,
    0xfffd,
    0x010c,
    0x0192,
    0x010d,
    0x01b7,
    0x0292,
    0x01ee,
    0x01ef,
    0x0110,
    0x0160,
    0x2039,
    0x0152,
    0xfffd,
    0xfffd,
    0xfffd,
    0xfffd,
    0x2018,
    0x2019,
    0x201c,
    0x201d,
    0x2022,
    0x2013,
    0x2014,
    0x0111,
    0x01e6,
    0x0161,
    0x203a,
    0x0153,
    0xfffd,
    0xfffd,
    0x0178,
    0x00a0,
    0x01e7,
    0x01e4,
    0x00a3,
    0x00a4,
    0x01e5,
    0x00a6,
    0x00a7,
    0x00a8,
    0x00a9,
    0x021e,
    0x00ab,
    0x00ac,
    0x00ad,
    0x00ae,
    0x021f,
    0x00b0,
    0x00b1,
    0x01e8,
    0x01e9,
    0x00b4,
    0x00b5,
    0x00b6,
    0x00b7,
    0x014a,
    0x014b,
    0x0166,
    0x00bb,
    0x0167,
    0x00bd,
    0x017d,
    0x017e,
    0x00c0,
    0x00c1,
    0x00c2,
    0x00c3,
    0x00c4,
    0x00c5,
    0x00c6,
    0x00c7,
    0x00c8,
    0x00c9,
    0x00ca,
    0x00cb,
    0x00cc,
    0x00cd,
    0x00ce,
    0x00cf,
    0x00d0,
    0x00d1,
    0x00d2,
    0x00d3,
    0x00d4,
    0x00d5,
    0x00d6,
    0x00d7,
    0x00d8,
    0x00d9,
    0x00da,
    0x00db,
    0x00dc,
    0x00dd,
    0x00de,
    0x00df,
    0x00e0,
    0x00e1,
    0x00e2,
    0x00e3,
    0x00e4,
    0x00e5,
    0x00e6,
    0x00e7,
    0x00e8,
    0x00e9,
    0x00ea,
    0x00eb,
    0x00ec,
    0x00ed,
    0x00ee,
    0x00ef,
    0x00f0,
    0x00f1,
    0x00f2,
    0x00f3,
    0x00f4,
    0x00f5,
    0x00f6,
    0x00f7,
    0x00f8,
    0x00f9,
    0x00fa,
    0x00fb,
    0x00fc,
    0x00fd,
    0x00fe,
    0x00ff,
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
    "\xe2\x82\xac",
    "\xef\xbf\xbd",
    "\xc4\x8c",
    "\xc6\x92",
    "\xc4\x8d",
    "\xc6\xb7",
    "\xca\x92",
    "\xc7\xae",
    "\xc7\xaf",
    "\xc4\x90",
    "\xc5\xa0",
    "\xe2\x80\xb9",
    "\xc5\x92",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xe2\x80\x98",
    "\xe2\x80\x99",
    "\xe2\x80\x9c",
    "\xe2\x80\x9d",
    "\xe2\x80\xa2",
    "\xe2\x80\x93",
    "\xe2\x80\x94",
    "\xc4\x91",
    "\xc7\xa6",
    "\xc5\xa1",
    "\xe2\x80\xba",
    "\xc5\x93",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xc5\xb8",
    "\xc2\xa0",
    "\xc7\xa7",
    "\xc7\xa4",
    "\xc2\xa3",
    "\xc2\xa4",
    "\xc7\xa5",
    "\xc2\xa6",
    "\xc2\xa7",
    "\xc2\xa8",
    "\xc2\xa9",
    "\xc8\x9e",
    "\xc2\xab",
    "\xc2\xac",
    "\xc2\xad",
    "\xc2\xae",
    "\xc8\x9f",
    "\xc2\xb0",
    "\xc2\xb1",
    "\xc7\xa8",
    "\xc7\xa9",
    "\xc2\xb4",
    "\xc2\xb5",
    "\xc2\xb6",
    "\xc2\xb7",
    "\xc5\x8a",
    "\xc5\x8b",
    "\xc5\xa6",
    "\xc2\xbb",
    "\xc5\xa7",
    "\xc2\xbd",
    "\xc5\xbd",
    "\xc5\xbe",
    "\xc3\x80",
    "\xc3\x81",
    "\xc3\x82",
    "\xc3\x83",
    "\xc3\x84",
    "\xc3\x85",
    "\xc3\x86",
    "\xc3\x87",
    "\xc3\x88",
    "\xc3\x89",
    "\xc3\x8a",
    "\xc3\x8b",
    "\xc3\x8c",
    "\xc3\x8d",
    "\xc3\x8e",
    "\xc3\x8f",
    "\xc3\x90",
    "\xc3\x91",
    "\xc3\x92",
    "\xc3\x93",
    "\xc3\x94",
    "\xc3\x95",
    "\xc3\x96",
    "\xc3\x97",
    "\xc3\x98",
    "\xc3\x99",
    "\xc3\x9a",
    "\xc3\x9b",
    "\xc3\x9c",
    "\xc3\x9d",
    "\xc3\x9e",
    "\xc3\x9f",
    "\xc3\xa0",
    "\xc3\xa1",
    "\xc3\xa2",
    "\xc3\xa3",
    "\xc3\xa4",
    "\xc3\xa5",
    "\xc3\xa6",
    "\xc3\xa7",
    "\xc3\xa8",
    "\xc3\xa9",
    "\xc3\xaa",
    "\xc3\xab",
    "\xc3\xac",
    "\xc3\xad",
    "\xc3\xae",
    "\xc3\xaf",
    "\xc3\xb0",
    "\xc3\xb1",
    "\xc3\xb2",
    "\xc3\xb3",
    "\xc3\xb4",
    "\xc3\xb5",
    "\xc3\xb6",
    "\xc3\xb7",
    "\xc3\xb8",
    "\xc3\xb9",
    "\xc3\xba",
    "\xc3\xbb",
    "\xc3\xbc",
    "\xc3\xbd",
    "\xc3\xbe",
    "\xc3\xbf",
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
    0x000000a0 => "\xa0",
    0x000000a3 => "\xa3",
    0x000000a4 => "\xa4",
    0x000000a6 => "\xa6",
    0x000000a7 => "\xa7",
    0x000000a8 => "\xa8",
    0x000000a9 => "\xa9",
    0x000000ab => "\xab",
    0x000000ac => "\xac",
    0x000000ad => "\xad",
    0x000000ae => "\xae",
    0x000000b0 => "\xb0",
    0x000000b1 => "\xb1",
    0x000000b4 => "\xb4",
    0x000000b5 => "\xb5",
    0x000000b6 => "\xb6",
    0x000000b7 => "\xb7",
    0x000000bb => "\xbb",
    0x000000bd => "\xbd",
    0x000000c0 => "\xc0",
    0x000000c1 => "\xc1",
    0x000000c2 => "\xc2",
    0x000000c3 => "\xc3",
    0x000000c4 => "\xc4",
    0x000000c5 => "\xc5",
    0x000000c6 => "\xc6",
    0x000000c7 => "\xc7",
    0x000000c8 => "\xc8",
    0x000000c9 => "\xc9",
    0x000000ca => "\xca",
    0x000000cb => "\xcb",
    0x000000cc => "\xcc",
    0x000000cd => "\xcd",
    0x000000ce => "\xce",
    0x000000cf => "\xcf",
    0x000000d0 => "\xd0",
    0x000000d1 => "\xd1",
    0x000000d2 => "\xd2",
    0x000000d3 => "\xd3",
    0x000000d4 => "\xd4",
    0x000000d5 => "\xd5",
    0x000000d6 => "\xd6",
    0x000000d7 => "\xd7",
    0x000000d8 => "\xd8",
    0x000000d9 => "\xd9",
    0x000000da => "\xda",
    0x000000db => "\xdb",
    0x000000dc => "\xdc",
    0x000000dd => "\xdd",
    0x000000de => "\xde",
    0x000000df => "\xdf",
    0x000000e0 => "\xe0",
    0x000000e1 => "\xe1",
    0x000000e2 => "\xe2",
    0x000000e3 => "\xe3",
    0x000000e4 => "\xe4",
    0x000000e5 => "\xe5",
    0x000000e6 => "\xe6",
    0x000000e7 => "\xe7",
    0x000000e8 => "\xe8",
    0x000000e9 => "\xe9",
    0x000000ea => "\xea",
    0x000000eb => "\xeb",
    0x000000ec => "\xec",
    0x000000ed => "\xed",
    0x000000ee => "\xee",
    0x000000ef => "\xef",
    0x000000f0 => "\xf0",
    0x000000f1 => "\xf1",
    0x000000f2 => "\xf2",
    0x000000f3 => "\xf3",
    0x000000f4 => "\xf4",
    0x000000f5 => "\xf5",
    0x000000f6 => "\xf6",
    0x000000f7 => "\xf7",
    0x000000f8 => "\xf8",
    0x000000f9 => "\xf9",
    0x000000fa => "\xfa",
    0x000000fb => "\xfb",
    0x000000fc => "\xfc",
    0x000000fd => "\xfd",
    0x000000fe => "\xfe",
    0x000000ff => "\xff",
    0x0000010c => "\x82",
    0x0000010d => "\x84",
    0x00000110 => "\x89",
    0x00000111 => "\x98",
    0x0000014a => "\xb8",
    0x0000014b => "\xb9",
    0x00000152 => "\x8c",
    0x00000153 => "\x9c",
    0x00000160 => "\x8a",
    0x00000161 => "\x9a",
    0x00000166 => "\xba",
    0x00000167 => "\xbc",
    0x00000178 => "\x9f",
    0x0000017d => "\xbe",
    0x0000017e => "\xbf",
    0x00000192 => "\x83",
    0x000001b7 => "\x85",
    0x000001e4 => "\xa2",
    0x000001e5 => "\xa5",
    0x000001e6 => "\x99",
    0x000001e7 => "\xa1",
    0x000001e8 => "\xb2",
    0x000001e9 => "\xb3",
    0x000001ee => "\x87",
    0x000001ef => "\x88",
    0x0000021e => "\xaa",
    0x0000021f => "\xaf",
    0x00000292 => "\x86",
    0x00002013 => "\x96",
    0x00002014 => "\x97",
    0x00002018 => "\x91",
    0x00002019 => "\x92",
    0x0000201c => "\x93",
    0x0000201d => "\x94",
    0x00002022 => "\x95",
    0x00002039 => "\x8b",
    0x0000203a => "\x9b",
    0x000020ac => "\x80",
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

