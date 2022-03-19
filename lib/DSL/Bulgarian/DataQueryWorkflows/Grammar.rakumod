use v6.d;

use DSL::Shared::Roles::Bulgarian::ListManagementCommand;
use DSL::Shared::Roles::Bulgarian::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::PredicateSpecification;
use DSL::Shared::Roles::Bulgarian::PredicateSpecification;

use DSL::English::DataQueryWorkflows::Grammar::DataQueryPhrases;
use DSL::English::DataQueryWorkflows::Grammarish;
use DSL::Bulgarian::DataQueryWorkflows::Grammar::DataQueryPhrases;

grammar DSL::Bulgarian::DataQueryWorkflows::Grammar
        does DSL::English::DataQueryWorkflows::Grammarish
        does DSL::English::DataQueryWorkflows::Grammar::DataQueryPhrases
        does DSL::Bulgarian::DataQueryWorkflows::Grammar::DataQueryPhrases
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::Bulgarian::ListManagementCommand
        does DSL::Shared::Roles::PredicateSpecification
        does DSL::Shared::Roles::Bulgarian::PredicateSpecification
        does DSL::Shared::Roles::Bulgarian::PipelineCommand {

}
