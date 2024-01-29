use v6;

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Roles::Bulgarian::PipelineCommand;
use DSL::Bulgarian::LatentSemanticAnalysisWorkflows::Grammar::LatentSemanticAnalysisPhrases;
use DSL::English::LatentSemanticAnalysisWorkflows::Grammar::LatentSemanticAnalysisPhrases;
use DSL::English::LatentSemanticAnalysisWorkflows::Grammar::LSIApplyCommand;
use DSL::English::LatentSemanticAnalysisWorkflows::Grammarish;


grammar DSL::Bulgarian::LatentSemanticAnalysisWorkflows::Grammar
        does DSL::English::LatentSemanticAnalysisWorkflows::Grammarish
        does DSL::English::LatentSemanticAnalysisWorkflows::Grammar::LSIApplyCommand
        does DSL::Shared::Roles::Bulgarian::PipelineCommand
        does DSL::Bulgarian::LatentSemanticAnalysisWorkflows::Grammar::LatentSemanticAnalysisPhrases
        does DSL::English::LatentSemanticAnalysisWorkflows::Grammar::LatentSemanticAnalysisPhrases
        does DSL::Shared::Roles::Bulgarian::PipelineCommand
        does DSL::Shared::Roles::ErrorHandling {

}
