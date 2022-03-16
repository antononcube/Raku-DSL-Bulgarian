use v6.d;

use DSL::Shared::Roles::Bulgarian::ListManagementCommand;
use DSL::Shared::Roles::Bulgarian::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::PredicateSpecification;

use DSL::General::DataQueryWorkflows::Grammar::DataQueryPhrases;
use DSL::General::DataQueryWorkflows::Grammarish;
use DSL::Bulgarian::DataQueryWorkflows::Grammar::DataQueryPhrases;

grammar DSL::Bulgarian::DataQueryWorkflows::Grammar
        does DSL::General::DataQueryWorkflows::Grammarish
        does DSL::General::DataQueryWorkflows::Grammar::DataQueryPhrases
        does DSL::Bulgarian::DataQueryWorkflows::Grammar::DataQueryPhrases
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::Bulgarian::ListManagementCommand
        does DSL::Shared::Roles::PredicateSpecification
        does DSL::Shared::Roles::Bulgarian::PipelineCommand {

}
