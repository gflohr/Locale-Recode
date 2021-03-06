#! /bin/false
# vim: set autoindent shiftwidth=4 tabstop=4:

# Conversion routines for VISCII.
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

package Locale::RecodeData::VISCII;

use strict;

require Locale::RecodeData;
use base qw(Locale::RecodeData);

my @to_ucs4 = (
    0x0000,
    0x0001,
    0x1eb2,
    0x0003,
    0x0004,
    0x1eb4,
    0x1eaa,
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
    0x1ef6,
    0x0015,
    0x0016,
    0x0017,
    0x0018,
    0x1ef8,
    0x001a,
    0x001b,
    0x001c,
    0x001d,
    0x1ef4,
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
    0x1ea0,
    0x1eae,
    0x1eb0,
    0x1eb6,
    0x1ea4,
    0x1ea6,
    0x1ea8,
    0x1eac,
    0x1ebc,
    0x1eb8,
    0x1ebe,
    0x1ec0,
    0x1ec2,
    0x1ec4,
    0x1ec6,
    0x1ed0,
    0x1ed2,
    0x1ed4,
    0x1ed6,
    0x1ed8,
    0x1ee2,
    0x1eda,
    0x1edc,
    0x1ede,
    0x1eca,
    0x1ece,
    0x1ecc,
    0x1ec8,
    0x1ee6,
    0x0168,
    0x1ee4,
    0x1ef2,
    0x00d5,
    0x1eaf,
    0x1eb1,
    0x1eb7,
    0x1ea5,
    0x1ea7,
    0x1ea9,
    0x1ead,
    0x1ebd,
    0x1eb9,
    0x1ebf,
    0x1ec1,
    0x1ec3,
    0x1ec5,
    0x1ec7,
    0x1ed1,
    0x1ed3,
    0x1ed5,
    0x1ed7,
    0x1ee0,
    0x01a0,
    0x1ed9,
    0x1edd,
    0x1edf,
    0x1ecb,
    0x1ef0,
    0x1ee8,
    0x1eea,
    0x1eec,
    0x01a1,
    0x1edb,
    0x01af,
    0x00c0,
    0x00c1,
    0x00c2,
    0x00c3,
    0x1ea2,
    0x0102,
    0x1eb3,
    0x1eb5,
    0x00c8,
    0x00c9,
    0x00ca,
    0x1eba,
    0x00cc,
    0x00cd,
    0x0128,
    0x1ef3,
    0x0110,
    0x1ee9,
    0x00d2,
    0x00d3,
    0x00d4,
    0x1ea1,
    0x1ef7,
    0x1eeb,
    0x1eed,
    0x00d9,
    0x00da,
    0x1ef9,
    0x1ef5,
    0x00dd,
    0x1ee1,
    0x01b0,
    0x00e0,
    0x00e1,
    0x00e2,
    0x00e3,
    0x1ea3,
    0x0103,
    0x1eef,
    0x1eab,
    0x00e8,
    0x00e9,
    0x00ea,
    0x1ebb,
    0x00ec,
    0x00ed,
    0x0129,
    0x1ec9,
    0x0111,
    0x1ef1,
    0x00f2,
    0x00f3,
    0x00f4,
    0x00f5,
    0x1ecf,
    0x1ecd,
    0x1ee5,
    0x00f9,
    0x00fa,
    0x0169,
    0x1ee7,
    0x00fd,
    0x1ee3,
    0x1eee,
);

