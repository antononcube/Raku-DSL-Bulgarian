use v6.d;

sub EXPORT {
    use DSL::Bulgarian::ClassificationWorkflows::Grammar;
    use DSL::Bulgarian::DataQueryWorkflows::Grammar;
    use DSL::Bulgarian::LatentSemanticAnalysisWorkflows::Grammar;
    use DSL::Bulgarian::QuantileRegressionWorkflows::Grammar;
    use DSL::Bulgarian::RecommenderWorkflows::Grammar;

    Map.new:
        'DSL::Bulgarian::ClassificationWorkflows::Grammar' => DSL::Bulgarian::ClassificationWorkflows::Grammar,
        'DSL::Bulgarian::DataQueryWorkflows::Grammar' => DSL::Bulgarian::DataQueryWorkflows::Grammar,
        'DSL::Bulgarian::LatentSemanticAnalysisWorkflows::Grammar' => DSL::Bulgarian::LatentSemanticAnalysisWorkflows::Grammar,
        'DSL::Bulgarian::QuantileRegressionWorkflows::Grammar' => DSL::Bulgarian::QuantileRegressionWorkflows::Grammar,
        'DSL::Bulgarian::RecommenderWorkflows::Grammar' => DSL::Bulgarian::RecommenderWorkflows::Grammar;
}