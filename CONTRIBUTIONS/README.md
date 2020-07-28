This directory contains the use cases 
for the next revision (V1.1) of the WoT architecture.

Please put all your use cases into this directory adopting the format in the template [use-case-template.md](use-case-template.md).

Please avoid domain specific terminology, e.g. don't use MNO, telco. Better use network operator instead.

# Terminology

We use common terminology across the use cases to make sure 
everybody has the same understanding and the descriptions match
when we combine the use case in a single document.

## Stakeholders and actors

- device owners  
- device user  
- cloud provider  
- service provider  
- device manufacturer   
- gateway manufacturer  
- network operator (potentially transparent for WoT use cases)  
- identity provider  
- directory service operator?  

# Tools

There are the following three scripts to convert the use case MD files
into HTML files, and then put them into the main ***index.html*** file.

* ***md2html.sh***: main script to the the above
* ***md2html.pl***: Perl script called from ***md2html.sh*** and convert each MD file into HTML
* ***include.pl***: Perl script called from ***md2html.sh*** to include all the expected HTML fragment files into the main ***index.html*** file

## Usage

1. Copy all the three tools above and the main ***index.html*** file to the directory of the MD files to be converted.
1. Use ***md2html.sh*** script to convert all the MD files into HTML.<br>
   `$ ./md2html.sh`
1. Add the command of<br>`#include "your-expected.html"`<br>to the line of ***index.html*** manually to specify where to include which HTML file. You can add multiple #include commands if you want to include multiple HTML files at once.
1. Then include your expected HTML file(s) into the ***index.html*** file.<br>
   `$ ./include.pl index.html > index2.html`
1. Check the resulted ***index2.html*** file. If there are any problems with the inclusion results, please fix them manually.
1. After fixing all the problems within the ***index2.html*** file, please rename it to ***index.html***.<br>
   `$ mv index2.html index.html`
