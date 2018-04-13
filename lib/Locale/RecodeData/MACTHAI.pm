#! /bin/false
# vim: set autoindent shiftwidth=4 tabstop=4:

# Conversion routines for MACTHAI.
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

package Locale::RecodeData::MACTHAI;

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
    0x00ab,
    0x00bb,
    0x2026,
    0xf88c,
    0xf88f,
    0xf892,
    0xf895,
    0xf898,
    0xf88b,
    0xf88e,
    0xf891,
    0xf894,
    0xf897,
    0x201c,
    0x201d,
    0xf899,
    0xfffd,
    0x2022,
    0xf884,
    0xf889,
    0xf885,
    0xf886,
    0xf887,
    0xf888,
    0xf88a,
    0xf88d,
    0xf890,
    0xf893,
    0xf896,
    0x2018,
    0x2019,
    0xfffd,
    0x00a0,
    0x0e01,
    0x0e02,
    0x0e03,
    0x0e04,
    0x0e05,
    0x0e06,
    0x0e07,
    0x0e08,
    0x0e09,
    0x0e0a,
    0x0e0b,
    0x0e0c,
    0x0e0d,
    0x0e0e,
    0x0e0f,
    0x0e10,
    0x0e11,
    0x0e12,
    0x0e13,
    0x0e14,
    0x0e15,
    0x0e16,
    0x0e17,
    0x0e18,
    0x0e19,
    0x0e1a,
    0x0e1b,
    0x0e1c,
    0x0e1d,
    0x0e1e,
    0x0e1f,
    0x0e20,
    0x0e21,
    0x0e22,
    0x0e23,
    0x0e24,
    0x0e25,
    0x0e26,
    0x0e27,
    0x0e28,
    0x0e29,
    0x0e2a,
    0x0e2b,
    0x0e2c,
    0x0e2d,
    0x0e2e,
    0x0e2f,
    0x0e30,
    0x0e31,
    0x0e32,
    0x0e33,
    0x0e34,
    0x0e35,
    0x0e36,
    0x0e37,
    0x0e38,
    0x0e39,
    0x0e3a,
    0xfeff,
    0x200b,
    0x2013,
    0x2014,
    0x0e3f,
    0x0e40,
    0x0e41,
    0x0e42,
    0x0e43,
    0x0e44,
    0x0e45,
    0x0e46,
    0x0e47,
    0x0e48,
    0x0e49,
    0x0e4a,
    0x0e4b,
    0x0e4c,
    0x0e4d,
    0x2122,
    0x0e4f,
    0x0e50,
    0x0e51,
    0x0e52,
    0x0e53,
    0x0e54,
    0x0e55,
    0x0e56,
    0x0e57,
    0x0e58,
    0x0e59,
    0x00ae,
    0x00a9,
    0xfffd,
    0xfffd,
    0xfffd,
    0xfffd,
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
    "\xc2\xab",
    "\xc2\xbb",
    "\xe2\x80\xa6",
    "\xef\xa2\x8c",
    "\xef\xa2\x8f",
    "\xef\xa2\x92",
    "\xef\xa2\x95",
    "\xef\xa2\x98",
    "\xef\xa2\x8b",
    "\xef\xa2\x8e",
    "\xef\xa2\x91",
    "\xef\xa2\x94",
    "\xef\xa2\x97",
    "\xe2\x80\x9c",
    "\xe2\x80\x9d",
    "\xef\xa2\x99",
    "\xef\xbf\xbd",
    "\xe2\x80\xa2",
    "\xef\xa2\x84",
    "\xef\xa2\x89",
    "\xef\xa2\x85",
    "\xef\xa2\x86",
    "\xef\xa2\x87",
    "\xef\xa2\x88",
    "\xef\xa2\x8a",
    "\xef\xa2\x8d",
    "\xef\xa2\x90",
    "\xef\xa2\x93",
    "\xef\xa2\x96",
    "\xe2\x80\x98",
    "\xe2\x80\x99",
    "\xef\xbf\xbd",
    "\xc2\xa0",
    "\xe0\xb8\x81",
    "\xe0\xb8\x82",
    "\xe0\xb8\x83",
    "\xe0\xb8\x84",
    "\xe0\xb8\x85",
    "\xe0\xb8\x86",
    "\xe0\xb8\x87",
    "\xe0\xb8\x88",
    "\xe0\xb8\x89",
    "\xe0\xb8\x8a",
    "\xe0\xb8\x8b",
    "\xe0\xb8\x8c",
    "\xe0\xb8\x8d",
    "\xe0\xb8\x8e",
    "\xe0\xb8\x8f",
    "\xe0\xb8\x90",
    "\xe0\xb8\x91",
    "\xe0\xb8\x92",
    "\xe0\xb8\x93",
    "\xe0\xb8\x94",
    "\xe0\xb8\x95",
    "\xe0\xb8\x96",
    "\xe0\xb8\x97",
    "\xe0\xb8\x98",
    "\xe0\xb8\x99",
    "\xe0\xb8\x9a",
    "\xe0\xb8\x9b",
    "\xe0\xb8\x9c",
    "\xe0\xb8\x9d",
    "\xe0\xb8\x9e",
    "\xe0\xb8\x9f",
    "\xe0\xb8\xa0",
    "\xe0\xb8\xa1",
    "\xe0\xb8\xa2",
    "\xe0\xb8\xa3",
    "\xe0\xb8\xa4",
    "\xe0\xb8\xa5",
    "\xe0\xb8\xa6",
    "\xe0\xb8\xa7",
    "\xe0\xb8\xa8",
    "\xe0\xb8\xa9",
    "\xe0\xb8\xaa",
    "\xe0\xb8\xab",
    "\xe0\xb8\xac",
    "\xe0\xb8\xad",
    "\xe0\xb8\xae",
    "\xe0\xb8\xaf",
    "\xe0\xb8\xb0",
    "\xe0\xb8\xb1",
    "\xe0\xb8\xb2",
    "\xe0\xb8\xb3",
    "\xe0\xb8\xb4",
    "\xe0\xb8\xb5",
    "\xe0\xb8\xb6",
    "\xe0\xb8\xb7",
    "\xe0\xb8\xb8",
    "\xe0\xb8\xb9",
    "\xe0\xb8\xba",
    "\xef\xbb\xbf",
    "\xe2\x80\x8b",
    "\xe2\x80\x93",
    "\xe2\x80\x94",
    "\xe0\xb8\xbf",
    "\xe0\xb9\x80",
    "\xe0\xb9\x81",
    "\xe0\xb9\x82",
    "\xe0\xb9\x83",
    "\xe0\xb9\x84",
    "\xe0\xb9\x85",
    "\xe0\xb9\x86",
    "\xe0\xb9\x87",
    "\xe0\xb9\x88",
    "\xe0\xb9\x89",
    "\xe0\xb9\x8a",
    "\xe0\xb9\x8b",
    "\xe0\xb9\x8c",
    "\xe0\xb9\x8d",
    "\xe2\x84\xa2",
    "\xe0\xb9\x8f",
    "\xe0\xb9\x90",
    "\xe0\xb9\x91",
    "\xe0\xb9\x92",
    "\xe0\xb9\x93",
    "\xe0\xb9\x94",
    "\xe0\xb9\x95",
    "\xe0\xb9\x96",
    "\xe0\xb9\x97",
    "\xe0\xb9\x98",
    "\xe0\xb9\x99",
    "\xc2\xae",
    "\xc2\xa9",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
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
    0x000000a9 => "\xfb",
    0x000000ab => "\x80",
    0x000000ae => "\xfa",
    0x000000bb => "\x81",
    0x00000e01 => "\xa1",
    0x00000e02 => "\xa2",
    0x00000e03 => "\xa3",
    0x00000e04 => "\xa4",
    0x00000e05 => "\xa5",
    0x00000e06 => "\xa6",
    0x00000e07 => "\xa7",
    0x00000e08 => "\xa8",
    0x00000e09 => "\xa9",
    0x00000e0a => "\xaa",
    0x00000e0b => "\xab",
    0x00000e0c => "\xac",
    0x00000e0d => "\xad",
    0x00000e0e => "\xae",
    0x00000e0f => "\xaf",
    0x00000e10 => "\xb0",
    0x00000e11 => "\xb1",
    0x00000e12 => "\xb2",
    0x00000e13 => "\xb3",
    0x00000e14 => "\xb4",
    0x00000e15 => "\xb5",
    0x00000e16 => "\xb6",
    0x00000e17 => "\xb7",
    0x00000e18 => "\xb8",
    0x00000e19 => "\xb9",
    0x00000e1a => "\xba",
    0x00000e1b => "\xbb",
    0x00000e1c => "\xbc",
    0x00000e1d => "\xbd",
    0x00000e1e => "\xbe",
    0x00000e1f => "\xbf",
    0x00000e20 => "\xc0",
    0x00000e21 => "\xc1",
    0x00000e22 => "\xc2",
    0x00000e23 => "\xc3",
    0x00000e24 => "\xc4",
    0x00000e25 => "\xc5",
    0x00000e26 => "\xc6",
    0x00000e27 => "\xc7",
    0x00000e28 => "\xc8",
    0x00000e29 => "\xc9",
    0x00000e2a => "\xca",
    0x00000e2b => "\xcb",
    0x00000e2c => "\xcc",
    0x00000e2d => "\xcd",
    0x00000e2e => "\xce",
    0x00000e2f => "\xcf",
    0x00000e30 => "\xd0",
    0x00000e31 => "\xd1",
    0x00000e32 => "\xd2",
    0x00000e33 => "\xd3",
    0x00000e34 => "\xd4",
    0x00000e35 => "\xd5",
    0x00000e36 => "\xd6",
    0x00000e37 => "\xd7",
    0x00000e38 => "\xd8",
    0x00000e39 => "\xd9",
    0x00000e3a => "\xda",
    0x00000e3f => "\xdf",
    0x00000e40 => "\xe0",
    0x00000e41 => "\xe1",
    0x00000e42 => "\xe2",
    0x00000e43 => "\xe3",
    0x00000e44 => "\xe4",
    0x00000e45 => "\xe5",
    0x00000e46 => "\xe6",
    0x00000e47 => "\xe7",
    0x00000e48 => "\xe8",
    0x00000e49 => "\xe9",
    0x00000e4a => "\xea",
    0x00000e4b => "\xeb",
    0x00000e4c => "\xec",
    0x00000e4d => "\xed",
    0x00000e4f => "\xef",
    0x00000e50 => "\xf0",
    0x00000e51 => "\xf1",
    0x00000e52 => "\xf2",
    0x00000e53 => "\xf3",
    0x00000e54 => "\xf4",
    0x00000e55 => "\xf5",
    0x00000e56 => "\xf6",
    0x00000e57 => "\xf7",
    0x00000e58 => "\xf8",
    0x00000e59 => "\xf9",
    0x0000200b => "\xdc",
    0x00002013 => "\xdd",
    0x00002014 => "\xde",
    0x00002018 => "\x9d",
    0x00002019 => "\x9e",
    0x0000201c => "\x8d",
    0x0000201d => "\x8e",
    0x00002022 => "\x91",
    0x00002026 => "\x82",
    0x00002122 => "\xee",
    0x0000f884 => "\x92",
    0x0000f885 => "\x94",
    0x0000f886 => "\x95",
    0x0000f887 => "\x96",
    0x0000f888 => "\x97",
    0x0000f889 => "\x93",
    0x0000f88a => "\x98",
    0x0000f88b => "\x88",
    0x0000f88c => "\x83",
    0x0000f88d => "\x99",
    0x0000f88e => "\x89",
    0x0000f88f => "\x84",
    0x0000f890 => "\x9a",
    0x0000f891 => "\x8a",
    0x0000f892 => "\x85",
    0x0000f893 => "\x9b",
    0x0000f894 => "\x8b",
    0x0000f895 => "\x86",
    0x0000f896 => "\x9c",
    0x0000f897 => "\x8c",
    0x0000f898 => "\x87",
    0x0000f899 => "\x8f",
    0x0000feff => "\xdb",
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

