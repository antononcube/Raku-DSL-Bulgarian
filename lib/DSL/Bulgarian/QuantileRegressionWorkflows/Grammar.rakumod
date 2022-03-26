use v6.d;

use DSL::Bulgarian::QuantileRegressionWorkflows::Grammar::TimeSeriesAndRegressionPhrases;
use DSL::English::QuantileRegressionWorkflows::Grammar::TimeSeriesAndRegressionPhrases;
use DSL::English::QuantileRegressionWorkflows::Grammarish;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;

grammar DSL::Bulgarian::QuantileRegressionWorkflows::Grammar
        does DSL::English::QuantileRegressionWorkflows::Grammarish
        does DSL::Bulgarian::QuantileRegressionWorkflows::Grammar::TimeSeriesAndRegressionPhrases
        does DSL::English::QuantileRegressionWorkflows::Grammar::TimeSeriesAndRegressionPhrases
        does DSL::Shared::Roles::ErrorHandling {

}
