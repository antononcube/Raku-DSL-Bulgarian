use v6.d;

use DSL::English::DataQueryWorkflows;
use DSL::Bulgarian::DataQueryWorkflows::Grammar;
use Test;

plan 11;

sub to-tidyverse(Str:D $commands) {
    ToDataQueryWorkflowCode($commands, 'R-tidyverse', lang => 'Bulgarian', format => 'code')
}

#-----------------------------------------------------------
# Basic commands
#-----------------------------------------------------------

is to-tidyverse('използвай таблицата dfTitanic'),
        'dfTitanic',
        'използвай таблицата dfTitanic';

like to-tidyverse('избери passengerAge'),
        / 'select(' \h* 'passengerAge' \h* ')' /,
        'избери passengerAge';

like to-tidyverse('избери passengerAge и passengerSex'),
        / 'select(' \h* 'passengerAge' \h* ',' \h* 'passengerSex' \h* ')' /,
        'избери passengerAge и passengerSex';

like to-tidyverse('избери passengerAge, passengerClass, и passengerSex'),
        / 'select(' \h* 'passengerAge' \h* ',' \h* 'passengerClass' ',' \h* 'passengerSex' \h* ')' /,
        'избери passengerAge, passengerClass, и passengerSex';


like to-tidyverse('избери passengerAge като age, passengerClass като class'),
        / 'select(' \h* 'age' \h* '=' \h* 'passengerAge' \h* ',' \h* 'class' \h* '=' \h* 'passengerClass' \h* ')' /,
        'избери passengerAge като age, passengerClass като class';

like to-tidyverse('изхвърли колоната passengerAge'),
        / 'mutate(' \h* 'passengerAge' \h* '=' \h* 'NULL' \h* ')' /,
        'изхвърли колоната passengerAge';

like to-tidyverse('изтрий колоните passengerAge и passengerSex'),
        / 'mutate(' \h* 'passengerAge' \h* '=' \h* 'NULL' \h* ',' \h* 'passengerSex' \h* '=' \h* 'NULL' \h* ')' /,
        'изтрий колоните passengerAge и passengerSex';

like to-tidyverse('изтрий колоните passengerAge, passengerClass, и passengerSex'),
        / 'mutate(' \h* 'passengerAge' \h* '=' \h* 'NULL' \h* ',' \h* 'passengerClass' \h* '=' \h* 'NULL' \h* ',' \h* 'passengerSex' \h* '=' \h* 'NULL' \h* ')' /,
        'изтрий колоните passengerAge, passengerClass, и passengerSex';

like to-tidyverse('трансформирай bmi1 = mass1, bmi2 = mass2'),
        / 'mutate(' \h* 'bmi1' \h* '=' \h* 'mass1' \h* ',' \h* 'bmi2' \h* '=' \h* 'mass2' \h* ')' /,
        'трансформирай bmi1 = mass1, bmi2 = mass2';

like to-tidyverse('трансформирай bmi = `mass/height^2`'),
        / 'mutate(' \h* 'bmi' \h* '=' \h* 'mass/height^2' \h* ')' /,
        'трансформирай bmi = mass/height^2';

like to-tidyverse('трансформирай bmi1 = `mass/height^2` и bmi2 = `mass/height^2`'),
        / 'mutate(' \h* 'bmi1' \h* '=' \h* 'mass/height^2' \h* ',' \h* 'bmi2' \h* '=' \h* 'mass/height^2' \h* ')' /,
        'трансформирай bmi = `mass/height^2` и bmi2 = `mass/height^2`';

done-testing;