my @to_utf8 = (
    "\x00",
    "\x01",
    "\xe1\xba\xb2",
    "\x03",
    "\x04",
    "\xe1\xba\xb4",
    "\xe1\xba\xaa",
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
    "\xe1\xbb\xb6",
    "\x15",
    "\x16",
    "\x17",
    "\x18",
    "\xe1\xbb\xb8",
    "\x1a",
    "\x1b",
    "\x1c",
    "\x1d",
    "\xe1\xbb\xb4",
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
    "\xe1\xba\xa0",
    "\xe1\xba\xae",
    "\xe1\xba\xb0",
    "\xe1\xba\xb6",
    "\xe1\xba\xa4",
    "\xe1\xba\xa6",
    "\xe1\xba\xa8",
    "\xe1\xba\xac",
    "\xe1\xba\xbc",
    "\xe1\xba\xb8",
    "\xe1\xba\xbe",
    "\xe1\xbb\x80",
    "\xe1\xbb\x82",
    "\xe1\xbb\x84",
    "\xe1\xbb\x86",
    "\xe1\xbb\x90",
    "\xe1\xbb\x92",
    "\xe1\xbb\x94",
    "\xe1\xbb\x96",
    "\xe1\xbb\x98",
    "\xe1\xbb\xa2",
    "\xe1\xbb\x9a",
    "\xe1\xbb\x9c",
    "\xe1\xbb\x9e",
    "\xe1\xbb\x8a",
    "\xe1\xbb\x8e",
    "\xe1\xbb\x8c",
    "\xe1\xbb\x88",
    "\xe1\xbb\xa6",
    "\xc5\xa8",
    "\xe1\xbb\xa4",
    "\xe1\xbb\xb2",
    "\xc3\x95",
    "\xe1\xba\xaf",
    "\xe1\xba\xb1",
    "\xe1\xba\xb7",
    "\xe1\xba\xa5",
    "\xe1\xba\xa7",
    "\xe1\xba\xa9",
    "\xe1\xba\xad",
    "\xe1\xba\xbd",
    "\xe1\xba\xb9",
    "\xe1\xba\xbf",
    "\xe1\xbb\x81",
    "\xe1\xbb\x83",
    "\xe1\xbb\x85",
    "\xe1\xbb\x87",
    "\xe1\xbb\x91",
    "\xe1\xbb\x93",
    "\xe1\xbb\x95",
    "\xe1\xbb\x97",
    "\xe1\xbb\xa0",
    "\xc6\xa0",
    "\xe1\xbb\x99",
    "\xe1\xbb\x9d",
    "\xe1\xbb\x9f",
    "\xe1\xbb\x8b",
    "\xe1\xbb\xb0",
    "\xe1\xbb\xa8",
    "\xe1\xbb\xaa",
    "\xe1\xbb\xac",
    "\xc6\xa1",
    "\xe1\xbb\x9b",
    "\xc6\xaf",
    "\xc3\x80",
    "\xc3\x81",
    "\xc3\x82",
    "\xc3\x83",
    "\xe1\xba\xa2",
    "\xc4\x82",
    "\xe1\xba\xb3",
    "\xe1\xba\xb5",
    "\xc3\x88",
    "\xc3\x89",
    "\xc3\x8a",
    "\xe1\xba\xba",
    "\xc3\x8c",
    "\xc3\x8d",
    "\xc4\xa8",
    "\xe1\xbb\xb3",
    "\xc4\x90",
    "\xe1\xbb\xa9",
    "\xc3\x92",
    "\xc3\x93",
    "\xc3\x94",
    "\xe1\xba\xa1",
    "\xe1\xbb\xb7",
    "\xe1\xbb\xab",
    "\xe1\xbb\xad",
    "\xc3\x99",
    "\xc3\x9a",
    "\xe1\xbb\xb9",
    "\xe1\xbb\xb5",
    "\xc3\x9d",
    "\xe1\xbb\xa1",
    "\xc6\xb0",
    "\xc3\xa0",
    "\xc3\xa1",
    "\xc3\xa2",
    "\xc3\xa3",
    "\xe1\xba\xa3",
    "\xc4\x83",
    "\xe1\xbb\xaf",
    "\xe1\xba\xab",
    "\xc3\xa8",
    "\xc3\xa9",
    "\xc3\xaa",
    "\xe1\xba\xbb",
    "\xc3\xac",
    "\xc3\xad",
    "\xc4\xa9",
    "\xe1\xbb\x89",
    "\xc4\x91",
    "\xe1\xbb\xb1",
    "\xc3\xb2",
    "\xc3\xb3",
    "\xc3\xb4",
    "\xc3\xb5",
    "\xe1\xbb\x8f",
    "\xe1\xbb\x8d",
    "\xe1\xbb\xa5",
    "\xc3\xb9",
    "\xc3\xba",
    "\xc5\xa9",
    "\xe1\xbb\xa7",
    "\xc3\xbd",
    "\xe1\xbb\xa3",
    "\xe1\xbb\xae",
);

