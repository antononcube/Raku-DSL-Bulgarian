use DSL::Shared::Utilities::DeterminedWordsMatching;

# Data query specific phrases
role DSL::Bulgarian::DataQueryWorkflows::Grammar::DataQueryPhrases {
    # Tokens
    token arrange-verb:sym<Bulgrian> { :i 'подреди' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'подреди', 2) }> }
    token ascending-adjective:sym<Bulgrian> { :i 'възходящ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'възходящ', 2) }> }
    token association-noun:sym<Bulgrian> { :i 'асоциация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'асоциация', 2) }> }
    token broad-adjective:sym<Bulgrian> { :i 'широка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'широка', 2) }> }
    token cast-verb:sym<Bulgrian> { :i 'формирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'формирай', 2) }> }
    token character-noun:sym<Bulgrian> { :i 'символ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'символ', 2) }> }
    token combine-verb:sym<Bulgrian> { :i 'комбинирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'комбинирай', 2) }> }
    token cross-verb:sym<Bulgrian> { :i 'кръстосана' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'кръстосана', 2) }> }
    token descending-adjective:sym<Bulgrian> { :i 'низходящ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'низходящ', 2) }> }
    token dictionary-noun:sym<Bulgrian> { :i 'речник' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'речник', 2) }> }
    token distinct-adjective:sym<Bulgrian> { :i 'уникален' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'уникален', 2) }> | 'уникални' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'уникални', 2) }> }
    token divider-noun:sym<Bulgrian> { :i 'разделител' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разделител', 2) }> }
    token duplicate-adjective:sym<Bulgrian> { :i 'дублиран' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дублиран', 2) }> }
    token duplicates-noun:sym<Bulgrian> { :i 'дублирани' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дублирани', 2) }> }
    token form-noun:sym<Bulgrian> { :i 'форма' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'форма', 2) }> }
    token format-noun:sym<Bulgrian> { :i 'формат' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'формат', 2) }> }
    token formula-noun:sym<Bulgrian> { :i 'формула' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'формула', 2) }> }
    token full-adjective:sym<Bulgrian> { :i 'пълен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пълен', 2) }> | 'пълна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пълна', 2) }> }
    token glimpse-verb:sym<Bulgrian> { :i 'надзърни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'надзърни', 2) }> | 'зърни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'зърни', 2) }> }
    token group-verb:sym<Bulgrian> { :i 'групирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'групирай', 2) }> }
    token inner-adjective:sym<Bulgrian> { :i 'вътрешен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'вътрешен', 2) }> | 'вътрешна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'вътрешна', 2) }> }
    token join-noun:sym<Bulgrian> { :i 'връзка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'връзка', 2) }> }
    token keep-verb:sym<Bulgrian> { :i  'запази' дръж  }
    token left-adjective:sym<Bulgrian> { :i 'лява' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'лява', 2) }> }
    token long-adjective:sym<Bulgrian> { :i 'дълга' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дълга', 2) }> }
    token longer-adjective:sym<Bulgrian> { :i  'по-дълга'  }
    token map-verb:sym<Bulgrian> { :i 'асоциирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'асоциирай', 2) }> }
    token mapping-noun:sym<Bulgrian> { :i 'асоцииране' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'асоцииране', 2) }> }
    token melt-verb:sym<Bulgrian> { :i 'разтопи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разтопи', 2) }> }
    token merge-verb:sym<Bulgrian> { :i 'слей' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'слей', 2) }> }
    token mutate-verb:sym<Bulgrian> { :i 'мутирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'мутирай', 2) }> }
    token narrow-adjective:sym<Bulgrian> { :i 'тясна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'тясна', 2) }> }
    token omit-directive:sym<Bulgrian> { :i 'прескочи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'прескочи', 2) }> | 'изключи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изключи', 2) }> }
    token only-adverb:sym<Bulgrian> { :i 'само' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'само', 2) }> }
    token order-verb:sym<Bulgrian> { :i 'нареди' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нареди', 2) }> }
    token pivot-verb:sym<Bulgrian> { :i 'развий' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'развий', 2) }> }
    token rename-verb:sym<Bulgrian> { :i 'преименувай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'преименувай', 2) }> }
    token right-adjective:sym<Bulgrian> { :i 'дясна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дясна', 2) }> }
    token safe-adjective:sym<Bulgrian> { :i 'сигурна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'сигурна', 2) }> }
    token safely-adverb:sym<Bulgrian> { :i 'сигурно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'сигурно', 2) }> }
    token select-verb:sym<Bulgrian> { :i 'избери' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'избери', 2) }> }
    token semi-adjective:sym<Bulgrian> { :i 'полу' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'полу', 2) }> }
    token separator-noun:sym<Bulgrian> { :i 'разделител' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разделител', 2) }> }
    token skim-verb:sym<Bulgrian> { :i 'преглед' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'преглед', 2) }> }
    token skimming-noun:sym<Bulgrian> { :i 'преглеждане' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'преглеждане', 2) }> }
    token sort-verb:sym<Bulgrian> { :i 'сортирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'сортирай', 2) }> | 'нареди' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нареди', 2) }> }
    token splitter-noun:sym<Bulgrian> { :i 'разделител' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разделител', 2) }> }
    token splitting-noun:sym<Bulgrian> { :i 'разделяне' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разделяне', 2) }> }
    token summarise-verb:sym<Bulgrian> { :i 'обобщи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обобщи', 2) }> }
    token summarize-verb:sym<Bulgrian> { :i 'обобщи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обобщи', 2) }> }
    token tabulate-verb:sym<Bulgrian> { :i 'табулиряй' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'табулиряй', 2) }> }
    token ungroup-verb:sym<Bulgrian> { :i 'разгрупирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разгрупирай', 2) }> }
    token unique-adjective:sym<Bulgrian> { :i 'уникален' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'уникален', 2) }> | 'уникални' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'уникални', 2) }> }
    token wide-adjective:sym<Bulgrian> { :i 'широка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'широка', 2) }> }
    token wider-adjective:sym<Bulgrian> { :i  'по-широка'  }
}

