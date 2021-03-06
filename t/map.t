#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';
use Test::More;

my $min_ver = 0.35;
eval "use Test::Map::Tube $min_ver tests => 2";
plan skip_all => "Test::Map::Tube $min_ver required." if $@;

use Map::Tube::Copenhagen;
my $map = Map::Tube::Copenhagen->new;

SKIP: {
    ok_map($map) or skip "Skip map function and routes test.", 1;
    ok_map_functions($map);
}
