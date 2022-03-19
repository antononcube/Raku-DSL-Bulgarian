use DSL::Shared::Utilities::DeterminedWordsMatching;

# Data query specific phrases
role DSL::Bulgarian::DataQueryWorkflows::Grammar::DataQueryPhrases {
    # Tokens
    token arrange-verb:sym<Bulgarian> { :i 'подреди' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'подреди', 2) }> }
    token ascending-adjective:sym<Bulgarian> { :i 'възходящ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'възходящ', 2) }> }
    token association-noun:sym<Bulgarian> { :i 'асоциация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'асоциация', 2) }> }
    token broad-adjective:sym<Bulgarian> { :i 'широка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'широка', 2) }> }
    token cast-verb:sym<Bulgarian> { :i 'формирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'формирай', 2) }> }
    token character-noun:sym<Bulgarian> { :i 'символ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'символ', 2) }> }
    token combine-verb:sym<Bulgarian> { :i 'комбинирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'комбинирай', 2) }> }
    token cross-verb:sym<Bulgarian> { :i 'кръстосана' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'кръстосана', 2) }> }
    token descending-adjective:sym<Bulgarian> { :i 'низходящ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'низходящ', 2) }> }
    token dictionary-noun:sym<Bulgarian> { :i 'речник' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'речник', 2) }> }
    token distinct-adjective:sym<Bulgarian> { :i 'уникален' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'уникален', 2) }> | 'уникални' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'уникални', 2) }> }
    token divider-noun:sym<Bulgarian> { :i 'разделител' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разделител', 2) }> }
    token duplicate-adjective:sym<Bulgarian> { :i 'дублиран' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дублиран', 2) }> }
    token duplicates-noun:sym<Bulgarian> { :i 'дублирани' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дублирани', 2) }> }
    token form-noun:sym<Bulgarian> { :i 'форма' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'форма', 2) }> }
    token format-noun:sym<Bulgarian> { :i 'формат' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'формат', 2) }> }
    token formula-noun:sym<Bulgarian> { :i 'формула' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'формула', 2) }> }
    token full-adjective:sym<Bulgarian> { :i 'пълен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пълен', 2) }> | 'пълна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пълна', 2) }> }
    token glimpse-verb:sym<Bulgarian> { :i 'надзърни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'надзърни', 2) }> | 'зърни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'зърни', 2) }> }
    token group-verb:sym<Bulgarian> { :i 'групирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'групирай', 2) }> }
    token inner-adjective:sym<Bulgarian> { :i 'вътрешен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'вътрешен', 2) }> | 'вътрешна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'вътрешна', 2) }> }
    token join-noun:sym<Bulgarian> { :i 'връзка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'връзка', 2) }> }
    token keep-verb:sym<Bulgarian> { :i  'запази' дръж  }
    token left-adjective:sym<Bulgarian> { :i 'лява' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'лява', 2) }> }
    token long-adjective:sym<Bulgarian> { :i 'дълга' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дълга', 2) }> }
    token longer-adjective:sym<Bulgarian> { :i  'по-дълга'  }
    token map-verb:sym<Bulgarian> { :i 'асоциирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'асоциирай', 2) }> }
    token mapping-noun:sym<Bulgarian> { :i 'асоцииране' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'асоцииране', 2) }> }
    token melt-verb:sym<Bulgarian> { :i 'разтопи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разтопи', 2) }> }
    token merge-verb:sym<Bulgarian> { :i 'слей' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'слей', 2) }> }
    token mutate-verb:sym<Bulgarian> { :i 'мутирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'мутирай', 2) }> }
    token narrow-adjective:sym<Bulgarian> { :i 'тясна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'тясна', 2) }> }
    token omit-directive:sym<Bulgarian> { :i 'прескочи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'прескочи', 2) }> | 'изключи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изключи', 2) }> }
    token only-adverb:sym<Bulgarian> { :i 'само' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'само', 2) }> }
    token order-verb:sym<Bulgarian> { :i 'нареди' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нареди', 2) }> }
    token pivot-verb:sym<Bulgarian> { :i 'развий' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'развий', 2) }> }
    token rename-verb:sym<Bulgarian> { :i 'преименувай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'преименувай', 2) }> }
    token right-adjective:sym<Bulgarian> { :i 'дясна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дясна', 2) }> }
    token safe-adjective:sym<Bulgarian> { :i 'сигурна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'сигурна', 2) }> }
    token safely-adverb:sym<Bulgarian> { :i 'сигурно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'сигурно', 2) }> }
    token select-verb:sym<Bulgarian> { :i 'избери' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'избери', 2) }> }
    token semi-adjective:sym<Bulgarian> { :i 'полу' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'полу', 2) }> }
    token separator-noun:sym<Bulgarian> { :i 'разделител' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разделител', 2) }> }
    token skim-verb:sym<Bulgarian> { :i 'преглед' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'преглед', 2) }> }
    token skimming-noun:sym<Bulgarian> { :i 'преглеждане' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'преглеждане', 2) }> }
    token sort-verb:sym<Bulgarian> { :i 'сортирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'сортирай', 2) }> | 'нареди' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нареди', 2) }> }
    token splitter-noun:sym<Bulgarian> { :i 'разделител' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разделител', 2) }> }
    token splitting-noun:sym<Bulgarian> { :i 'разделяне' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разделяне', 2) }> }
    token summarise-verb:sym<Bulgarian> { :i 'обобщи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обобщи', 2) }> }
    token summarize-verb:sym<Bulgarian> { :i 'обобщи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обобщи', 2) }> }
    token tabulate-verb:sym<Bulgarian> { :i 'табулиряй' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'табулиряй', 2) }> }
    token ungroup-verb:sym<Bulgarian> { :i 'разгрупирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разгрупирай', 2) }> }
    token unique-adjective:sym<Bulgarian> { :i 'уникален' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'уникален', 2) }> | 'уникални' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'уникални', 2) }> }
    token wide-adjective:sym<Bulgarian> { :i 'широка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'широка', 2) }> }
    token wider-adjective:sym<Bulgarian> { :i  'по-широка'  }
}

