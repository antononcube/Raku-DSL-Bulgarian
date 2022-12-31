# Raku DSL::Bulgarian

## In brief

This Raku package facilitates the specification computational workflows using 
natural language commands in Bulgarian.

Using the Domain Specific Languages (DSLs) executable code is generated for different
programming languages: Julia, Python, R, Raku, Wolfram Language.

Translation to other natural languages is also done: English, Korean, Russian, Spanish.

------

## Data query (wrangling) workflows

Translate Bulgarian data wrangling specifications to different natural and programming languages:

```perl6
use DSL::English::DataQueryWorkflows;

my $command = '
зареди данните iris;
вземи елементите от 1 до 120;
филтрирай чрез Sepal.Width е по-голямо от 2.4 и Petal.Length е по-малко от 5.5; 
групирай с колоната Species;
покажи размерите
';
for <English Python::pandas Raku::Reshapers Spanish Russian> -> $t {
   say '=' x 60, "\n", $t, "\n", '-' x 60;
   say ToDataQueryWorkflowCode($command, $t, language => 'Bulgarian', format => 'code');
}
```
```
# ============================================================
# English
# ------------------------------------------------------------
# load the data table: "iris"
# take elements from 1 to 120
# filter with the predicate: ((Sepal.Width greater than 2.4) и (Petal.Length less than 5.5))
# group by the columns: Species
# show the count(s)
# ============================================================
# Python::pandas
# ------------------------------------------------------------
# obj = example_dataset('iris')
# obj = obj.iloc[1-1:120]
# obj = obj[((obj["Sepal.Width"]> 2.4) & (obj["Petal.Length"]< 5.5))]
# obj = obj.groupby(["Species"])
# print(obj.size())
# ============================================================
# Raku::Reshapers
# ------------------------------------------------------------
# my $obj = example-dataset('iris') ;
# $obj = $obj[ (1 - 1) ... (120 - 1 ) ] ;
# $obj = $obj.grep({ $_{"Sepal.Width"} > 2.4 and $_{"Petal.Length"} < 5.5 }).Array ;
# $obj = group-by($obj, "Species") ;
# say "counts: ", $obj>>.elems
# ============================================================
# Spanish
# ------------------------------------------------------------
# cargar la tabla: "iris"
# tomar los elementos de 1 a 120
# filtrar con la condicion: ((Sepal.Width más grande 2.4) y (Petal.Length menos 5.5))
# agrupar con columnas: "Species"
# mostrar recuentos
# ============================================================
# Russian
# ------------------------------------------------------------
# загрузить таблицу: "iris"
# взять элементы с 1 по 120
# фильтровать с предикатом: ((Sepal.Width больше 2.4) и (Petal.Length меньше 5.5))
# групировать с колонками: Species
# показать число
```

-------

## Classification workflows

```perl6
use DSL::English::ClassificationWorkflows;

my $command = '
използвай dfTitanic;
раздели данните с цепещо съотношение 0.82;
направи gradient boosted trees класификатор;
покажи TruePositiveRate и FalsePositiveRate;
';

for <English Russian WL::ClCon> -> $t {
    say '=' x 60, "\n", $t, "\n", '-' x 60;
    say ToClassificationWorkflowCode($command, $t, language => 'Bulgarian', format => 'code');
}
```
```
# ============================================================
# English
# ------------------------------------------------------------
# use the data: dfTitanic 
# split into training and testing data with the proportion 0.82 
# train classifier with method: gradient boosted trees
# ============================================================
# Russian
# ------------------------------------------------------------
# использовать данные: dfTitanic 
# разделить данные на пропорцию 0.82 
# обучить классификатор методом: gradient boosted trees
# ============================================================
# WL::ClCon
# ------------------------------------------------------------
# ClConUnit[ dfTitanic ] \[DoubleLongRightArrow]
# ClConSplitData[ 0.82 ] \[DoubleLongRightArrow]
# ClConMakeClassifier[ "GradientBoostedTrees" ] \[DoubleLongRightArrow]
# ClConClassifierMeasurements[ {"Recall", "FalsePositiveRate"} ] \[DoubleLongRightArrow] ClConEchoValue[]
```

-------

## Latent Semantic Analysis

