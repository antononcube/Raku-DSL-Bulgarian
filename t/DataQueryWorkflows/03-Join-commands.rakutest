use v6.d;

use DSL::Bulgarian::DataQueryWorkflows::Grammar;
use Test;

plan 12;

# Shortcut
my $pCOMMAND = DSL::Bulgarian::DataQueryWorkflows::Grammar;

#-----------------------------------------------------------
# Inner join commands
#-----------------------------------------------------------

ok $pCOMMAND.parse('вътрешно съединение със dfStarwarsVehicles'),
        'вътрешно съединение със dfStarwarsVehicles';

ok $pCOMMAND.parse('слей със dfStarwarsVehicles'),
        'слей със dfStarwarsVehicles';

ok $pCOMMAND.parse('вътрешно сливане със dfStarwarsVehicles'),
        'вътрешно сливане със dfStarwarsVehicles';

ok $pCOMMAND.parse('ляво сливане със dfStarwarsVehicles'),
        'ляво сливане със dfStarwarsVehicles';

ok $pCOMMAND.parse('вътрешно сливане с dfStarwarsVehicles по "name"'),
        'вътрешно сливане с dfStarwarsVehicles по "name"';

ok $pCOMMAND.parse('вътрешно сливане с dfStarwarsVehicles със "character" -> "name"'),
        'вътрешно сливане с dfStarwarsVehicles със "character" -> "name"';

ok $pCOMMAND.parse('вътрешно сливане с dfStarwarsVehicles чрез "character" == "name"'),
        'вътрешно сливане с dfStarwarsVehicles чрез "character" == "name"';

ok $pCOMMAND.parse('вътрешно сливане с dfStarwarsVehicles със "character" = "name"'),
        'вътрешно сливане с dfStarwarsVehicles със "character" = "name"';

ok $pCOMMAND.parse('вътрешно сливане с dfStarwarsVehicles чрез "character" е равно на "name"'),
        'вътрешно сливане с dfStarwarsVehicles чрез "character" е равно на "name"';

ok $pCOMMAND.parse('вътрешно сливане с dfStarswars със "name" = "name2" и mass = mass3'),
        'вътрешно сливане с dfStarswars със "name" = "name2" и mass = mass3';

ok $pCOMMAND.parse('вътрешно сливане с dfStarswars чрез `{"name" -> "name2", "mass" -> mass3}`'),
        'вътрешно сливане с dfStarswars чрез `{"name" -> "name2", "mass" -> mass3}`';

ok $pCOMMAND.parse('вътрешно сливане с dfStarswars със `c("name" = "name2", "mass" = mass3)`'),
        'вътрешно сливане с dfStarswars със `c("name" = "name2", "mass" = mass3)`';

done-testing;