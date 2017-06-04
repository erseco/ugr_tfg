use lib qw(../../Code/CPAN/Test-Text/lib ../../../Code/CPAN/Test-Text/lib);

use Test::Text;

my $dir = ( -d "text")?"text":"../text";
just_check( $dir,".", "Spanish" );