```perl6
use DSL::English::LatentSemanticAnalysisWorkflows;

my $command = '
създай със textHamlet;
направи документ-термин матрица със автоматични стоп думи;
приложи LSI функциите IDF, TermFrequency, и Cosine;
извади 12 теми чрез NNMF и максимален брой стъпки 12;
покажи таблица  на темите с 12 термина;
покажи текущата лентова стойност
';

for <English Python::LSAMon R::LSAMon Russian> -> $t {
    say '=' x 60, "\n", $t, "\n", '-' x 60;
    say ToLatentSemanticAnalysisWorkflowCode($command, $t, language => 'Bulgarian', format => 'code');
}
```
```
#ERROR: Possible misspelling of 'термини' as 'термина'.
#ERROR: Possible misspelling of 'термини' as 'термина'.
#ERROR: Possible misspelling of 'термини' as 'термина'.
#ERROR: Possible misspelling of 'термини' as 'термина'.
# ============================================================
# English
# ------------------------------------------------------------
# create LSA object with the data: textHamlet
# make the document-term matrix with the parameters: use the stop words: NULL
# apply the latent semantic analysis (LSI) functions: global weight function : "IDF", local weight function : "None", normalizer function : "Cosine"
# extract 12 topics using the parameters: method : Non-Negative Matrix Factorization (NNMF), max number of steps : 12
# show topics table using the parameters: numberOfTerms = 12
# show the pipeline value
# ============================================================
# Python::LSAMon
# ------------------------------------------------------------
# LatentSemanticAnalyzer(textHamlet).make_document_term_matrix( stop_words = None).apply_term_weight_functions(global_weight_func = "IDF", local_weight_func = "None", normalizer_func = "Cosine").extract_topics(number_of_topics = 12, method = "NNMF", max_steps = 12).echo_topics_table(numberOfTerms = 12).echo_value()
# ============================================================
# R::LSAMon
# ------------------------------------------------------------
# LSAMonUnit(textHamlet) %>%
# LSAMonMakeDocumentTermMatrix( stopWords = NULL) %>%
# LSAMonApplyTermWeightFunctions(globalWeightFunction = "IDF", localWeightFunction = "None", normalizerFunction = "Cosine") %>%
# LSAMonExtractTopics( numberOfTopics = 12, method = "NNMF",  maxSteps = 12) %>%
# LSAMonEchoTopicsTable(numberOfTerms = 12) %>%
# LSAMonEchoValue()
# ============================================================
# Russian
# ------------------------------------------------------------
# создать латентный семантический анализатор с данных: textHamlet
# сделать матрицу документов-терминов с параметрами: стоп-слова: null
# применять функции латентного семантического индексирования (LSI): глобальная весовая функция: "IDF", локальная весовая функция: "None", нормализующая функция: "Cosine"
# извлечь 12 тем с параметрами: метод: Разложение Неотрицательных Матричных Факторов (NNMF), максимальное число шагов: 12
# показать таблицу темы по параметрам: numberOfTerms = 12
# показать текущее значение конвейера
```

-------

## Quantile Regression Workflows

