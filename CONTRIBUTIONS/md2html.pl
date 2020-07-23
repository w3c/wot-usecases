#!/usr/bin/perl

my $src = "";
my $id = "";
my $title = "";
my $section = "";
my $section_id = "";
my $is_list = 0;
my $topic = "";
my $current_level = 0;
my $prev_level = 0;

$src = $ARGV[0];
$id = $src;
$id  =~ s/\.md$//;

open(IN, ${src}) || die "${src}: $!\n";
while (<IN>) {
  chomp;
  s/</&lt;/g;
  s/>/&gt;/g;

  while ($_ =~ /\[.*\]\(.*\)/g) {
    $_ =~ s/\[(.*)\]\((.*)\)/<a href="$2">$1<\/a>/;
  }

  if (/^## Title: (.*)$/) {
    $current_level = 2;
    ${title} = $1;
    print "<section id=\"${id}\">\n";
    print "<h3>${title}</h3>\n";

  } elsif (/^### (.*)$/) {
    $current_level = 3;
    ${section} = $1;
    ${section} =~ s/:([\s]+|)$//;

    ${section_id} = $section;
    ${section_id} =~ s/\(s\)//;
    ${section_id} =~ tr/A-Z/a-z/;

    ${id} =~ tr/A-Z/a-z/;

    if ($prev_level >= $current_level) {
      print "<\/section>\n\n";
    }
    print "<section id=\"${id}-${section_id}\">\n";
    print "<h4>${section}</h4>\n";
    $prev_level = $current_level;

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
