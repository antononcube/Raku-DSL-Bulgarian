# use lib <. lib>;

use DSL::English::DataQueryWorkflows;
use DSL::Bulgarian::DataQueryWorkflows::Grammar;

#-----------------------------------------------------------
my $pCOMMAND = DSL::Bulgarian::DataQueryWorkflows::Grammar;

sub dq-parse(Str:D $command, Str:D :$rule = 'TOP') {
    $pCOMMAND.parse($command, :$rule);
}

sub dq-interpret(Str:D $command,
                 Str:D:$rule = 'TOP',
                 :$actions = DSL::English::DataQueryWorkflows::Actions::Raku::Reshapers.new) {
    $pCOMMAND.parse($command, :$rule, :$actions).made;
}

say "=" x 10;


my @testCommands = ("
load the dataset iris;
take elements from 1 to 120 with step 3;
group by the column Species;
show counts");

@testCommands = ("
зареди данните iris;
вземи елементите from 1 to 120 with step 3;
групирай с колоната Species;
покажи броевете");


#my @targets = ('Bulgarian', 'English', 'Russian');
#my @targets = ('R-base', 'R-tidyverse', 'WL-System', 'Python-pandas', 'Raku-Reshapers');
my @targets = ('Raku-Reshapers');

for @testCommands -> $c {
    say "=" x 30;
    say $c;
    for @targets -> $t {
        say '-' x 30;
        say $t;
        say '-' x 30;
        my $start = now;
        #my $res0 = dq-parse($c, rule => 'workflow-commands-list'); say $res0;
        #my $res1 = dq-interpret($c, rule => 'workflow-commands-list'); say $res1;
        my $res = ToDataQueryWorkflowCode($c, $t, language => 'Bulgarian', format => 'hash');
        #        my $res =
        #                dq-interpret($c,
        #                        rule => 'workflow-commands-list',
        #                        actions => DSL::English::DataQueryWorkflows::Actions::WL::System.new);
        say "time:", now - $start;
        say $res;
    }
};

#say "=" x 60;
#say dq-parse("summarize with Norm = `sqrt(sum(Square))`", rule => 'summarize-command');
#say dq-parse("summarize data", rule => 'statistics-command');
#say dq-interpret(
#        @testCommands[0],
#        rule => 'workflow-commands-list',
#        actions => DSL::General::DataQueryWorkflows::Actions::R::base.new);
