use DSL::Bulgarian::ClassificationWorkflows::Grammar::ClassificationPhrases;
use DSL::English::ClassificationWorkflows::Grammar::ClassificationPhrases;
use DSL::English::ClassificationWorkflows::Grammarish;
use DSL::Entity::MachineLearning::Grammar::EntityNames;
use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::PredicateSpecification;
use DSL::Shared::Roles::Bulgarian::PipelineCommand;

grammar DSL::Bulgarian::ClassificationWorkflows::Grammar
        does DSL::English::ClassificationWorkflows::Grammarish
        does DSL::Bulgarian::ClassificationWorkflows::Grammar::ClassificationPhrases
        does DSL::English::ClassificationWorkflows::Grammar::ClassificationPhrases
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::Bulgarian::PipelineCommand
        does DSL::Entity::MachineLearning::Grammar::EntityNames {

    my DSL::Entity::MachineLearning::ResourceAccess $resources;

    method get-resources(--> DSL::Entity::MachineLearning::ResourceAccess) { return $resources; }
    method set-resources(DSL::Entity::MachineLearning::ResourceAccess $obj) { $resources = $obj; }

}
