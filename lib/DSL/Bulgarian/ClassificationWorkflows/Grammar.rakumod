use DSL::Shared::Roles::PredicateSpecification;
use DSL::Shared::Roles::ErrorHandling;

use DSL::Bulgarian::ClassificationWorkflows::Grammar::ClassificationPhrases;
use DSL::English::ClassificationWorkflows::Grammar::ClassificationPhrases;
use DSL::English::ClassificationWorkflows::Grammar::ROCFunctions;
use DSL::English::ClassificationWorkflows::Grammar::ClassifierProperties;
use DSL::English::ClassificationWorkflows::Grammar::ClassifierMeasurements;
use DSL::English::ClassificationWorkflows::Grammarish;

grammar DSL::Bulgarian::ClassificationWorkflows::Grammar
        does DSL::English::ClassificationWorkflows::Grammarish
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Bulgarian::ClassificationWorkflows::Grammar::ClassificationPhrases
        does DSL::English::ClassificationWorkflows::Grammar::ClassificationPhrases
        does DSL::English::ClassificationWorkflows::Grammar::ROCFunctions
        does DSL::English::ClassificationWorkflows::Grammar::ClassifierProperties
        does DSL::English::ClassificationWorkflows::Grammar::ClassifierMeasurements {

}