my %from_ucs4 = (
    0x00000000 => "\x00",
    0x00000001 => "\x01",
    0x00000003 => "\x03",
    0x00000004 => "\x04",
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
    0x00000015 => "\x15",
    0x00000016 => "\x16",
    0x00000017 => "\x17",
    0x00000018 => "\x18",
    0x0000001a => "\x1a",
    0x0000001b => "\x1b",
    0x0000001c => "\x1c",
    0x0000001d => "\x1d",
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
    0x000000c0 => "\xc0",
    0x000000c1 => "\xc1",
    0x000000c2 => "\xc2",
    0x000000c3 => "\xc3",
    0x000000c8 => "\xc8",
    0x000000c9 => "\xc9",
    0x000000ca => "\xca",
    0x000000cc => "\xcc",
    0x000000cd => "\xcd",
    0x000000d2 => "\xd2",
    0x000000d3 => "\xd3",
    0x000000d4 => "\xd4",
    0x000000d5 => "\xa0",
    0x000000d9 => "\xd9",
    0x000000da => "\xda",
    0x000000dd => "\xdd",
    0x000000e0 => "\xe0",
    0x000000e1 => "\xe1",
    0x000000e2 => "\xe2",
    0x000000e3 => "\xe3",
    0x000000e8 => "\xe8",
    0x000000e9 => "\xe9",
    0x000000ea => "\xea",
    0x000000ec => "\xec",
    0x000000ed => "\xed",
    0x000000f2 => "\xf2",
    0x000000f3 => "\xf3",
    0x000000f4 => "\xf4",
    0x000000f5 => "\xf5",
    0x000000f9 => "\xf9",
    0x000000fa => "\xfa",
    0x000000fd => "\xfd",
    0x00000102 => "\xc5",
    0x00000103 => "\xe5",
    0x00000110 => "\xd0",
    0x00000111 => "\xf0",
    0x00000128 => "\xce",
    0x00000129 => "\xee",
    0x00000168 => "\x9d",
    0x00000169 => "\xfb",
    0x000001a0 => "\xb4",
    0x000001a1 => "\xbd",
    0x000001af => "\xbf",
    0x000001b0 => "\xdf",
    0x00001ea0 => "\x80",
    0x00001ea1 => "\xd5",
    0x00001ea2 => "\xc4",
    0x00001ea3 => "\xe4",
    0x00001ea4 => "\x84",
    0x00001ea5 => "\xa4",
    0x00001ea6 => "\x85",
    0x00001ea7 => "\xa5",
    0x00001ea8 => "\x86",
    0x00001ea9 => "\xa6",
    0x00001eaa => "\x06",
    0x00001eab => "\xe7",
    0x00001eac => "\x87",
    0x00001ead => "\xa7",
    0x00001eae => "\x81",
    0x00001eaf => "\xa1",
    0x00001eb0 => "\x82",
    0x00001eb1 => "\xa2",
    0x00001eb2 => "\x02",
    0x00001eb3 => "\xc6",
    0x00001eb4 => "\x05",
    0x00001eb5 => "\xc7",
    0x00001eb6 => "\x83",
    0x00001eb7 => "\xa3",
    0x00001eb8 => "\x89",
    0x00001eb9 => "\xa9",
    0x00001eba => "\xcb",
    0x00001ebb => "\xeb",
    0x00001ebc => "\x88",
    0x00001ebd => "\xa8",
    0x00001ebe => "\x8a",
    0x00001ebf => "\xaa",
    0x00001ec0 => "\x8b",
    0x00001ec1 => "\xab",
    0x00001ec2 => "\x8c",
    0x00001ec3 => "\xac",
    0x00001ec4 => "\x8d",
    0x00001ec5 => "\xad",
    0x00001ec6 => "\x8e",
    0x00001ec7 => "\xae",
    0x00001ec8 => "\x9b",
    0x00001ec9 => "\xef",
    0x00001eca => "\x98",
    0x00001ecb => "\xb8",
    0x00001ecc => "\x9a",
    0x00001ecd => "\xf7",
    0x00001ece => "\x99",
    0x00001ecf => "\xf6",
    0x00001ed0 => "\x8f",
    0x00001ed1 => "\xaf",
    0x00001ed2 => "\x90",
    0x00001ed3 => "\xb0",
    0x00001ed4 => "\x91",
    0x00001ed5 => "\xb1",
    0x00001ed6 => "\x92",
    0x00001ed7 => "\xb2",
    0x00001ed8 => "\x93",
    0x00001ed9 => "\xb5",
    0x00001eda => "\x95",
    0x00001edb => "\xbe",
    0x00001edc => "\x96",
    0x00001edd => "\xb6",
    0x00001ede => "\x97",
    0x00001edf => "\xb7",
    0x00001ee0 => "\xb3",
    0x00001ee1 => "\xde",
    0x00001ee2 => "\x94",
    0x00001ee3 => "\xfe",
    0x00001ee4 => "\x9e",
    0x00001ee5 => "\xf8",
    0x00001ee6 => "\x9c",
    0x00001ee7 => "\xfc",
    0x00001ee8 => "\xba",
    0x00001ee9 => "\xd1",
    0x00001eea => "\xbb",
    0x00001eeb => "\xd7",
    0x00001eec => "\xbc",
    0x00001eed => "\xd8",
    0x00001eee => "\xff",
    0x00001eef => "\xe6",
    0x00001ef0 => "\xb9",
    0x00001ef1 => "\xf1",
    0x00001ef2 => "\x9f",
    0x00001ef3 => "\xcf",
    0x00001ef4 => "\x1e",
    0x00001ef5 => "\xdc",
    0x00001ef6 => "\x14",
    0x00001ef7 => "\xd6",
    0x00001ef8 => "\x19",
    0x00001ef9 => "\xdb",
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

