# use lib <. lib>;

use DSL::English::LatentSemanticAnalysisWorkflows;
use DSL::Bulgarian::LatentSemanticAnalysisWorkflows::Grammar;
use DSL::English::LatentSemanticAnalysisWorkflows::Grammar;

#-----------------------------------------------------------
my $pCOMMAND = DSL::Bulgarian::LatentSemanticAnalysisWorkflows::Grammar;

sub dq-parse(Str:D $command, Str:D :$rule = 'TOP') {
    $pCOMMAND.parse($command, :$rule);
}

sub dq-interpret(Str:D $command,
                 Str:D:$rule = 'TOP',
                 :$actions = DSL::Bulgarian::LatentSemanticAnalysisWorkflows::Actions::Raku::Reshapers.new) {
    $pCOMMAND.parse($command, :$rule, :$actions).made;
}

say "=" x 10;


my @testCommands = ('
create from textHamlet;
make document term matrix with stemming FALSE and automatic stop words;
apply LSI functions global weight function IDF, local term weight function TermFrequency, normalizer function Cosine;
extract 12 topics using method NNMF and max steps 12 and 20 min number of documents per term;
show topics table with 12 terms;
show thesaurus table for king, castle, denmark;',);

@testCommands = ("
създай със textHamlet;
направи документ-термин матрица със автоматични стоп думи;
приложи LSI функциите IDF, TermFrequency, и Cosine;
извади 12 теми чрез NNMF и максимален брой стъпки 12;
покажи таблица  на темите с 12 термина;
покажи текущата лентова стойност");


#my @targets = ('Bulgarian', 'English', 'Spanish', 'Russian');
my @targets = <R-LSAMon English>;

for @testCommands -> $c {
    say "=" x 30;
    say $c;
    for @targets -> $t {
        say '-' x 30;
        say $t;
        say '-' x 30;
        my $start = now;
        # my $res0 = dq-parse($c, rule => 'workflow-commands-list'); say $res0;
        my $res = ToLatentSemanticAnalysisWorkflowCode($c, $t, language => 'Bulgarian', format => 'hash');
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
