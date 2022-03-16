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
```
# ============================================================
# English
# ------------------------------------------------------------
# load the data table: \"iris\"
# group by the columns: Species
# show the count(s)
# ============================================================
# Python::pandas
# ------------------------------------------------------------
# obj = example_dataset('iris')
# obj = obj.groupby(["Species"])
# print(obj.size())
# ============================================================
# Raku::Reshapers
# ------------------------------------------------------------
# my $obj = example-dataset('iris') ;
# $obj = group-by( $obj, "Species") ;
# say "counts: ", $obj>>.elems
# ============================================================
# Russian
# ------------------------------------------------------------
# загрузить таблицу: \"iris\"
# групировать с колонками: Species
# показать число
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

*TBF...*

-------

## References

### Articles

[AA1] Anton Antonov,
["Introduction to data wrangling with Raku"](https://rakuforprediction.wordpress.com/2021/12/31/introduction-to-data-wrangling-with-raku), 
(2021),
[RakuForPrediction at WordPress](https://rakuforprediction.wordpress.com).

### Packages

[AAp1] Anton Antonov,
[DSL::Shared, Raku package](https://github.com/antononcube/Raku-DSL-Shared),
(2018-2022),
[GitHub/antononcube](https://github.com/antononcube).


[AAp2] Anton Antonov,
[DSL::General::DataQueryWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-General-DataQueryWorkflows),
(2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp3] Anton Antonov,
[DSL::English::DataQueryWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-English-DataQueryWorkflows),
(2020-2022),
[GitHub/antononcube](https://github.com/antononcube).