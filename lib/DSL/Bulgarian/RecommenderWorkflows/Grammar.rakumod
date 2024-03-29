use DSL::Shared::Roles::ErrorHandling;
use DSL::English::RecommenderWorkflows::Grammar::LSIApplyCommand;
use DSL::Bulgarian::RecommenderWorkflows::Grammar::RecommenderPhrases;
use DSL::English::RecommenderWorkflows::Grammarish;
use DSL::English::RecommenderWorkflows::Grammar::RecommenderPhrases;
use DSL::Shared::Roles::Bulgarian::PipelineCommand;

grammar DSL::Bulgarian::RecommenderWorkflows::Grammar
        does DSL::English::RecommenderWorkflows::Grammarish
        does DSL::English::RecommenderWorkflows::Grammar::LSIApplyCommand
        does DSL::Bulgarian::RecommenderWorkflows::Grammar::RecommenderPhrases
        does DSL::English::RecommenderWorkflows::Grammar::RecommenderPhrases
        does DSL::Shared::Roles::Bulgarian::PipelineCommand
        does DSL::Shared::Roles::ErrorHandling {

}

