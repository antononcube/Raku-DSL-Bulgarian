use lib './lib';
use lib '.';

use DSL::English::ClassificationWorkflows;
use DSL::Bulgarian::ClassificationWorkflows::Grammar;
use DSL::English::ClassificationWorkflows::Grammar;
use DSL::English::ClassificationWorkflows::Actions::WL::ClCon;

#-----------------------------------------------------------
my $pCOMMAND = DSL::Bulgarian::ClassificationWorkflows::Grammar;

sub dq-parse(Str:D $command, Str:D :$rule = 'TOP') {
    $pCOMMAND.parse($command, :$rule);
}

sub dq-interpret(Str:D $command,
                 Str:D:$rule = 'TOP',
                 :$actions = DSL::English::ClassificationWorkflows::Actions::WL::ClCon.new) {
    $pCOMMAND.parse($command, :$rule, :$actions).made;
}

say "=" x 10;


my @testCommands = ("
'DSL MODULE ClCon;
setup code;
use dfTitanic;
reduce dimension;
split data with split ratio 0.82 and validation fraction 0.2;
make gradient boosted trees classifier;
show classifier training time;
show classifier measurements;
show classifier confusion matrix plot, ROCCurve;
show top confusions, misclassified examples, least certain examples;
assign pipeline object to clObj120;'");

@testCommands = ("
използвай dfTitanic;
раздели данните с цепещо съотношение 0.82;
направи gradient boosted trees класификатор;
");


#my @targets = ('Bulgarian', 'English', 'Spanish', 'Russian');
my @targets = <WL-ClCon English Russian>;

for @testCommands -> $c {
    say "=" x 30;
    say $c;
    for @targets -> $t {
        say '-' x 30;
        say $t;
        say '-' x 30;
        my $start = now;
        # my $res0 = dq-parse($c, rule => 'workflow-commands-list'); say $res0;
        my $res = ToClassificationWorkflowCode($c, $t, language => 'Bulgarian', format => 'hash');
        #        my $res =
        #                dq-interpret($c,
        #                        rule => 'workflow-commands-list',
        #                        actions => DSL::English::ClassificationWorkflows::Actions::WL::System.new);
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
#        actions => DSL::English::ClassificationWorkflows::Actions::R::base.new);
