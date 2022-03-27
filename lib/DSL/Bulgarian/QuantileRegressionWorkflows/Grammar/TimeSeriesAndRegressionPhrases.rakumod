use v6;

use DSL::Shared::Utilities::DeterminedWordsMatching;
use DSL::Shared::Roles::Bulgarian::PipelineCommand;

# Time series and regression specific phrases
role DSL::Bulgarian::QuantileRegressionWorkflows::Grammar::TimeSeriesAndRegressionPhrases
        does DSL::Shared::Roles::Bulgarian::PipelineCommand {

    # Proto tokens
    token absolute-adjective:sym<Bulgarian> { :i 'абсолютен' | ([\w]+) <?{ $0.Str !(elem) <абсолютна абсолютни> and is-bg-fuzzy-match($0.Str, 'абсолютен', 2) }> | 'абсолютна' | ([\w]+) <?{ $0.Str !(elem) <абсолютен абсолютни> and is-bg-fuzzy-match($0.Str, 'абсолютна', 2) }> | 'абсолютна' | ([\w]+) <?{ $0.Str !(elem) <абсолютен абсолютни> and is-bg-fuzzy-match($0.Str, 'абсолютна', 2) }> | 'абсолютни' | ([\w]+) <?{ $0.Str !(elem) <абсолютен абсолютна> and is-bg-fuzzy-match($0.Str, 'абсолютни', 2) }> }
    token anomalies-noun:sym<Bulgarian> { :i 'аномалии' | ([\w]+) <?{ $0.Str ne 'аномалия' and is-bg-fuzzy-match($0.Str, 'аномалии', 2) }> }
    token anomaly-noun:sym<Bulgarian> { :i 'аномалия' | ([\w]+) <?{ $0.Str ne 'аномалии' and is-bg-fuzzy-match($0.Str, 'аномалия', 2) }> }
    token average-adjective:sym<Bulgarian> { :i 'средeн' | ([\w]+) <?{ $0.Str !(elem) <среднa средно средни> and is-bg-fuzzy-match($0.Str, 'средeн', 2) }> | 'среднa' | ([\w]+) <?{ $0.Str !(elem) <средeн средно средни> and is-bg-fuzzy-match($0.Str, 'среднa', 2) }> | 'средно' | ([\w]+) <?{ $0.Str !(elem) <средeн среднa средни> and is-bg-fuzzy-match($0.Str, 'средно', 2) }> | 'средни' | ([\w]+) <?{ $0.Str !(elem) <средeн среднa средно> and is-bg-fuzzy-match($0.Str, 'средни', 2) }> }
    token curve-noun:sym<Bulgarian> { :i 'крива' | ([\w]+) <?{ $0.Str ne 'криви' and is-bg-fuzzy-match($0.Str, 'крива', 2) }> }
    token curves-noun:sym<Bulgarian> { :i 'криви' | ([\w]+) <?{ $0.Str ne 'крива' and is-bg-fuzzy-match($0.Str, 'криви', 2) }> }
    token date-noun:sym<Bulgarian> { :i 'дата' | ([\w]+) <?{ $0.Str ne 'дати' and is-bg-fuzzy-match($0.Str, 'дата', 2) }> }
    token dates-noun:sym<Bulgarian> { :i 'дати' | ([\w]+) <?{ $0.Str ne 'дата' and is-bg-fuzzy-match($0.Str, 'дати', 2) }> }
    token degree-noun:sym<Bulgarian> { :i 'степен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'степен', 2) }> }
    token error-noun:sym<Bulgarian> { :i 'грешка' | ([\w]+) <?{ $0.Str ne 'грешки' and is-bg-fuzzy-match($0.Str, 'грешка', 2) }> }
    token errors-noun:sym<Bulgarian> { :i 'грешка' | ([\w]+) <?{ $0.Str ne 'грешки' and is-bg-fuzzy-match($0.Str, 'грешка', 2) }> | 'грешки' | ([\w]+) <?{ $0.Str ne 'грешка' and is-bg-fuzzy-match($0.Str, 'грешки', 2) }> }
    token fit-noun:sym<Bulgarian> { :i 'пасване' | ([\w]+) <?{ $0.Str ne 'напасване' and is-bg-fuzzy-match($0.Str, 'пасване', 2) }> | 'напасване' | ([\w]+) <?{ $0.Str ne 'пасване' and is-bg-fuzzy-match($0.Str, 'напасване', 2) }> }
    token fitted-adjective:sym<Bulgarian> { :i 'пасната' | ([\w]+) <?{ $0.Str ne 'напасната' and is-bg-fuzzy-match($0.Str, 'пасната', 2) }> | 'напасната' | ([\w]+) <?{ $0.Str ne 'пасната' and is-bg-fuzzy-match($0.Str, 'напасната', 2) }> }
    token hold-verb:sym<Bulgarian> { :i 'дръж' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дръж', 2) }> }
    token interpolation-adjective:sym<Bulgarian> { :i 'интерполациoнен' | ([\w]+) <?{ $0.Str !(elem) <интерполациoнна интерполациoнно интерполациoнни> and is-bg-fuzzy-match($0.Str, 'интерполациoнен', 2) }> | 'интерполациoнна' | ([\w]+) <?{ $0.Str !(elem) <интерполациoнен интерполациoнно интерполациoнни> and is-bg-fuzzy-match($0.Str, 'интерполациoнна', 2) }> | 'интерполациoнно' | ([\w]+) <?{ $0.Str !(elem) <интерполациoнен интерполациoнна интерполациoнни> and is-bg-fuzzy-match($0.Str, 'интерполациoнно', 2) }> | 'интерполациoнни' | ([\w]+) <?{ $0.Str !(elem) <интерполациoнен интерполациoнна интерполациoнно> and is-bg-fuzzy-match($0.Str, 'интерполациoнни', 2) }> }
    token interpolation-noun:sym<Bulgarian> { :i 'интерполация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'интерполация', 2) }> }
    token knots-noun:sym<Bulgarian> { :i 'възли' | ([\w]+) <?{ $0.Str !(elem) <възели възла> and is-bg-fuzzy-match($0.Str, 'възли', 2) }> | 'възели' | ([\w]+) <?{ $0.Str !(elem) <възли възла> and is-bg-fuzzy-match($0.Str, 'възели', 2) }> | 'възла' | ([\w]+) <?{ $0.Str !(elem) <възли възели> and is-bg-fuzzy-match($0.Str, 'възла', 2) }> }
    token least-adjective:sym<Bulgarian> { :i 'най-малък' | ([\w]+) <?{ $0.Str !(elem) <най-малка най-малко най-малки> and is-bg-fuzzy-match($0.Str, 'най-малък', 2) }> | 'най-малка' | ([\w]+) <?{ $0.Str !(elem) <най-малък най-малко най-малки> and is-bg-fuzzy-match($0.Str, 'най-малка', 2) }> | 'най-малко' | ([\w]+) <?{ $0.Str !(elem) <най-малък най-малка най-малки> and is-bg-fuzzy-match($0.Str, 'най-малко', 2) }> | 'най-малки' | ([\w]+) <?{ $0.Str !(elem) <най-малък най-малка най-малко> and is-bg-fuzzy-match($0.Str, 'най-малки', 2) }> }
    token linear-adjective:sym<Bulgarian> { :i 'линейна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'линейна', 2) }> }
    token map-noun:sym<Bulgarian> { :i 'съпоставка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'съпоставка', 2) }> }
    token mean-adjective:sym<Bulgarian> { :i  <average-adjective>  }
    token mean-noun:sym<Bulgarian> { :i  'средна' 'стойност'  }
    token median-adjective:sym<Bulgarian> { :i 'медианен' | ([\w]+) <?{ $0.Str !(elem) <медианна медианно медианни медиана> and is-bg-fuzzy-match($0.Str, 'медианен', 2) }> | 'медианна' | ([\w]+) <?{ $0.Str !(elem) <медианен медианно медианни медиана> and is-bg-fuzzy-match($0.Str, 'медианна', 2) }> | 'медианно' | ([\w]+) <?{ $0.Str !(elem) <медианен медианна медианни медиана> and is-bg-fuzzy-match($0.Str, 'медианно', 2) }> | 'медианни' | ([\w]+) <?{ $0.Str !(elem) <медианен медианна медианно медиана> and is-bg-fuzzy-match($0.Str, 'медианни', 2) }> }
    token median-noun:sym<Bulgarian> { :i 'медиана' | ([\w]+) <?{ $0.Str !(elem) <медианен медианна медианно медианни> and is-bg-fuzzy-match($0.Str, 'медиана', 2) }> }
    token moving-adjective:sym<Bulgarian> { :i 'движещ' | ([\w]+) <?{ $0.Str !(elem) <движеща движещо движещи> and is-bg-fuzzy-match($0.Str, 'движещ', 2) }> | 'движеща' | ([\w]+) <?{ $0.Str !(elem) <движещ движещо движещи> and is-bg-fuzzy-match($0.Str, 'движеща', 2) }> | 'движещо' | ([\w]+) <?{ $0.Str !(elem) <движещ движеща движещи> and is-bg-fuzzy-match($0.Str, 'движещо', 2) }> | 'движещи' | ([\w]+) <?{ $0.Str !(elem) <движещ движеща движещо> and is-bg-fuzzy-match($0.Str, 'движещи', 2) }> | 'пълзящ' | ([\w]+) <?{ $0.Str !(elem) <пълзяща пълзящо пълзящи> and is-bg-fuzzy-match($0.Str, 'пълзящ', 2) }> | 'пълзяща' | ([\w]+) <?{ $0.Str !(elem) <пълзящ пълзящо пълзящи> and is-bg-fuzzy-match($0.Str, 'пълзяща', 2) }> | 'пълзящо' | ([\w]+) <?{ $0.Str !(elem) <пълзящ пълзяща пълзящи> and is-bg-fuzzy-match($0.Str, 'пълзящо', 2) }> | 'пълзящи' | ([\w]+) <?{ $0.Str !(elem) <пълзящ пълзяща пълзящо> and is-bg-fuzzy-match($0.Str, 'пълзящи', 2) }> }
    token order-noun:sym<Bulgarian> { :i 'порядък' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'порядък', 2) }> | 'степен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'степен', 2) }> }
    token origin-noun:sym<Bulgarian> { :i 'нула' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нула', 2) }> | 'start' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'start', 2) }> }
    token probabilities-noun:sym<Bulgarian> { :i 'вероятности' | ([\w]+) <?{ $0.Str ne 'вероятност' and is-bg-fuzzy-match($0.Str, 'вероятности', 2) }> }
    token probability-noun:sym<Bulgarian> { :i 'вероятност' | ([\w]+) <?{ $0.Str ne 'вероятности' and is-bg-fuzzy-match($0.Str, 'вероятност', 2) }> }
    token quantile-adjective:sym<Bulgarian> { :i 'квантилен' | ([\w]+) <?{ $0.Str !(elem) <квантилна квантилно квантилни квантила квантили> and is-bg-fuzzy-match($0.Str, 'квантилен', 2) }> | 'квантилна' | ([\w]+) <?{ $0.Str !(elem) <квантилен квантилно квантилни квантила квантили> and is-bg-fuzzy-match($0.Str, 'квантилна', 2) }> | 'квантилно' | ([\w]+) <?{ $0.Str !(elem) <квантилен квантилна квантилни квантила квантили> and is-bg-fuzzy-match($0.Str, 'квантилно', 2) }> | 'квантилни' | ([\w]+) <?{ $0.Str !(elem) <квантилен квантилна квантилно квантила квантили> and is-bg-fuzzy-match($0.Str, 'квантилни', 2) }> }
    token quantile-noun:sym<Bulgarian> { :i 'квантила' | ([\w]+) <?{ $0.Str !(elem) <квантилен квантилна квантилно квантилни квантили> and is-bg-fuzzy-match($0.Str, 'квантила', 2) }> }
    token quantiles-noun:sym<Bulgarian> { :i 'квантили' | ([\w]+) <?{ $0.Str !(elem) <квантилен квантилна квантилно квантилни квантила> and is-bg-fuzzy-match($0.Str, 'квантили', 2) }> }
    token regressand-noun:sym<Bulgarian> { :i 'регресанд' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'регресанд', 2) }> }
    token regression-noun:sym<Bulgarian> { :i 'регресия' | ([\w]+) <?{ $0.Str ne 'регресор' and is-bg-fuzzy-match($0.Str, 'регресия', 2) }> }
    token regressor-noun:sym<Bulgarian> { :i 'регресор' | ([\w]+) <?{ $0.Str ne 'регресия' and is-bg-fuzzy-match($0.Str, 'регресор', 2) }> }
    token relative-adjective:sym<Bulgarian> { :i 'относителен' | ([\w]+) <?{ $0.Str !(elem) <относителна относително относителни> and is-bg-fuzzy-match($0.Str, 'относителен', 2) }> | 'относителна' | ([\w]+) <?{ $0.Str !(elem) <относителен относително относителни> and is-bg-fuzzy-match($0.Str, 'относителна', 2) }> | 'относително' | ([\w]+) <?{ $0.Str !(elem) <относителен относителна относителни> and is-bg-fuzzy-match($0.Str, 'относително', 2) }> | 'относителни' | ([\w]+) <?{ $0.Str !(elem) <относителен относителна относително> and is-bg-fuzzy-match($0.Str, 'относителни', 2) }> }
    token residuals-noun:sym<Bulgarian> { :i 'остатъци' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'остатъци', 2) }> }
    token squares-noun:sym<Bulgarian> { :i 'квадрати' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'квадрати', 2) }> }
    token x-symbol:sym<Bulgarian> { :i 'x' | 'X' }
    token y-symbol:sym<Bulgarian> { :i 'y' | 'Y' }

    # Directives
    token resample-directive:sym<Bulgarian> { :i 'ресемплирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'ресемплирай', 2) }> }
    token rescale-directive:sym<Bulgarian> { :i 'премащабирай' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'премащабирай', 2) }> }

    # Rules
    rule least-squares-phrase:sym<Bulgarian> {  <least-adjective> <squares-noun>  }
    rule qr-object:sym<Bulgarian> {  [ 'КР' | 'кр' | <quantile-regression-phrase> ]? <object-noun>  }
    rule quantile-regression-phrase:sym<Bulgarian> {  <quantile-noun> <regression-noun>  }
    rule the-outliers:sym<Bulgarian> {  <the-determiner> <outliers-noun>  }
    rule time-axis-phrase:sym<Bulgarian> {  <time-noun> <axis-noun>  }
    rule value-axis-phrase:sym<Bulgarian> {  <value-noun> <axis-noun>  }
    rule value-from-left-phrase:sym<Bulgarian> {  <value-noun> <from-proposition> <left-noun>  }

}

