use v6;

use DSL::Shared::Utilities::DeterminedWordsMatching;
use DSL::Shared::Roles::Bulgarian::PipelineCommand;

# Recommender specific phrases
role DSL::Bulgarian::RecommenderWorkflows::Grammar::RecommenderPhrases
                does DSL::Shared::Roles::Bulgarian::PipelineCommand {

    token word-spec:sym<Bulgarian> { :i  \w+  }

    # Regular tokens / rules
    token aggregate-verb:sym<Bulgarian> { :i 'агрегирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'агрегирай', 2) }> | 'обедени' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обедени', 2) }> }
    token aggregation-noun:sym<Bulgarian> { :i 'агрегация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'агрегация', 2) }> | 'обединение' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обединение', 2) }> }
    token anomalies-noun:sym<Bulgarian> { :i 'аномалии' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'аномалии', 2) }> }
    token anomaly-noun:sym<Bulgarian> { :i 'аномалия' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'аномалия', 2) }> }
    token colnames-noun:sym<Bulgarian> { :i 'colnames' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'colnames', 2) }> }
    token consumption-noun:sym<Bulgarian> { :i 'консумация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'консумация', 2) }> }
    token density-noun:sym<Bulgarian> { :i 'гъстота' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'гъстота', 2) }> | 'разреденост' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разреденост', 2) }> }
    token dimensions-noun:sym<Bulgarian> { :i 'размери' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'размери', 2) }> }
    token explain-verb:sym<Bulgarian> { :i 'обясни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обясни', 2) }> }
    token explanations-noun:sym<Bulgarian> { :i 'обяснение' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обяснение', 2) }> | 'обяснения' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обяснения', 2) }> }
    token function-noun:sym<Bulgarian> { :i 'функция' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'функция', 2) }> }
    token history-noun:sym<Bulgarian> { :i 'история' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'история', 2) }> }
    token item-noun:sym<Bulgarian> { :i 'нещо' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нещо', 2) }> }
    token items-noun:sym<Bulgarian> { :i 'неща' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'неща', 2) }> }
    token matrices-noun:sym<Bulgarian> { :i 'матрици' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'матрици', 2) }> }
    token matrix-noun:sym<Bulgarian> { :i 'матрица' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'матрица', 2) }> }
    token matrixes-noun:sym<Bulgarian> { :i 'матрици' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'матрици', 2) }> }
    token metadata-noun:sym<Bulgarian> { :i  'мета-данни' | 'мета' \h* 'данни'  }
    token most-determiner:sym<Bulgarian> { :i 'повечето' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'повечето', 2) }> }
    token nearest-adjective:sym<Bulgarian> { :i  'най' \h* '-' \h* близки  }
    token neighbors-noun:sym<Bulgarian> { :i 'съседи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'съседи', 2) }> }
    token outlier-noun:sym<Bulgarian> { :i 'извънредност' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'извънредност', 2) }> | 'извънреден' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'извънреден', 2) }> | 'извънредна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'извънредна', 2) }> }
    token outliers-noun:sym<Bulgarian> { :i  'извънредности' | <outlier-noun>  }
    token profile-noun:sym<Bulgarian> { :i 'профил' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'профил', 2) }> }
    token proofs-noun:sym<Bulgarian> { :i 'доказателство' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'доказателство', 2) }> | 'доказателствa' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'доказателствa', 2) }> | 'свидетелство' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'свидетелство', 2) }> | 'свидетелства' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'свидетелства', 2) }> }
    token properties-noun:sym<Bulgarian> { :i 'свойства' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'свойства', 2) }> | 'характеристики' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'характеристики', 2) }> }
    token property-noun:sym<Bulgarian> { :i 'свойство' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'свойство', 2) }> | 'характеристика' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'характеристика', 2) }> }
    token prove-verb:sym<Bulgarian> { :i 'докажи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'докажи', 2) }> }
    token proximity-noun:sym<Bulgarian> { :i 'близост' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'близост', 2) }> }
    token recommend-directive:sym<Bulgarian> { :i  <recommend-verb>  }
    token recommend-verb:sym<Bulgarian> { :i 'препоръчай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'препоръчай', 2) }> | 'внуши' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'внуши', 2) }> }
    token recommendation-noun:sym<Bulgarian> { :i 'препоръчка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'препоръчка', 2) }> | 'препоръка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'препоръка', 2) }> }
    token recommendations-noun:sym<Bulgarian> { :i 'препоръчки' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'препоръчки', 2) }> | 'препоръки' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'препоръки', 2) }> }
    token recommended-adjective:sym<Bulgarian> { :i 'препоръчан' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'препоръчан', 2) }> | 'препоръчана' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'препоръчана', 2) }> | 'препоръчено' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'препоръчено', 2) }> }
    token recommender-noun:sym<Bulgarian> { :i 'препоръчител' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'препоръчител', 2) }> | 'препоръчителка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'препоръчителка', 2) }> }
    token relevant-adjective:sym<Bulgarian> { :i 'подходящ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'подходящ', 2) }> | 'подходяща' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'подходяща', 2) }> }
    token row-noun:sym<Bulgarian> { :i 'редица' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'редица', 2) }> }
    token rownames-noun:sym<Bulgarian> { :i 'rownames' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'rownames', 2) }> }
    token tag-adjective:sym<Bulgarian> { :i  <tag-noun>  }
    token tag-noun:sym<Bulgarian> { :i 'етикет' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'етикет', 2) }> }
    token threshold-noun:sym<Bulgarian> { :i 'праг' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'праг', 2) }> }
    token sub-matrix-noun:sym<Bulgarian> { :i  'под' \h+ '-' \h+ <matrix-noun>  }
    token sub-matrices-noun:sym<Bulgarian> { :i  'под' \h+ '-' \h+ <matrices-noun>  }

    rule prove-directive:sym<Bulgarian> {  <prove-verb> | <explain-verb>  }
    rule consumption-history:sym<Bulgarian> {  <consumption-slot>? <history-noun>  }
    rule consumption-profile:sym<Bulgarian> {  <consumption-slot>? <profile-noun>  }
    rule cross-tabulate-phrase:sym<Bulgarian> {  'cross' [ 'tabulate' | 'tabulation' ]  }
    rule extend-recommendations-phrase:sym<Bulgarian> {  [ <extend-verb> | <join-verb> 'across'? ] <recommendations-noun>?  }
    rule history-phrase:sym<Bulgarian> {  [ <item-noun> ]? <history-noun>  }
    rule most-relevant:sym<Bulgarian> {  <most-determiner> <relevant-adjective>  }
    rule nearest-neighbors:sym<Bulgarian> {  <nearest-adjective> <neighbors-noun> | 'nns'  }
    rule recommendation-matrices:sym<Bulgarian> {  [ <recommendation-noun> | <recommender-noun> ]? <matrices-noun>  }
    rule recommendation-matrix:sym<Bulgarian> {  [ <recommendation-noun> | <recommender-noun> ]? <matrix-noun>  }
    rule recommendation-results:sym<Bulgarian> {  [ <recommendation-noun> | <recommendations-noun> | 'recommendation\'s' ] <results>  }
    rule recommended-items:sym<Bulgarian> {  <recommended-adjective> <items-slot> | [ <recommendations-noun> | <recommendation-noun> ]    <.results>?     }
    rule recommender-object-phrase:sym<Bulgarian> {  <recommender-noun> [ <object-noun> | <system-noun> ]? | 'smr'  }
    rule sparse-matrix:sym<Bulgarian> {  <sparse-adjective> <matrix-noun>  }
    rule sub-matrices-phrase:sym<Bulgarian> {  <sub-matrices-noun> | <sub-prefix> <matrices-noun> | <sub-prefix> <matrixes-noun>  }
    rule sub-matrix-phrase:sym<Bulgarian> {  <sub-matrix-noun> | <sub-prefix> <matrix-noun>  }
    rule tag-type-phrase:sym<Bulgarian> {  [ <tag-noun> | <tag-adjective> ] <type-noun>  }
    rule tag-types-phrase:sym<Bulgarian> {  [ <tag-noun> | <tag-adjective> ] <types-noun>  }
    rule what-are-phrase:sym<Bulgarian> {  <what-pronoun> [ <are-verb> | <is-verb> ]  }


    # LSA specific
    token analysis-noun:sym<Bulgarian> { :i 'анализ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'анализ', 2) }> }
    token document-noun:sym<Bulgarian> { :i 'документ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'документ', 2) }> }
    token entries-noun:sym<Bulgarian> { :i 'елементи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'елементи', 2) }> }
    token indexing-noun:sym<Bulgarian> { :i 'индексиране' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'индексиране', 2) }> }
    token ingest-verb:sym<Bulgarian> { :i 'обработи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обработи', 2) }> | 'приеми' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'приеми', 2) }> | 'зареди' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'зареди', 2) }> | 'изполвай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изполвай', 2) }> | 'вземи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'вземи', 2) }> }
    token latent-adjective:sym<Bulgarian> { :i 'латентен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'латентен', 2) }> | 'латентно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'латентно', 2) }> }
    token semantic-adjective:sym<Bulgarian> { :i 'семантичен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'семантичен', 2) }> }
    token term-noun:sym<Bulgarian> { :i 'термин' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'термин', 2) }> }
    token weight-noun:sym<Bulgarian> { :i 'тегло' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'тегло', 2) }> }

    rule doc-term-mat:sym<Bulgarian> {  [ <document-noun> | <item-noun> ] [ <term-noun> | <word-noun> ] <matrix-noun>  }
    rule lsa-object:sym<Bulgarian> {  <lsa-phrase>? <object-noun>  }
    rule lsa-phrase:sym<Bulgarian> {  <latent-adjective> <semantic-adjective> <analysis-noun> | 'lsa' | 'LSA'  }
    rule lsi-phrase:sym<Bulgarian> {  <latent-adjective> <semantic-adjective> <indexing-noun> | 'lsi' | 'LSI'  }
    rule matrix-entries:sym<Bulgarian> {  [ <doc-term-mat> | <matrix-noun> ]? <entries-noun>  }
    rule the-outliers:sym<Bulgarian> {  <the-determiner> <outliers>  }

    # LSI specific
    token frequency-noun:sym<Bulgarian> { :i 'честота' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'честота', 2) }> }
    token functions-noun:sym<Bulgarian> { :i 'функция' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'функция', 2) }> | 'функции' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'функции', 2) }> }
    token global-adjective:sym<Bulgarian> { :i 'глобален' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'глобален', 2) }> | 'глобално' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'глобално', 2) }> }
    token inverse-adjective:sym<Bulgarian> { :i 'обратент' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обратент', 2) }> | 'обратно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обратно', 2) }> }
    token local-adjective:sym<Bulgarian> { :i 'локален' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'локален', 2) }> | 'локално' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'локално', 2) }> }
    token normalization-noun:sym<Bulgarian> { :i 'номализация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'номализация', 2) }> | 'нормализиране' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нормализиране', 2) }> }
    token normalizer-noun:sym<Bulgarian> { :i 'нормализатор' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нормализатор', 2) }> }
    token normalizing-noun:sym<Bulgarian> { :i 'нормализиране' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нормализиране', 2) }> }

    rule global-function-phrase:sym<Bulgarian> {  <global-adjective> <term-noun> ?<weight-noun>? <function-noun>  }
    rule join-type-phrase:sym<Bulgarian> {  <join-verb>? <type-noun>  }
    rule local-function-phrase:sym<Bulgarian> {  <local-adjective> <term-noun>? <weight-noun>? <function-noun>  }
    rule normalizer-function-phrase:sym<Bulgarian> {  [ <normalizer-noun> | <normalizing-noun> | <normalization-noun> ] <term-noun>? <weight-noun>? <function-noun>?  }

}
