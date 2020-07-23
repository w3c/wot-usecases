#!/usr/bin/perl

my $src = "";
my $fragment = "";

$src = $ARGV[0];

open(SRC, ${src}) || die "${src}: $!\n";
while (<SRC>) {
  chomp;

  if (/^#include "(.*)"/) {
    ${fragment} = $1;
    include_fragment($fragment);

  } else {
    print "$_\n";

  }
}
close(SRC);

###
sub include_fragment ($){
  my $in = shift;

  open(IN, ${in}) || die "${in}: $!\n";
  while (<IN>) {
    chomp;
    print "$_\n";

  }
  close(IN);
}
