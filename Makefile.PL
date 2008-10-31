use inc::Module::Install;
name 'Devel-DLMProf';
all_from 'lib/Devel/DLMProf.pm';

requires $_ for (qw/ /);

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
