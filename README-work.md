# Raku DSL::Bulgarian

## In brief

This Raku package facilitates the specification computational workflows using 
natural language commands in Bulgarian.

Using the Domain Specific Languages (DSLs) executable code is generated for different
programming languages: Julia, Python, R, Raku, Wolfram Language.

Translation to other natural languages is also done: English, Korean, Russian, Spanish.

------

## Examples

### Data query (wrangling) workflows

```perl6
use DSL::General::DataQueryWorkflows;
use DSL::Bulgarian::DataQueryWorkflows::Grammar;

my $command = '
зареди данните iris;
групирай с колоната Species;
покажи броевете
';
for <English Python::pandas Raku::Reshapers Russian> -> $t {
    say '=' x 60, "\n", $t, "\n", '-' x 60;
    say ToDataQueryWorkflowCode($command, $t, lang => 'Bulgarian', format => 'code');
}
```

-------

## Implementation notes

The rules in the file
["DataQueryPhrases.rakumod"](./lib/DSL/Bulgarian/DataQueryWorkflows/Grammar/DataQueryPhrases.rakumod)
are derived from file
["DataQueryPhrases-template"](./lib/DSL/Bulgarian/DataQueryWorkflows/Grammar/DataQueryPhrases-template)
using the package
["Grammar::TokenProcessing"](https://github.com/antononcube/Raku-Grammar-TokenProcessing)
, [AAp2].

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
  
For the "from Bulgarian" project the package 

### (Current) recipe

This sub-section lists the steps for endowing a certain already developed workflows DSL package 
with Bulgarian translations.

Denote we DSL workflows we focus on as DOMAIN (workflows.) 
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
[DSL::General::DataQueryWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-General-DataQueryWorkflows),
(2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp5] Anton Antonov,
[DSL::English::DataQueryWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-English-DataQueryWorkflows),
(2020-2022),
[GitHub/antononcube](https://github.com/antononcube).