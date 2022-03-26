use v6;

use DSL::English::DataQueryWorkflows;
use DSL::Bulgarian::DataQueryWorkflows::Grammar;
use Test;

plan 23;

# Shortcut
my $pCOMMAND = DSL::Bulgarian::DataQueryWorkflows::Grammar;

#-----------------------------------------------------------
# Basic commands
#-----------------------------------------------------------

ok $pCOMMAND.parse('зареди данните dfTitanic'),
        'зареди данните dfTitanic';

ok $pCOMMAND.parse('зареди таблица dfTitanic'),
        'зареди таблица dfTitanic';

ok $pCOMMAND.parse('зареди таблицата dfTitanic'),
        'зареди таблицата dfTitanic';

ok $pCOMMAND.parse('използвай даннов масив dfTitanic'),
        'използвай данновия масив dfTitanic';

ok $pCOMMAND.parse('запази само уникалните стойности'),
        'запази само уникалните стойности';

ok $pCOMMAND.parse('премахни повторените'),
        'премахни повторените';

ok $pCOMMAND.parse('премахни повторените стойности'),
        'премахни повторените стойности';

ok $pCOMMAND.parse('изключи липсващи стойности'),
        'изключи липсващи стойности';

ok $pCOMMAND.parse('изключи липсващите стойности'),
        'изключи липсващите стойности';

ok $pCOMMAND.parse('запази само пълните случаи'),
        'запази само пълните случаи';

ok $pCOMMAND.parse('избери passengerAge'),
        'избери passengerAge';

ok $pCOMMAND.parse('избери passengerAge и passengerSex'),
        'избери passengerAge и passengerSex';

ok $pCOMMAND.parse('избери passengerAge, passengerClass, и passengerSex'),
        'избери passengerAge, passengerClass, и passengerSex';

ok $pCOMMAND.parse('избери passengerAge като age, passengerClass като class, и passengerSex като sex'),
        'избери passengerAge като age, passengerClass като class, и passengerSex като sex';

ok $pCOMMAND.parse('изхвърли passengerAge, passengerClass, и passengerSex'),
        'изхвърли passengerAge, passengerClass, и passengerSex';

ok $pCOMMAND.parse('изтрий passengerAge и passengerSex'),
        'изтрий passengerAge и passengerSex';

ok $pCOMMAND.parse('преименувай passengerAge, passengerClass, и passengerSex като age, class, sex'),
        'преименувай passengerAge, passengerClass, и passengerSex като age, class, sex';

ok $pCOMMAND.parse('преименувай passengerAge като age, passengerClass като class и passengerSex като sex'),
        'преименувай passengerAge като age, passengerClass като class и passengerSex като sex';

ok $pCOMMAND.parse('изхвърли passengerAge, passengerClass, и passengerSex'),
        'изхвърли passengerAge, passengerClass, и passengerSex';

ok $pCOMMAND.parse('трансформирай bmi1 = mass1 и bmi2 = mass2'),
        'трансформирай bmi1 = mass1 и bmi2 = mass2';

ok $pCOMMAND.parse('трансформирай bmi1 = mass1, bmi2 = mass2'),
        'трансформирай bmi1 = mass1, bmi2 = mass2';

ok $pCOMMAND.parse('мутирай bmi = `mass/height^2`'),
        'мутирай bmi = `mass/height^2`';

ok $pCOMMAND.parse('мутирай bmi = `mass/height^2` и bmi2 = `masx/height^2`'),
        'мутирай bmi = `mass/height^2` и bmi2 = `masx/height^2`';

done-testing;