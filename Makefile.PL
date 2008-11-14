use inc::Module::Install;
name 'Devel-DLMProf';
all_from 'lib/Devel/DLMProf.pm';

requires 'Path::Class';

if( $^O eq 'linux') {
    requires 'Linux::Smaps';
} elsif ($^O =~ /(darwin|bsd|aix)/i) {
    requires 'BSD::Resource';
}

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
