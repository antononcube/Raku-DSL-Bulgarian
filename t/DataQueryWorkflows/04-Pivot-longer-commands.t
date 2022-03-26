
use DSL::Bulgarian::DataQueryWorkflows::Grammar;
use Test;

plan 12;

# Shortcut
my $pCOMMAND = DSL::Bulgarian::DataQueryWorkflows::Grammar;

#-----------------------------------------------------------
# Pivot longer commands
#-----------------------------------------------------------

# 1
ok $pCOMMAND.parse('превърни в тясна форма'),
        'превърни в тясна форма';

# 2
ok $pCOMMAND.parse('превърни в дълъг формат'),
        'превърни в дълъг формат';

# 3
ok $pCOMMAND.parse('към дългата форма'),
        'към дългата форма';

# 4
nok $pCOMMAND.parse('към по-дългата форма'),
        'към по-дългата форма';

# 5
ok $pCOMMAND.parse('към дълга форма'),
        'към дълга форма';

# 6
ok $pCOMMAND.parse('във дълга форма'),
        'във дълга форма';

# 7
ok $pCOMMAND.parse('развърни в дълга форма'),
        'развърни в дълга форма';

# 8
ok $pCOMMAND.parse('развърни в дълга форма със променливи колони V1 и V2'),
        'развърни в дълга форма със променливи колони V1 и V2';

# 9
ok $pCOMMAND.parse('развърни в дълга форма с колоните V1, V2, и VAR5'),
        'развърни в дълга форма с колоните V1, V2, и VAR5';

# 10
ok $pCOMMAND.parse('развърни в дълга форма със id колоните ID1, ID2 със променливи колони V1 и V2'),
        'развърни в дълга форма със id колоните ID1, ID2 със променливи колони V1 и V2';

# 11
ok $pCOMMAND.parse('превърни в дълга форма чрез идентификаторни колони ID1, ID2 и със променливи колони V1 и V2'),
        'превърни в дълга форма чрез идентификаторни колони ID1, ID2 и със променливи колони V1 и V2';

# 12
# This is parsed but the result is not correct: the identifier columns list is {"ID1", "ID2", "variable"}.
ok $pCOMMAND.parse('развърни в дълга форма със id колони ID1, ID2 и променливи колони V1 и V2'),
        'развърни в дълга форма със id колони ID1, ID2 и променливи колони V1 и V2';


done-testing;