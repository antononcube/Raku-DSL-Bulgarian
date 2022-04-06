use v6;

use DSL::Shared::Utilities::DeterminedWordsMatching;
use DSL::Shared::Roles::Bulgarian::PipelineCommand;

# Latent Semantic Analysis (LSA) phrases
role DSL::Bulgarian::LatentSemanticAnalysisWorkflows::Grammar::LatentSemanticAnalysisPhrases
        does DSL::Shared::Roles::English::PipelineCommand {

    # LSA specific
    token analysis-noun:sym<Bulgarian> { :i 'анализ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'анализ', 2) }> }
    token component-noun:sym<Bulgarian> { :i 'компонент' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'компонент', 2) }> }
    token decomposition-noun:sym<Bulgarian> { :i 'декомпозиция' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'декомпозиция', 2) }> }
    token entries-noun:sym<Bulgarian> { :i 'елементи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'елементи', 2) }> | 'клетки' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'клетки', 2) }> }
    token factorization-noun:sym<Bulgarian> { :i 'факторизация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'факторизация', 2) }> }
    token independent-adjective:sym<Bulgarian> { :i 'независим' | ([\w]+) <?{ $0.Str !(elem) <независима независимо независими> and is-bg-fuzzy-match($0.Str, 'независим', 2) }> | 'независима' | ([\w]+) <?{ $0.Str !(elem) <независим независимо независими> and is-bg-fuzzy-match($0.Str, 'независима', 2) }> | 'независимо' | ([\w]+) <?{ $0.Str !(elem) <независим независима независими> and is-bg-fuzzy-match($0.Str, 'независимо', 2) }> | 'независими' | ([\w]+) <?{ $0.Str !(elem) <независим независима независимо> and is-bg-fuzzy-match($0.Str, 'независими', 2) }> }
    token indexing-noun:sym<Bulgarian> { :i 'индексиране' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'индексиране', 2) }> }
    token item-noun:sym<Bulgarian> { :i 'нещо' | ([\w]+) <?{ $0.Str ne 'неща' and is-bg-fuzzy-match($0.Str, 'нещо', 2) }> }
    token items-noun:sym<Bulgarian> { :i 'неща' | ([\w]+) <?{ $0.Str !(elem) <нещо тема> and is-bg-fuzzy-match($0.Str, 'неща', 2) }> }
    token latent-adjective:sym<Bulgarian> { :i 'латентент' | ([\w]+) <?{ $0.Str !(elem) <латентна латентно> and is-bg-fuzzy-match($0.Str, 'латентент', 2) }> | 'латентна' | ([\w]+) <?{ $0.Str !(elem) <латентент латентно> and is-bg-fuzzy-match($0.Str, 'латентна', 2) }> | 'латентно' | ([\w]+) <?{ $0.Str !(elem) <латентент латентна> and is-bg-fuzzy-match($0.Str, 'латентно', 2) }> }
    token negative-adjective:sym<Bulgarian> { :i 'отрицателен' | ([\w]+) <?{ $0.Str !(elem) <отрицателна отрицателно> and is-bg-fuzzy-match($0.Str, 'отрицателен', 2) }> | 'отрицателна' | ([\w]+) <?{ $0.Str !(elem) <отрицателен отрицателно> and is-bg-fuzzy-match($0.Str, 'отрицателна', 2) }> | 'отрицателно' | ([\w]+) <?{ $0.Str !(elem) <отрицателен отрицателна> and is-bg-fuzzy-match($0.Str, 'отрицателно', 2) }> }
    token nonnegative-adjective:sym<Bulgarian> { :i  [ 'не' | 'не-' ] \h* <negative-adjective>  }
    token partition-noun:sym<Bulgarian> { :i 'разбиване' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разбиване', 2) }> }
    token principal-adjective:sym<Bulgarian> { :i 'главен' | ([\w]+) <?{ $0.Str !(elem) <главна главно> and is-bg-fuzzy-match($0.Str, 'главен', 2) }> | 'главна' | ([\w]+) <?{ $0.Str !(elem) <главен главно> and is-bg-fuzzy-match($0.Str, 'главна', 2) }> | 'главно' | ([\w]+) <?{ $0.Str !(elem) <главен главна> and is-bg-fuzzy-match($0.Str, 'главно', 2) }> }
    token query-noun:sym<Bulgarian> { :i 'запитване' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'запитване', 2) }> }
    token rules-noun:sym<Bulgarian> { :i 'правила' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'правила', 2) }> }
    token semantic-adjective:sym<Bulgarian> { :i 'семантичен' | ([\w]+) <?{ $0.Str !(elem) <семантична семантично> and is-bg-fuzzy-match($0.Str, 'семантичен', 2) }> | 'семантична' | ([\w]+) <?{ $0.Str !(elem) <семантичен семантично> and is-bg-fuzzy-match($0.Str, 'семантична', 2) }> | 'семантично' | ([\w]+) <?{ $0.Str !(elem) <семантичен семантична> and is-bg-fuzzy-match($0.Str, 'семантично', 2) }> }
    token singular-adjective:sym<Bulgarian> { :i 'сингулярен' | ([\w]+) <?{ $0.Str !(elem) <сингулярна сингулярно сингулярни> and is-bg-fuzzy-match($0.Str, 'сингулярен', 2) }> | 'сингулярна' | ([\w]+) <?{ $0.Str !(elem) <сингулярен сингулярно сингулярни> and is-bg-fuzzy-match($0.Str, 'сингулярна', 2) }> | 'сингулярно' | ([\w]+) <?{ $0.Str !(elem) <сингулярен сингулярна сингулярни> and is-bg-fuzzy-match($0.Str, 'сингулярно', 2) }> | 'сингулярни' | ([\w]+) <?{ $0.Str !(elem) <сингулярен сингулярна сингулярно> and is-bg-fuzzy-match($0.Str, 'сингулярни', 2) }> }
    token stemming-noun:sym<Bulgarian> { :i 'стълбовене' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'стълбовене', 2) }> }
    token stop-adjective:sym<Bulgarian> { :i 'стоп' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'стоп', 2) }> | 'спиращ' | ([\w]+) <?{ $0.Str !(elem) <спираща спиращо спиращи> and is-bg-fuzzy-match($0.Str, 'спиращ', 2) }> | 'спираща' | ([\w]+) <?{ $0.Str !(elem) <спиращ спиращо спиращи> and is-bg-fuzzy-match($0.Str, 'спираща', 2) }> | 'спиращо' | ([\w]+) <?{ $0.Str !(elem) <спиращ спираща спиращи> and is-bg-fuzzy-match($0.Str, 'спиращо', 2) }> | 'спиращи' | ([\w]+) <?{ $0.Str !(elem) <спиращ спираща спиращо> and is-bg-fuzzy-match($0.Str, 'спиращи', 2) }> }
    token stop-noun:sym<Bulgarian> { :i 'стоп' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'стоп', 2) }> }
    token synonym-noun:sym<Bulgarian> { :i 'синоним' | ([\w]+) <?{ $0.Str ne 'синоними' and is-bg-fuzzy-match($0.Str, 'синоним', 2) }> }
    token synonyms-noun:sym<Bulgarian> { :i 'синоними' | ([\w]+) <?{ $0.Str ne 'синоним' and is-bg-fuzzy-match($0.Str, 'синоними', 2) }> }
    token term-noun:sym<Bulgarian> { :i 'термин' | ([\w]+) <?{ $0.Str !(elem) <термини теми> and is-bg-fuzzy-match($0.Str, 'термин', 2) }> }
    token terms-noun:sym<Bulgarian> { :i 'термини' | ([\w]+) <?{ $0.Str ne 'термин' and is-bg-fuzzy-match($0.Str, 'термини', 2) }> }
    token thesaurus-noun:sym<Bulgarian> { :i  <dictionary-noun> | <interpreter-noun> | <interpreting-adjective> \h+ <dictionary-noun>  }
    token topic-noun:sym<Bulgarian> { :i 'тема' | ([\w]+) <?{ $0.Str !(elem) <неща теми> and is-bg-fuzzy-match($0.Str, 'тема', 2) }> }
    token topics-noun:sym<Bulgarian> { :i 'теми' | ([\w]+) <?{ $0.Str !(elem) <термин тема> and is-bg-fuzzy-match($0.Str, 'теми', 2) }> }

    # Document term matrix creation related
    rule data-element:sym<Bulgarian> {  'изречение' | 'параграф' | 'секция' | 'глава' | <word-noun>  }
    rule data-elements:sym<Bulgarian> {  'изречения' | 'параграфи' | 'секции' | 'глави' | <words-noun>  }

    # Topics and thesaurus
    rule statistical-thesaurus-phrase:sym<Bulgarian> {  <statistical>? <thesaurus-noun>  }
    rule topics-table-phrase:sym<Bulgarian> {  <table-noun> [ 'с' | 'от' | 'на' ] <topics-noun>  }

    # LSI specific
    token frequency-noun:sym<Bulgarian> { :i 'честота' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'честота', 2) }> }
    token global-adjective:sym<Bulgarian> { :i 'глобален' | ([\w]+) <?{ $0.Str !(elem) <глобално локален> and is-bg-fuzzy-match($0.Str, 'глобален', 2) }> | 'глобално' | ([\w]+) <?{ $0.Str !(elem) <глобален локално> and is-bg-fuzzy-match($0.Str, 'глобално', 2) }> }
    token inverse-adjective:sym<Bulgarian> { :i 'обратент' | ([\w]+) <?{ $0.Str ne 'обратно' and is-bg-fuzzy-match($0.Str, 'обратент', 2) }> | 'обратно' | ([\w]+) <?{ $0.Str ne 'обратент' and is-bg-fuzzy-match($0.Str, 'обратно', 2) }> }
    token local-adjective:sym<Bulgarian> { :i 'локален' | ([\w]+) <?{ $0.Str !(elem) <глобален локално> and is-bg-fuzzy-match($0.Str, 'локален', 2) }> | 'локално' | ([\w]+) <?{ $0.Str !(elem) <глобално локален> and is-bg-fuzzy-match($0.Str, 'локално', 2) }> }
    token normalization-noun:sym<Bulgarian> { :i 'номализация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'номализация', 2) }> | 'нормализиране' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нормализиране', 2) }> }
    token normalizer-noun:sym<Bulgarian> { :i 'нормализатор' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нормализатор', 2) }> }
    token normalizing-noun:sym<Bulgarian> { :i 'нормализиране' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нормализиране', 2) }> }

}
