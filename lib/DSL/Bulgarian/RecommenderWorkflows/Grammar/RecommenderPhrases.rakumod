use v6;

use DSL::Shared::Utilities::DeterminedWordsMatching;
use DSL::Shared::Roles::Bulgarian::PipelineCommand;

# Recommender specific phrases
role DSL::Bulgarian::RecommenderWorkflows::Grammar::RecommenderPhrases
                does DSL::Shared::Roles::Bulgarian::PipelineCommand {

    token word-spec:sym<Bulgarian> { :i  \w+  }

    # Regular tokens / rules
    token across-adverb:sym<Bulgarian> { :i 'напречно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'напречно', 2) }> }
    token across-preposition:sym<Bulgarian> { :i 'през' | ([\w]+) <?{ $0.Str !(elem) <чрез праг> and is-bg-fuzzy-match($0.Str, 'през', 2) }> | 'чрез' | ([\w]+) <?{ $0.Str ne 'през' and is-bg-fuzzy-match($0.Str, 'чрез', 2) }> }
    token aggregate-verb:sym<Bulgarian> { :i 'агрегирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'агрегирай', 2) }> | 'обедени' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обедени', 2) }> }
    token aggregation-noun:sym<Bulgarian> { :i 'агрегация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'агрегация', 2) }> | 'обединение' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обединение', 2) }> }
    token anomalies-noun:sym<Bulgarian> { :i 'аномалии' | ([\w]+) <?{ $0.Str ne 'аномалия' and is-bg-fuzzy-match($0.Str, 'аномалии', 2) }> }
    token anomaly-noun:sym<Bulgarian> { :i 'аномалия' | ([\w]+) <?{ $0.Str ne 'аномалии' and is-bg-fuzzy-match($0.Str, 'аномалия', 2) }> }
    token colnames-noun:sym<Bulgarian> { :i 'colnames' | ([\w]+) <?{ $0.Str ne 'rownames' and is-bg-fuzzy-match($0.Str, 'colnames', 2) }> }
    token consumption-noun:sym<Bulgarian> { :i 'консумация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'консумация', 2) }> }
    token density-noun:sym<Bulgarian> { :i 'гъстота' | ([\w]+) <?{ $0.Str ne 'честота' and is-bg-fuzzy-match($0.Str, 'гъстота', 2) }> | 'разреденост' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разреденост', 2) }> }
    token dimensions-noun:sym<Bulgarian> { :i 'размери' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'размери', 2) }> }
    token explain-verb:sym<Bulgarian> { :i 'обясни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обясни', 2) }> }
    token explanations-noun:sym<Bulgarian> { :i 'обяснение' | ([\w]+) <?{ $0.Str ne 'обяснения' and is-bg-fuzzy-match($0.Str, 'обяснение', 2) }> | 'обяснения' | ([\w]+) <?{ $0.Str ne 'обяснение' and is-bg-fuzzy-match($0.Str, 'обяснения', 2) }> }
    token function-noun:sym<Bulgarian> { :i 'функция' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'функция', 2) }> }
    token history-noun:sym<Bulgarian> { :i 'история' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'история', 2) }> }
    token item-noun:sym<Bulgarian> { :i 'нещо' | ([\w]+) <?{ $0.Str ne 'неща' and is-bg-fuzzy-match($0.Str, 'нещо', 2) }> }
    token items-noun:sym<Bulgarian> { :i 'неща' | ([\w]+) <?{ $0.Str ne 'нещо' and is-bg-fuzzy-match($0.Str, 'неща', 2) }> }
    token matrices-noun:sym<Bulgarian> { :i 'матрици' | ([\w]+) <?{ $0.Str ne 'матрица' and is-bg-fuzzy-match($0.Str, 'матрици', 2) }> }
    token matrix-noun:sym<Bulgarian> { :i 'матрица' | ([\w]+) <?{ $0.Str ne 'матрици' and is-bg-fuzzy-match($0.Str, 'матрица', 2) }> }
    token matrixes-noun:sym<Bulgarian> { :i 'матрици' | ([\w]+) <?{ $0.Str ne 'матрица' and is-bg-fuzzy-match($0.Str, 'матрици', 2) }> }
    token metadata-noun:sym<Bulgarian> { :i  'мета-данни' | 'мета' \h* 'данни'  }
    token most-determiner:sym<Bulgarian> { :i 'повечето' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'повечето', 2) }> }
    token nearest-adjective:sym<Bulgarian> { :i  'най' \h* '-' \h* близки  }
    token neighbors-noun:sym<Bulgarian> { :i 'съседи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'съседи', 2) }> }
    token profile-noun:sym<Bulgarian> { :i 'профил' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'профил', 2) }> }
    token proofs-noun:sym<Bulgarian> { :i 'доказателство' | ([\w]+) <?{ $0.Str ne 'доказателствa' and is-bg-fuzzy-match($0.Str, 'доказателство', 2) }> | 'доказателствa' | ([\w]+) <?{ $0.Str ne 'доказателство' and is-bg-fuzzy-match($0.Str, 'доказателствa', 2) }> | 'свидетелство' | ([\w]+) <?{ $0.Str ne 'свидетелства' and is-bg-fuzzy-match($0.Str, 'свидетелство', 2) }> | 'свидетелства' | ([\w]+) <?{ $0.Str ne 'свидетелство' and is-bg-fuzzy-match($0.Str, 'свидетелства', 2) }> }
    token properties-noun:sym<Bulgarian> { :i 'свойства' | ([\w]+) <?{ $0.Str ne 'свойство' and is-bg-fuzzy-match($0.Str, 'свойства', 2) }> | 'характеристики' | ([\w]+) <?{ $0.Str ne 'характеристика' and is-bg-fuzzy-match($0.Str, 'характеристики', 2) }> }
    token property-noun:sym<Bulgarian> { :i 'свойство' | ([\w]+) <?{ $0.Str ne 'свойства' and is-bg-fuzzy-match($0.Str, 'свойство', 2) }> | 'характеристика' | ([\w]+) <?{ $0.Str ne 'характеристики' and is-bg-fuzzy-match($0.Str, 'характеристика', 2) }> }
    token prove-verb:sym<Bulgarian> { :i 'докажи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'докажи', 2) }> }
    token proximity-noun:sym<Bulgarian> { :i 'близост' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'близост', 2) }> }
    token recommend-directive:sym<Bulgarian> { :i <recommend-verb> }
    token recommend-verb:sym<Bulgarian> { :i 'препоръчай' | ([\w]+) <?{ $0.Str !(elem) <препоръчка препоръка препоръчки препоръчан препоръчана препоръчани> and is-bg-fuzzy-match($0.Str, 'препоръчай', 2) }> | 'внуши' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'внуши', 2) }> }
    token recommendation-noun:sym<Bulgarian> { :i 'препоръчка' | ([\w]+) <?{ $0.Str !(elem) <препоръчай препоръка препоръчки препоръки препоръчан препоръчана> and is-bg-fuzzy-match($0.Str, 'препоръчка', 2) }> | 'препоръка' | ([\w]+) <?{ $0.Str !(elem) <препоръчай препоръчка препоръчки препоръки препоръчан> and is-bg-fuzzy-match($0.Str, 'препоръка', 2) }> }
    token recommendations-noun:sym<Bulgarian> { :i 'препоръчки' | ([\w]+) <?{ $0.Str !(elem) <препоръчай препоръчка препоръка препоръки препоръчан препоръчани> and is-bg-fuzzy-match($0.Str, 'препоръчки', 2) }> | 'препоръки' | ([\w]+) <?{ $0.Str !(elem) <препоръчка препоръка препоръчки> and is-bg-fuzzy-match($0.Str, 'препоръки', 2) }> }
    token recommended-adjective:sym<Bulgarian> { :i 'препоръчан' | ([\w]+) <?{ $0.Str !(elem) <препоръчай препоръчка препоръка препоръчки препоръчана препоръчено препоръчани> and is-bg-fuzzy-match($0.Str, 'препоръчан', 2) }> | 'препоръчана' | ([\w]+) <?{ $0.Str !(elem) <препоръчай препоръчка препоръчан препоръчено препоръчани> and is-bg-fuzzy-match($0.Str, 'препоръчана', 2) }> | 'препоръчено' | ([\w]+) <?{ $0.Str !(elem) <препоръчан препоръчана препоръчани> and is-bg-fuzzy-match($0.Str, 'препоръчено', 2) }> | 'препоръчани' | ([\w]+) <?{ $0.Str !(elem) <препоръчай препоръчки препоръчан препоръчана препоръчено> and is-bg-fuzzy-match($0.Str, 'препоръчани', 2) }> }
    token recommender-noun:sym<Bulgarian> { :i 'препоръчител' | ([\w]+) <?{ $0.Str ne 'препоръчителка' and is-bg-fuzzy-match($0.Str, 'препоръчител', 2) }> | 'препоръчителка' | ([\w]+) <?{ $0.Str ne 'препоръчител' and is-bg-fuzzy-match($0.Str, 'препоръчителка', 2) }> }
    token relevant-adjective:sym<Bulgarian> { :i 'подходящ' | ([\w]+) <?{ $0.Str ne 'подходяща' and is-bg-fuzzy-match($0.Str, 'подходящ', 2) }> | 'подходяща' | ([\w]+) <?{ $0.Str ne 'подходящ' and is-bg-fuzzy-match($0.Str, 'подходяща', 2) }> }
    token row-noun:sym<Bulgarian> { :i 'редица' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'редица', 2) }> }
    token rownames-noun:sym<Bulgarian> { :i 'rownames' | ([\w]+) <?{ $0.Str ne 'colnames' and is-bg-fuzzy-match($0.Str, 'rownames', 2) }> }
    token tag-adjective:sym<Bulgarian> { :i <tag-noun> }
    token tag-noun:sym<Bulgarian> { :i 'етикет' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'етикет', 2) }> }
    token threshold-noun:sym<Bulgarian> { :i 'праг' | ([\w]+) <?{ $0.Str ne 'през' and is-bg-fuzzy-match($0.Str, 'праг', 2) }> }
    token sub-matrix-noun:sym<Bulgarian> { :i  'под' \h+ '-' \h+ <matrix-noun>  }
    token sub-matrices-noun:sym<Bulgarian> { :i  'под' \h+ '-' \h+ <matrices-noun>  }

    rule prove-directive:sym<Bulgarian> { <prove-verb> | <explain-verb> }
    rule consumption-history:sym<Bulgarian> {  <consumption-noun>? <history-noun>  }
    rule consumption-profile:sym<Bulgarian> {  <consumption-noun>? <profile-noun>  }
    rule cross-tabulate-phrase:sym<Bulgarian> {  'cross' [ 'tabulate' | 'tabulation' ]  }
    rule extend-recommendations-phrase:sym<Bulgarian> {  <across-adverb> <join-noun> <recommendations-noun>?  }
    rule history-phrase:sym<Bulgarian> {  [ <item-noun> ]? <history-noun>  }
    rule most-relevant:sym<Bulgarian> {  <most-determiner> <relevant-adjective>  }
    rule nearest-neighbors:sym<Bulgarian> {  <nearest-adjective> <neighbors-noun> | 'nns'  }
    rule recommendation-matrices:sym<Bulgarian> {  [ <recommendation-noun> | <recommender-noun> ]? <matrices-noun>  }
    rule recommendation-matrix:sym<Bulgarian> {  [ <recommendation-noun> | <recommender-noun> ]? <matrix-noun>  }
    rule recommendation-results:sym<Bulgarian> {  [ <recommendation-noun> | <recommendations-noun> | <recommended-adjective> ] <results>  }
    rule recommended-items:sym<Bulgarian> { <recommended-adjective> <items-noun> | [ <recommendations-noun> | <recommendation-noun> ]  <.results>? }
    rule recommender-object-phrase:sym<Bulgarian> {  <recommender-noun> [ <object-noun> | <system-noun> ]? | 'smr'  }
    rule sparse-matrix:sym<Bulgarian> {  <sparse-adjective> <matrix-noun>  }
    rule sub-matrices-phrase:sym<Bulgarian> {  <sub-matrices-noun> | <sub-prefix> <matrices-noun> | <sub-prefix> <matrixes-noun>  }
    rule sub-matrix-phrase:sym<Bulgarian> {  <sub-matrix-noun> | <sub-prefix> <matrix-noun>  }
    rule tag-type-phrase:sym<Bulgarian> {  [ <tag-noun> | <tag-adjective> ] <type-noun>  }
    rule tag-types-phrase:sym<Bulgarian> {  [ <tag-noun> | <tag-adjective> ] <types-noun>  }
    rule what-are-phrase:sym<Bulgarian> {  <what-pronoun> [ <are-verb> | <is-verb> ]  }


    # LSA specific
    token analysis-noun:sym<Bulgarian> { :i 'анализ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'анализ', 2) }> }
    token entries-noun:sym<Bulgarian> { :i 'елементи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'елементи', 2) }> }
    token indexing-noun:sym<Bulgarian> { :i 'индексиране' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'индексиране', 2) }> }
    token ingest-verb:sym<Bulgarian> { :i 'обработи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обработи', 2) }> | 'приеми' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'приеми', 2) }> | 'зареди' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'зареди', 2) }> | 'изполвай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изполвай', 2) }> | 'вземи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'вземи', 2) }> }
    token latent-adjective:sym<Bulgarian> { :i 'латентен' | ([\w]+) <?{ $0.Str ne 'латентно' and is-bg-fuzzy-match($0.Str, 'латентен', 2) }> | 'латентно' | ([\w]+) <?{ $0.Str ne 'латентен' and is-bg-fuzzy-match($0.Str, 'латентно', 2) }> }
    token semantic-adjective:sym<Bulgarian> { :i 'семантичен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'семантичен', 2) }> }
    token term-noun:sym<Bulgarian> { :i 'термин' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'термин', 2) }> }

    rule doc-term-mat:sym<Bulgarian> {  [ <document-noun> | <item-noun> ] [ <term-noun> | <word-noun> ] <matrix-noun>  }
    rule lsa-object:sym<Bulgarian> {  <lsa-phrase>? <object-noun>  }
    rule lsa-phrase:sym<Bulgarian> {  <latent-adjective> <semantic-adjective> <analysis-noun> | 'lsa' | 'LSA'  }
    rule lsi-phrase:sym<Bulgarian> {  <latent-adjective> <semantic-adjective> <indexing-noun> | 'lsi' | 'LSI'  }
    rule matrix-entries:sym<Bulgarian> {  [ <doc-term-mat> | <matrix-noun> ]? <entries-noun>  }
    rule the-outliers:sym<Bulgarian> {  <the-determiner> <outliers>  }

    # LSI specific
    token frequency-noun:sym<Bulgarian> { :i 'честота' | ([\w]+) <?{ $0.Str ne 'гъстота' and is-bg-fuzzy-match($0.Str, 'честота', 2) }> }
    token global-adjective:sym<Bulgarian> { :i 'глобален' | ([\w]+) <?{ $0.Str !(elem) <глобална глобално глобални локален> and is-bg-fuzzy-match($0.Str, 'глобален', 2) }> | 'глобална' | ([\w]+) <?{ $0.Str !(elem) <глобален глобално глобални локална> and is-bg-fuzzy-match($0.Str, 'глобална', 2) }> | 'глобално' | ([\w]+) <?{ $0.Str !(elem) <глобален глобална глобални локално> and is-bg-fuzzy-match($0.Str, 'глобално', 2) }> | 'глобални' | ([\w]+) <?{ $0.Str !(elem) <глобален глобална глобално локални> and is-bg-fuzzy-match($0.Str, 'глобални', 2) }> }
    token inverse-adjective:sym<Bulgarian> { :i 'обратент' | ([\w]+) <?{ $0.Str !(elem) <обратна обратно обратни> and is-bg-fuzzy-match($0.Str, 'обратент', 2) }> | 'обратна' | ([\w]+) <?{ $0.Str !(elem) <обратент обратно обратни> and is-bg-fuzzy-match($0.Str, 'обратна', 2) }> | 'обратно' | ([\w]+) <?{ $0.Str !(elem) <обратент обратна обратни> and is-bg-fuzzy-match($0.Str, 'обратно', 2) }> | 'обратни' | ([\w]+) <?{ $0.Str !(elem) <обратент обратна обратно> and is-bg-fuzzy-match($0.Str, 'обратни', 2) }> }
    token local-adjective:sym<Bulgarian> { :i 'локален' | ([\w]+) <?{ $0.Str !(elem) <глобален локална локално локални> and is-bg-fuzzy-match($0.Str, 'локален', 2) }> | 'локална' | ([\w]+) <?{ $0.Str !(elem) <глобална локален локално локални> and is-bg-fuzzy-match($0.Str, 'локална', 2) }> | 'локално' | ([\w]+) <?{ $0.Str !(elem) <глобално локален локална локални> and is-bg-fuzzy-match($0.Str, 'локално', 2) }> | 'локални' | ([\w]+) <?{ $0.Str !(elem) <глобални локален локална локално> and is-bg-fuzzy-match($0.Str, 'локални', 2) }> }
    token normalization-noun:sym<Bulgarian> { :i 'нормализация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нормализация', 2) }> | 'нормализиране' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нормализиране', 2) }> }
    token normalizer-noun:sym<Bulgarian> { :i 'нормализатор' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нормализатор', 2) }> }
    token normalizing-noun:sym<Bulgarian> { :i 'нормализиране' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нормализиране', 2) }> }

    rule global-function-phrase:sym<Bulgarian> {  <global-adjective> <term-noun> ?<weight-noun>? <function-noun>  }
    rule join-type-phrase:sym<Bulgarian> {  <join-verb>? <type-noun>  }
    rule local-function-phrase:sym<Bulgarian> {  <local-adjective> <term-noun>? <weight-noun>? <function-noun>  }
    rule normalizer-function-phrase:sym<Bulgarian> {  [ <normalizer-noun> | <normalizing-noun> | <normalization-noun> ] <term-noun>? <weight-noun>? <function-noun>?  }

}
