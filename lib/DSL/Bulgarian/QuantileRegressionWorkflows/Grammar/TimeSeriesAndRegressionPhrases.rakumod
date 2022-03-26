use v6;

use DSL::Shared::Utilities::DeterminedWordsMatching;
use DSL::Shared::Roles::Bulgarian::PipelineCommand;

# Time series and regression specific phrases
role DSL::Bulgarian::QuantileRegressionWorkflows::Grammar::TimeSeriesAndRegressionPhrases
        does DSL::Shared::Roles::Bulgarian::PipelineCommand {

    # Proto tokens
    token absolute-adjective:sym<Bulgarian> { :i 'абсолютен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'абсолютен', 2) }> | 'абсолютна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'абсолютна', 2) }> | 'абсолютна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'абсолютна', 2) }> | 'абсолютни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'абсолютни', 2) }> }
    token anomalies-noun:sym<Bulgarian> { :i 'аномалии' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'аномалии', 2) }> }
    token anomaly-noun:sym<Bulgarian> { :i 'аномалия' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'аномалия', 2) }> }
    token average-adjective:sym<Bulgarian> { :i 'средeн' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'средeн', 2) }> | 'среднa' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'среднa', 2) }> | 'средно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'средно', 2) }> | 'средни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'средни', 2) }> }
    token curve-noun:sym<Bulgarian> { :i 'крива' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'крива', 2) }> }
    token curves-noun:sym<Bulgarian> { :i 'криви' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'криви', 2) }> }
    token date-noun:sym<Bulgarian> { :i 'дата' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дата', 2) }> }
    token dates-noun:sym<Bulgarian> { :i 'дати' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дати', 2) }> }
    token degree-noun:sym<Bulgarian> { :i 'степен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'степен', 2) }> }
    token error-noun:sym<Bulgarian> { :i 'грешка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'грешка', 2) }> }
    token errors-noun:sym<Bulgarian> { :i 'грешка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'грешка', 2) }> | 'грешки' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'грешки', 2) }> }
    token fit-noun:sym<Bulgarian> { :i 'пасване' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пасване', 2) }> | 'напасване' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'напасване', 2) }> }
    token fitted-adjective:sym<Bulgarian> { :i 'пасната' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пасната', 2) }> | 'напасната' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'напасната', 2) }> }
    token hold-verb:sym<Bulgarian> { :i 'дръж' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'дръж', 2) }> }
    token interpolation-adjective:sym<Bulgarian> { :i 'интерполациoнен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'интерполациoнен', 2) }> | 'интерполациoнна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'интерполациoнна', 2) }> | 'интерполациoнно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'интерполациoнно', 2) }> | 'интерполациoнни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'интерполациoнни', 2) }> }
    token interpolation-noun:sym<Bulgarian> { :i 'интерполация' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'интерполация', 2) }> }
    token knots-noun:sym<Bulgarian> { :i 'възли' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'възли', 2) }> | 'възели' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'възели', 2) }> | 'възла' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'възла', 2) }> }
    token least-adjective:sym<Bulgarian> { :i  'най-малък' | 'най-малка' | 'най-малко' | 'най-малки'  }
    token linear-adjective:sym<Bulgarian> { :i 'линейна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'линейна', 2) }> }
    token map-noun:sym<Bulgarian> { :i 'съпоставка' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'съпоставка', 2) }> }
    token mean-adjective:sym<Bulgarian> { :i  <average-adjective>  }
    token mean-noun:sym<Bulgarian> { :i  'средна' 'стойност'  }
    token median-adjective:sym<Bulgarian> { :i 'медианен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'медианен', 2) }> | 'медианна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'медианна', 2) }> | 'медианно' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'медианно', 2) }> | 'медианни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'медианни', 2) }> }
    token median-noun:sym<Bulgarian> { :i 'медиана' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'медиана', 2) }> }
    token moving-adjective:sym<Bulgarian> { :i 'движещ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'движещ', 2) }> | 'движеща' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'движеща', 2) }> | 'движещо' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'движещо', 2) }> | 'движещи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'движещи', 2) }> | 'пълзящ' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пълзящ', 2) }> | 'пълзяща' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пълзяща', 2) }> | 'пълзящо' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пълзящо', 2) }> | 'пълзящи' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'пълзящи', 2) }> }
    token order-noun:sym<Bulgarian> { :i 'порядък' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'порядък', 2) }> | 'степен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'степен', 2) }> }
    token origin-noun:sym<Bulgarian> { :i 'нула' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'нула', 2) }> | 'start' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'start', 2) }> }
    token outlier-noun:sym<Bulgarian> { :i  'извънредна' 'стойност'  }
    token outliers-noun:sym<Bulgarian> { :i  <outlier-noun> | 'извънреди' 'стойности'  }
    token probabilities-noun:sym<Bulgarian> { :i 'вероятности' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'вероятности', 2) }> }
    token probability-noun:sym<Bulgarian> { :i 'вероятност' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'вероятност', 2) }> }
    token quantile-noun:sym<Bulgarian> { :i 'квантила' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'квантила', 2) }> }
    token quantiles-noun:sym<Bulgarian> { :i 'квантили' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'квантили', 2) }> }
    token regressand-noun:sym<Bulgarian> { :i 'регресанд' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'регресанд', 2) }> }
    token regression-noun:sym<Bulgarian> { :i 'регресия' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'регресия', 2) }> }
    token regressor-noun:sym<Bulgarian> { :i 'регресор' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'регресор', 2) }> }
    token relative-adjective:sym<Bulgarian> { :i 'относителен' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'относителен', 2) }> | 'относителна' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'относителна', 2) }> | 'относително' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'относително', 2) }> | 'относителни' | ([\w]+) <?{ is-bg-fuzzy-match($0.Str, 'относителни', 2) }> }
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

