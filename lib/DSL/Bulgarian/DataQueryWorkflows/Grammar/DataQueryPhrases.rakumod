use DSL::Shared::Utilities::DeterminedWordsMatching;

# Data query specific phrases
role DSL::Bulgarian::DataQueryWorkflows::Grammar::DataQueryPhrases {
    # Tokens
    token arrange-verb:sym<Bulgarian> { :i 'подреди' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'подреди', 2) }> }
    token ascending-adjective:sym<Bulgarian> { :i 'възходящ' | ([\w]+) <?{ $0.Str ne 'низходящ' and is-bg-fuzzy-match($0.Str, 'възходящ', 2) }> }
    token association-noun:sym<Bulgarian> { :i 'асоциация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'асоциация', 2) }> }
    token broad-adjective:sym<Bulgarian> { :i 'широка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'широка', 2) }> }
    token cast-verb:sym<Bulgarian> { :i 'формирай' | ([\w]+) <?{ $0.Str ne 'сортирай' and is-bg-fuzzy-match($0.Str, 'формирай', 2) }> }
    token character-noun:sym<Bulgarian> { :i 'символ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'символ', 2) }> }
    token combine-verb:sym<Bulgarian> { :i 'комбинирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'комбинирай', 2) }> }
    token cross-verb:sym<Bulgarian> { :i 'кръстосана' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'кръстосана', 2) }> }
    token descending-adjective:sym<Bulgarian> { :i 'низходящ' | ([\w]+) <?{ $0.Str ne 'възходящ' and is-bg-fuzzy-match($0.Str, 'низходящ', 2) }> }
    token distinct-adjective:sym<Bulgarian> { :i 'уникален' | ([\w]+) <?{ $0.Str ne 'уникални' and is-bg-fuzzy-match($0.Str, 'уникален', 2) }> | 'уникални' | ([\w]+) <?{ $0.Str ne 'уникален' and is-bg-fuzzy-match($0.Str, 'уникални', 2) }> }
    token divider-noun:sym<Bulgarian> { :i 'разделител' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разделител', 2) }> }
    token duplicate-adjective:sym<Bulgarian> { :i 'дублиран' | ([\w]+) <?{ $0.Str ne 'дублирани' and is-bg-fuzzy-match($0.Str, 'дублиран', 2) }> | 'повторен' | ([\w]+) <?{ $0.Str ne 'повторени' and is-bg-fuzzy-match($0.Str, 'повторен', 2) }> }
    token duplicates-noun:sym<Bulgarian> { :i 'дублирани' | ([\w]+) <?{ $0.Str ne 'дублиран' and is-bg-fuzzy-match($0.Str, 'дублирани', 2) }> | 'повторени' | ([\w]+) <?{ $0.Str ne 'повторен' and is-bg-fuzzy-match($0.Str, 'повторени', 2) }> }
    token form-noun:sym<Bulgarian> { :i 'форма' | ([\w]+) <?{ $0.Str !(elem) <формат формула> and is-bg-fuzzy-match($0.Str, 'форма', 2) }> }
    token format-noun:sym<Bulgarian> { :i 'формат' | ([\w]+) <?{ $0.Str ne 'форма' and is-bg-fuzzy-match($0.Str, 'формат', 2) }> }
    token formula-noun:sym<Bulgarian> { :i 'формула' | ([\w]+) <?{ $0.Str ne 'форма' and is-bg-fuzzy-match($0.Str, 'формула', 2) }> }
    token full-adjective:sym<Bulgarian> { :i 'пълен' | ([\w]+) <?{ $0.Str !(elem) <пълна пълно> and is-bg-fuzzy-match($0.Str, 'пълен', 2) }> | 'пълна' | ([\w]+) <?{ $0.Str !(elem) <пълен пълно дълга> and is-bg-fuzzy-match($0.Str, 'пълна', 2) }> | 'пълно' | ([\w]+) <?{ $0.Str !(elem) <пълен пълна дълго> and is-bg-fuzzy-match($0.Str, 'пълно', 2) }> }
    token glimpse-verb:sym<Bulgarian> { :i 'надзърни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'надзърни', 2) }> | 'зърни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'зърни', 2) }> }
    token group-verb:sym<Bulgarian> { :i 'групирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'групирай', 2) }> }
    token inner-adjective:sym<Bulgarian> { :i 'вътрешен' | ([\w]+) <?{ $0.Str !(elem) <вътрешна вътрешно> and is-bg-fuzzy-match($0.Str, 'вътрешен', 2) }> | 'вътрешна' | ([\w]+) <?{ $0.Str !(elem) <вътрешен вътрешно> and is-bg-fuzzy-match($0.Str, 'вътрешна', 2) }> | 'вътрешно' | ([\w]+) <?{ $0.Str !(elem) <вътрешен вътрешна> and is-bg-fuzzy-match($0.Str, 'вътрешно', 2) }> }
    token keep-verb:sym<Bulgarian> { :i 'запази' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'запази', 2) }> | 'задържи' | ([\w]+) <?{ $0.Str ne 'задръж' and is-bg-fuzzy-match($0.Str, 'задържи', 2) }> | 'задръж' | ([\w]+) <?{ $0.Str !(elem) <задържи дръж> and is-bg-fuzzy-match($0.Str, 'задръж', 2) }> | 'дръж' | ([\w]+) <?{ $0.Str ne 'задръж' and is-bg-fuzzy-match($0.Str, 'дръж', 2) }> }
    token long-adjective:sym<Bulgarian> { :i 'дълъг' | ([\w]+) <?{ $0.Str !(elem) <дълга дълго> and is-bg-fuzzy-match($0.Str, 'дълъг', 2) }> | 'дълга' | ([\w]+) <?{ $0.Str !(elem) <пълна дълъг дълго> and is-bg-fuzzy-match($0.Str, 'дълга', 2) }> | 'дълго' | ([\w]+) <?{ $0.Str !(elem) <пълно дълъг дълга> and is-bg-fuzzy-match($0.Str, 'дълго', 2) }> }
    token longer-adjective:sym<Bulgarian> { :i 'по-дълъг' | ([\w]+) <?{ $0.Str !(elem) <по-дълга по-дълго по-дълги> and is-bg-fuzzy-match($0.Str, 'по-дълъг', 2) }> | 'по-дълга' | ([\w]+) <?{ $0.Str !(elem) <по-дълъг по-дълго по-дълги> and is-bg-fuzzy-match($0.Str, 'по-дълга', 2) }> | 'по-дълго' | ([\w]+) <?{ $0.Str !(elem) <по-дълъг по-дълга по-дълги> and is-bg-fuzzy-match($0.Str, 'по-дълго', 2) }> | 'по-дълги' | ([\w]+) <?{ $0.Str !(elem) <по-дълъг по-дълга по-дълго> and is-bg-fuzzy-match($0.Str, 'по-дълги', 2) }> }
    token map-verb:sym<Bulgarian> { :i 'асоциирай' | ([\w]+) <?{ $0.Str ne 'асоцииране' and is-bg-fuzzy-match($0.Str, 'асоциирай', 2) }> }
    token mapping-noun:sym<Bulgarian> { :i 'асоцииране' | ([\w]+) <?{ $0.Str ne 'асоциирай' and is-bg-fuzzy-match($0.Str, 'асоцииране', 2) }> }
    token melt-verb:sym<Bulgarian> { :i 'разтопи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разтопи', 2) }> }
    token merge-noun:sym<Bulgarian> { :i 'сливане' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'сливане', 2) }> }
    token merge-verb:sym<Bulgarian> { :i 'слей' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'слей', 2) }> }
    token mutate-verb:sym<Bulgarian> { :i 'мутирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'мутирай', 2) }> }
    token narrow-adjective:sym<Bulgarian> { :i 'тесен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'тесен', 2) }> | 'тясна' | ([\w]+) <?{ $0.Str ne 'тясно' and is-bg-fuzzy-match($0.Str, 'тясна', 2) }> | 'тясно' | ([\w]+) <?{ $0.Str ne 'тясна' and is-bg-fuzzy-match($0.Str, 'тясно', 2) }> }
    token omit-directive:sym<Bulgarian> { :i 'прескочи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'прескочи', 2) }> | 'изключи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'изключи', 2) }> }
    token only-adverb:sym<Bulgarian> { :i 'само' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'само', 2) }> }
    token order-verb:sym<Bulgarian> { :i 'нареди' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нареди', 2) }> }
    token pivot-verb:sym<Bulgarian> { :i 'развий' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'развий', 2) }> | 'развърни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'развърни', 2) }> }
    token rename-verb:sym<Bulgarian> { :i 'преименувай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'преименувай', 2) }> }
    token safe-adjective:sym<Bulgarian> { :i 'сигурна' | ([\w]+) <?{ $0.Str ne 'сигурно' and is-bg-fuzzy-match($0.Str, 'сигурна', 2) }> }
    token safely-adverb:sym<Bulgarian> { :i 'сигурно' | ([\w]+) <?{ $0.Str ne 'сигурна' and is-bg-fuzzy-match($0.Str, 'сигурно', 2) }> }
    token select-verb:sym<Bulgarian> { :i 'избери' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'избери', 2) }> }
    token semi-adjective:sym<Bulgarian> { :i 'полу' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'полу', 2) }> }
    token separator-noun:sym<Bulgarian> { :i 'разделител' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разделител', 2) }> }
    token skim-verb:sym<Bulgarian> { :i 'преглед' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'преглед', 2) }> }
    token skimming-noun:sym<Bulgarian> { :i 'преглеждане' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'преглеждане', 2) }> }
    token sort-verb:sym<Bulgarian> { :i 'сортирай' | ([\w]+) <?{ $0.Str ne 'формирай' and is-bg-fuzzy-match($0.Str, 'сортирай', 2) }> | 'нареди' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нареди', 2) }> }
    token splitter-noun:sym<Bulgarian> { :i 'разделител' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разделител', 2) }> }
    token splitting-noun:sym<Bulgarian> { :i 'разделяне' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разделяне', 2) }> }
    token summarise-verb:sym<Bulgarian> { :i 'обобщи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обобщи', 2) }> }
    token summarize-verb:sym<Bulgarian> { :i 'обобщи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'обобщи', 2) }> }
    token tabulate-verb:sym<Bulgarian> { :i 'табулиряй' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'табулиряй', 2) }> }
    token ungroup-verb:sym<Bulgarian> { :i 'разгрупирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'разгрупирай', 2) }> }
    token unique-adjective:sym<Bulgarian> { :i 'уникален' | ([\w]+) <?{ $0.Str ne 'уникални' and is-bg-fuzzy-match($0.Str, 'уникален', 2) }> | 'уникални' | ([\w]+) <?{ $0.Str ne 'уникален' and is-bg-fuzzy-match($0.Str, 'уникални', 2) }> }
    token wide-adjective:sym<Bulgarian> { :i 'широка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'широка', 2) }> }
    token wider-adjective:sym<Bulgarian> { :i 'по-широк' | ([\w]+) <?{ $0.Str !(elem) <по-широка по-широко по-широки> and is-bg-fuzzy-match($0.Str, 'по-широк', 2) }> | 'по-широка' | ([\w]+) <?{ $0.Str !(elem) <по-широк по-широко по-широки> and is-bg-fuzzy-match($0.Str, 'по-широка', 2) }> | 'по-широко' | ([\w]+) <?{ $0.Str !(elem) <по-широк по-широка по-широки> and is-bg-fuzzy-match($0.Str, 'по-широко', 2) }> | 'по-широки' | ([\w]+) <?{ $0.Str !(elem) <по-широк по-широка по-широко> and is-bg-fuzzy-match($0.Str, 'по-широки', 2) }> }
}