```perl6
use DSL::English::QuantileRegressionWorkflows;

my $command = '
създай с dfTemperatureData;
премахни липсващите стойности;
покажи данново обобщение;
премащабирай двете оси;
изчисли квантилна регресия с 20 възела и вероятности от 0.1 до 0.9 със стъпка 0.1;
покажи диаграма с дати;
покажи чертеж на абсолютните грешки;
покажи текущата лентова стойност
';

for <English R::QRMon Russian WL::QRMon> -> $t {
    say '=' x 60, "\n", $t, "\n", '-' x 60;
    say ToQuantileRegressionWorkflowCode($command, $t, language => 'Bulgarian', format => 'code');
}
```
```
#ERROR: Possible misspelling of 'възли' as 'възела'.
#ERROR: Possible misspelling of 'възли' as 'възела'.
#ERROR: Possible misspelling of 'възли' as 'възела'.
#ERROR: Possible misspelling of 'възли' as 'възела'.
# ============================================================
# English
# ------------------------------------------------------------
# create quantile regression object with the data: dfTemperatureData
# delete missing values
# show data summary
# rescale: over both regressor and value axes
# compute quantile regression with parameters: degrees of freedom (knots): 20, automatic probabilities
# show plot with parameters: use date axis
# show plot of relative errors
# show the pipeline value
# ============================================================
# R::QRMon
# ------------------------------------------------------------
# QRMonUnit( data = dfTemperatureData) %>%
# QRMonDeleteMissing() %>%
# QRMonEchoDataSummary() %>%
# QRMonRescale(regressorAxisQ = TRUE, valueAxisQ = TRUE) %>%
# QRMonQuantileRegression(df = 20, probabilities = seq(0.1, 0.9, 0.1)) %>%
# QRMonPlot( datePlotQ = TRUE) %>%
# QRMonErrorsPlot( relativeErrorsQ = TRUE) %>%
# QRMonEchoValue()
# ============================================================
# Russian
# ------------------------------------------------------------
# создать объект квантильной регрессии с данными: dfTemperatureData
# удалить пропущенные значения
# показать сводку данных
# перемасштабировать: по осям регрессии и значений
# рассчитать квантильную регрессию с параметрами: степени свободы (узлы): 20, автоматическими вероятностями
# показать диаграмму с параметрами: использованием оси дат
# показать диаграму на относительных ошибок
# показать текущее значение конвейера
# ============================================================
# WL::QRMon
# ------------------------------------------------------------
# QRMonUnit[dfTemperatureData] \[DoubleLongRightArrow]
# QRMonDeleteMissing[] \[DoubleLongRightArrow]
# QRMonEchoDataSummary[] \[DoubleLongRightArrow]
# QRMonRescale["Axes"->{True, True}] \[DoubleLongRightArrow]
# QRMonQuantileRegression["Knots" -> 20, "Probabilities" -> Range[0.1, 0.9, 0.1]] \[DoubleLongRightArrow]
# QRMonDateListPlot[] \[DoubleLongRightArrow]
# QRMonErrorPlots[ "RelativeErrors" -> True] \[DoubleLongRightArrow]
# QRMonEchoValue[]
```

-------

## Recommender workflows

```perl6
use DSL::English::RecommenderWorkflows;

my $command = '
създай чрез dfTitanic;
препоръчай със профила "male" и "died";
покажи текущата лентова стойност
';

for <English Python::SMRMon R::SMRMon Russian> -> $t {
    say '=' x 60, "\n", $t, "\n", '-' x 60;
    say ToRecommenderWorkflowCode($command, $t, language => 'Bulgarian', format => 'code');
}
```
```
# ============================================================
# English
# ------------------------------------------------------------
# create with data table: dfTitanic
# recommend with the profile: ["male", "died"]
# show the pipeline value
# ============================================================
# Python::SMRMon
# ------------------------------------------------------------
# obj = SparseMatrixRecommender().create_from_wide_form(data = dfTitanic).recommend_by_profile( profile = ["male", "died"]).echo_value()
# ============================================================
# R::SMRMon
# ------------------------------------------------------------
# SMRMonCreate(data = dfTitanic) %>%
# SMRMonRecommendByProfile( profile = c("male", "died")) %>%
# SMRMonEchoValue()
# ============================================================
# Russian
# ------------------------------------------------------------
# создать с таблицу: dfTitanic
# рекомендуй с профилю: ["male", "died"]
# показать текущее значение конвейера
```

-------

## Implementation notes

