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
my $code = 0;
my $title_flag = 0;

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

  if (/^### Identifier/) {
    $title_flag = 1;
  } elsif ( $title_flag eq 1 ) {
    if ( /^\w/ ) {
      $current_level = 2;
      ${title} = $_;
      print "<section id=\"${id}\">\n";
      print "<h3>${title}</h3>\n";
      print "<dl>\n";
      $is_list = 0;
      $title_flag = 0;
    }
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
  } elsif (($is_list eq 1) && (/^$/)) {
    print "</ul>\n";
    $is_list = 0;
  } elsif ( (/^```json/) || (/^```js/)) {
    print "<code>\n";
    $code = 1;
  } elsif ( ($code eq 1 ) && (/^```/) ) {
    print "</code>\n";
    $code = 0;
  } elsif ( ($code eq 1 )) {
    print "$_\n";
  } else {
    if ( /^\w/ ) {
      print "$_\n";
    }
  }
}

print "<\/dd>\n";
print "<\/dl>\n";
print "<\/section>\n";
close(IN);
