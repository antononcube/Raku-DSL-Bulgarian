# Raku DSL::Bulgarian

## In brief

This Raku package facilitates the specification of computational workflows using 
natural language commands in Bulgarian.

From commands given in specific (natural) Domain Specific Languages (DSLs) 
executable code is generated for different programming languages: 
Julia, Python, R, Raku, and Wolfram Language (aka Mathematica.)

Translation to other natural languages is also done: English, Korean, Russian, and Spanish.

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

-------

## Implementation notes

The rules in the file
["DataQueryPhrases.rakumod"](./lib/DSL/Bulgarian/DataQueryWorkflows/Grammar/DataQueryPhrases.rakumod)
are derived from the file
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
it was clear that some of the required code transformations have to be automated.

While doing the preparation work -- and in general, while the DSL-translation work matured -- 
it became clear that there are several directives to follow:

1. Make and use Command Line Interface (CLI) scripts that do code transformations or generate code.

2. Adhere to [Eric Raymond's 17 Unix Rules](https://en.wikipedia.org/wiki/Unix_philosophy), [Wk1]:
   - *Make data complicated when required, not the program*
   - *Write abstract programs that generate code instead of writing code by hand*

In order to facilitate the "from Bulgarian" project the package "Grammar::TokenProcessing", [AAp3],
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