The rules in the file
["DataQueryPhrases.rakumod"](./lib/DSL/Bulgarian/DataQueryWorkflows/Grammar/DataQueryPhrases.rakumod)
are derived from file
["DataQueryPhrases-template"](./lib/DSL/Bulgarian/DataQueryWorkflows/Grammar/DataQueryPhrases-template)
using the package
["Grammar::TokenProcessing"](https://github.com/antononcube/Raku-Grammar-TokenProcessing)
, [AAp3].

In order to have Bulgarian commands parsed and interpreted into code the steps taken were
split into four phases: 

1. Utilities preparation
2. Bulgarian words and phrases addition and preparation
3. Preliminary functionality experiments
4. Packages code refactoring


### Utilities preparation

Since the beginning of the work on translation of the computational DSLs into programming code
it was clear that some the required code transformations have to be automated.

While doing the preparation work -- and in general, while the DSL-translation work matured -- 
it became clear that there are several directives to follow:

1. Make and use Command Line Interface (CLI) scripts that do code transformation or generation.

2. Adhere to of the [Eric Raymond's 17 Unix Rules](https://en.wikipedia.org/wiki/Unix_philosophy), [Wk1]:
   - *Make data complicated when required, not the program*
   - *Write abstract programs that generate code instead of writing code by hand*

In order to facilitate the  "from Bulgarian" project the package "Grammar::TokenProcessing", [AAp3],
was "finalized." The initial versions of that package were used from the very beginning of the
DSLs grammar development in order to facilitate handling of misspellings.

### (Current) recipe

This sub-section lists the steps for endowing a certain already developed workflows DSL package 
with Bulgarian translations.

Denote the DSL workflows we focus on as DOMAIN (workflows.) 
For example, DOMAIN can stand for `DataQueryWorkflows`, or `RecommenderWorkflows`.

*Remark:* In the recipe steps below DOMAIN would be
[`DataQueryWorkflows`]()

It is assumed that:

- DOMAIN in English are already developed. 

- Since both English and Bulgarian are analytical, non-agglutinative languages "just" replacing 
  English words with Bulgarian words in DOMAIN would produce good enough parsers of Bulgarian. 

Here are the steps:

1. Add global Bulgarian words (*optional*)
   
   1. Add Bulgarian words and phrases in the 
      [DSL::Shared](https://github.com/antononcube/Raku-DSL-Shared) file 
      ["Roles/Bulgarian/CommonSpeechParts-template"](https://github.com/antononcube/Raku-DSL-Shared/blob/master/lib/DSL/Shared/Roles/Bulgarian/CommonSpeechParts-template).
   
   2. Generate the file 
      [Roles/Bulgarian/CommonSpeechParts.rakumod](https://github.com/antononcube/Raku-DSL-Shared/blob/master/lib/DSL/Shared/Roles/Bulgarian/CommonSpeechParts.rakumod)
      using the CLI script
      [`AddFuzzyMatching`](https://github.com/antononcube/Raku-Grammar-TokenProcessing/blob/main/bin/AddFuzzyMatching)

   3. Consider translating, changing, or refactoring global files, like,
      [Roles/English/TimeIntervalSpec.rakumod](https://github.com/antononcube/Raku-DSL-Shared/blob/master/lib/DSL/Shared/Roles/English/TimeIntervalSpec.rakumod)
   
2. Translate DOMAIN English words and phrases into Bulgarian

   1. Take the file 
      [DOMAIN/Grammar/DOMAIN-template](https://github.com/antononcube/Raku-DSL-English-DataQueryWorkflows/blob/master/lib/DSL/English/DataQueryWorkflows/Grammar/DataQueryPhrases-template)
      and translate its words into Bulgarian

3. Add the corresponding files into [DSL::Bulgarian](https://github.com/antononcube/Raku-DSL-Bulgarian), [AAp1].

   1. Use the `DOMAIN/Grammarish.rakumod` role. 
      - The English DOMAIN package should have such rule. If do not do the corresponding code refactoring. 
   
   2. Test with implemented DOMAIN languages.
   
   3. See the example grammar and role in 
      [DataQueryWorkflows in DSL::Bulgarian](https://github.com/antononcube/Raku-DSL-Bulgarian/tree/main/lib/DSL/Bulgarian/DataQueryWorkflows).   

-------

## References

### Articles

[AA1] Anton Antonov,
["Introduction to data wrangling with Raku"](https://rakuforprediction.wordpress.com/2021/12/31/introduction-to-data-wrangling-with-raku), 
(2021),
[RakuForPrediction at WordPress](https://rakuforprediction.wordpress.com).

[Wk1] Wikipedia entry,
[UNIX-philosophy rules](https://en.wikipedia.org/wiki/Unix_philosophy).

### Packages

[AAp1] Anton Antonov,
[DSL::Bulgarian, Raku package](https://github.com/antononcube/Raku-DSL-Bulgarian),
(2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp2] Anton Antonov,
[DSL::Shared, Raku package](https://github.com/antononcube/Raku-DSL-Shared),
(2018-2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp3] Anton Antonov,
[Grammar::TokenProcessing, Raku project](https://github.com/antononcube/Raku-Grammar-TokenProcessing)
(2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp4] Anton Antonov,
[DSL::English::ClassificationWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-General-ClassificationWorkflows),
(2018-2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp5] Anton Antonov,
[DSL::English::DataQueryWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-English-DataQueryWorkflows),
(2020-2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp6] Anton Antonov,
[DSL::English::LatentSemanticAnalysisWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-General-LatentSemanticAnalysisWorkflows),
(2018-2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp7] Anton Antonov,
[DSL::English::QuantileRegressionWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-General-QuantileRegressionWorkflows),
(2018-2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp8] Anton Antonov,
[DSL::English::QuantileRegressionWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-General-RecommenderWorkflows),
(2018-2022),
[GitHub/antononcube](https://github.com/antononcube).
