use lib './lib';
use lib '.';

use DSL::English::RecommenderWorkflows;
use DSL::Bulgarian::RecommenderWorkflows::Grammar;
use DSL::English::RecommenderWorkflows::Grammar;

#-----------------------------------------------------------
my $pCOMMAND = DSL::Bulgarian::RecommenderWorkflows::Grammar;

sub dq-parse(Str:D $command, Str:D :$rule = 'TOP') {
    $pCOMMAND.parse($command, :$rule);
}

sub dq-interpret(Str:D $command,
                 Str:D:$rule = 'TOP',
                 :$actions = DSL::Bulgarian::RecommenderWorkflows::Actions::Raku::Reshapers.new) {
    $pCOMMAND.parse($command, :$rule, :$actions).made;
}

say "=" x 10;


my @testCommands = ("
create from dfTitanic;
recommend by profile hr.12=3 and rr.12->4");

@testCommands = ("
създай чрез dfTitanic;
препоръчай със профила hr.12=3 и rr.12=4");


#my @targets = ('Bulgarian', 'English', 'Spanish', 'Russian');
my @targets = ('R-SMRMon');

for @testCommands -> $c {
    say "=" x 30;
    say $c;
    for @targets -> $t {
        say '-' x 30;
        say $t;
        say '-' x 30;
        my $start = now;
        # my $res0 = dq-parse($c, rule => 'workflow-commands-list'); say $res0;
        my $res = ToRecommenderWorkflowCode($c, $t, language => 'Bulgarian', format => 'hash');
        #        my $res =
        #                dq-interpret($c,
        #                        rule => 'workflow-commands-list',
        #                        actions => DSL::English::RecommenderWorkflows::Actions::WL::System.new);
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
#        actions => DSL::English::RecommenderWorkflows::Actions::R::base.new);
