#!/usr/bin/perl

my $src = "";
my $id = "";
my $title = "";
my $section = "";
my $section_id = "";
my $is_list = 0;
my $topic = "";

$src = $ARGV[0];
$id = $src;
$id  =~ s/\.md$//;

open(IN, ${src}) || die "${src}: $!\n";
while (<IN>) {
  chomp;

  while ($_ =~ /\[.*\]\(.*\)/g) {
      $_ =~ s/\[(.*)\]\((.*)\)/<a href="$2">$1<\/a>/;
  }

  if (/^## Title: (.*)$/) {
    ${title} = $1;
    print "<h3 id=\"${id}\">${title}</h3>\n";

  } elsif (/^### (.*)$/) {
      ${section} = $1;
      ${section} =~ s/:([\s]+|)$//;

      ${section_id} = $section;
      ${section_id} =~ s/\(s\)//;
      ${section_id} =~ tr/A-Z/a-z/;

      ${id} =~ tr/A-Z/a-z/;

      print "<h4 id=\"${id}-${section_id}\">${section}</h4>\n";

  } elsif (/^(\-|\*) (.*)$/) {
      ${topic} = $2;
      if ($is_list eq 0) {
        print "<ul>\n";
      }
      print "<li>${topic}</li>\n";
      $is_list = 1;

  } else {
      if ($is_list eq 1) {
          print "</ul>\n";
          $is_list = 0;
      }
      print "$_\n";
  }
}
close(IN);
