# use lib <. lib>;

use DSL::English::QuantileRegressionWorkflows;
use DSL::Bulgarian::QuantileRegressionWorkflows::Grammar;
use DSL::English::QuantileRegressionWorkflows::Grammar;

#-----------------------------------------------------------
my $pCOMMAND = DSL::Bulgarian::QuantileRegressionWorkflows::Grammar;

sub dq-parse(Str:D $command, Str:D :$rule = 'TOP') {
    $pCOMMAND.parse($command, :$rule);
}

sub dq-interpret(Str:D $command,
                 Str:D:$rule = 'TOP',
                 :$actions = DSL::Bulgarian::QuantileRegressionWorkflows::Actions::R::QRMon.new) {
    $pCOMMAND.parse($command, :$rule, :$actions).made;
}

say "=" x 10;


my @testCommands = ("
include setup code;
create from dfTemperatureData;
delete missing;
echo data summary;
rescale both axes;
compute quantile regression with 20 knots and probabilities from 0.1 to 0.9 with step 0.1;
show date list plot;
plot absolute errors plots;
compute outliers;
echo pipeline context;
assign pipeline object to qrObj34;");

@testCommands = ("
създай с dfTemperatureData;
премахни липсващите стойности;
покажи обобщение на данните;
премащабирай и двете оси;
изчисли квантилна регресия с 20 възела и вертоянтности от 0.1 до 0.9 със стъпка 0.1;
покажи датова диаграма;
покажи чертеж на абсолюните грешки;
покажи текущата лентова стойност");


@testCommands = ("
създай с dfTemperatureData;
премахни липсващите стойности;
покажи данново обобщение;
премащабирай двете оси;
изчисли квантилна регресия с 20 възела и вероятности от 0.1 до 0.9 със стъпка 0.1;
покажи диаграма с дати;
покажи чертеж на абсолютните грешки;
покажи текущата лентова стойност");


#my @targets = ('Bulgarian', 'English', 'Spanish', 'Russian');
my @targets = <R-QRMon English Russian>;

for @testCommands -> $c {
    say "=" x 30;
    say $c;
    for @targets -> $t {
        say '-' x 30;
        say $t;
        say '-' x 30;
        my $start = now;
        # my $res0 = dq-parse($c, rule => 'workflow-commands-list'); say $res0;
        my $res = ToQuantileRegressionWorkflowCode($c, $t, language => 'Bulgarian', format => 'hash');
        #        my $res =
        #                dq-interpret($c,
        #                        rule => 'workflow-commands-list',
        #                        actions => DSL::English::QuantileRegressionWorkflows::Actions::WL::System.new);
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
#        actions => DSL::English::QuantileRegressionWorkflows::Actions::R::base.new);
