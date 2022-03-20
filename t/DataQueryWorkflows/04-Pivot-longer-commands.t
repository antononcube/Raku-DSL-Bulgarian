
use DSL::Bulgarian::DataQueryWorkflows::Grammar;
use Test;

plan 12;

# Shortcut
my $pCOMMAND = DSL::Bulgarian::DataQueryWorkflows::Grammar;

#-----------------------------------------------------------
# Pivot longer commands
#-----------------------------------------------------------

ok $pCOMMAND.parse('превърни в тясна форма'),
        'превърни в тясна форма';

ok $pCOMMAND.parse('превърни в дълъг формат'),
        'превърни в дълъг формат';

ok $pCOMMAND.parse('към дългата форма'),
        'към дългата форма';

nok $pCOMMAND.parse('към по-дългата форма'),
        'към по-дългата форма';

ok $pCOMMAND.parse('към дълга форма'),
        'към дълга форма';

ok $pCOMMAND.parse('във дълга форма'),
        'във дълга форма';

ok $pCOMMAND.parse('развърни в дълга форма'),
        'развърни в дълга форма';

ok $pCOMMAND.parse('развърни в дълга форма със променливи колони V1 и V2'),
        'развърни в дълга форма със променливи колони V1 и V2';

ok $pCOMMAND.parse('развърни в дълга форма с колоните V1, V2, и VAR5'),
        'развърни в дълга форма с колоните V1, V2, и VAR5';

ok $pCOMMAND.parse('развърни в дълга форма със id колоните ID1, ID2 със променливи колони V1 и V2'),
        'развърни в дълга форма със id колоните ID1, ID2 със променливи колони V1 и V2';

ok $pCOMMAND.parse('превърни в дълга форма чрез идентификаторни колони ID1, ID2 и със променливи колони V1 и V2'),
        'превърни в дълга форма чрез идентификаторни колони ID1, ID2 и със променливи колони V1 и V2';

# This is parsed but the result is not correct: the identifier columns list is {"ID1", "ID2", "variable"}.
ok $pCOMMAND.parse('развърни в дълга форма със id колони ID1, ID2 и променливи колони V1 и V2'),
        'развърни в дълга форма със id колони ID1, ID2 и променливи колони V1 и V2';


done-testing;