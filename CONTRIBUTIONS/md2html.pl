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
  s/\r$//;

  while ($_ =~ /\[.*\]\(.*\)/g) {
    $_ =~ s/\[(.*)\]\((.*)\)/<a href="$2">$1<\/a>/;
  }

  if (/^## Title: (.*)$/) {
    $current_level = 2;
    ${title} = $1;
    print "<section id=\"${id}\">\n";
    print "<h2>${title}</h2>\n";
    print "<dl>\n";
    $is_list = 0;

  } elsif (/^### (.*)$/) {
    $current_level = 3;
    ${section} = $1;
    ${section} =~ s/:([\s]+|)$//;

    ${section_id} = $section;
    ${section_id} =~ s/\(s\)//;
    ${section_id} =~ tr/A-Z/a-z/;

    ${id} =~ tr/A-Z/a-z/;

    if ($prev_level >= $current_level) {
      print "<\/dd>\n";
    }
    print "<dt>${section}</dt>\n";
    print "<dd>\n";
    $prev_level = $current_level;
    $is_list = 0;

  } elsif (/^#### (.*)$/) {
    print "<p>$_</p>\n";
    $is_list = 0;

  } elsif (/^(\-|\*) (.*)$/) {
    ${topic} = $2;
    if ($is_list eq 0) {
      print "<ul>\n";
    }
    print "<li>${topic}</li>\n";
    $is_list = 1;

  } else {
    if (($is_list eq 1) && (/^$/)) {
        print "</ul>\n";
        $is_list = 0;
    }
    print "$_\n";
  }
}

print "<\/dd>\n";
print "<\/dl>\n";
print "<\/section>\n";
close(IN);
