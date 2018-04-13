# Locale-Recode

Pure Perl Charset Conversion Routines

## Description

This module used to be a part of
[libintl-perl](https://github.com/gflohr/libintl-perl) and mainly exists
for historical reasons.  It pre-dates `Encode(3pm)` and its charset conversion
routines slightly differ from `Encode(3pm)` in the following aspects:

* It is written in pure Perl with fallbacks to Encode, where applicable.
* It does not suffer from the bugs that were present in Encode's conversion 
  tables at the time that this module was written.
* All code points in the corresponding tables of 8 bit character sets
  are documented.  Try for example `perldoc Locale::RecodeData::KOI8_R`.
* It only uses distinct character set names and well-known aliases (whereas
  Encode does fuzzy matching with sometimes surprising results).
* It works with Perl 5 versions before Perl 5.6.

Still, at the time of this writing, you should have little reason to use
this module.  Rather go with `Encode`, unless you have a specific reason.

The versioning of this module starts with 2.0.  The reason for this is that
the module was separated from libintl-perl version 2.0.

## Dependencies

None.

## Installation

As any other Perl module.  In doubt try:

```perl
$ cpanm install Locale::Recode
```

## Bugs

Please report bugs at 
[https://github.com/gflohr/Locale-Recode/issues](https://github.com/gflohr/Locale-Recode/issues)

## Copyright

Copyright (C) 2016-2018, Guido Flohr, <guido.flohr@cantanea.com>, 
all rights reserved.
