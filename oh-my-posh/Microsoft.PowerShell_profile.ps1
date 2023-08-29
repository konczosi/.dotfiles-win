oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/dracula.omp.json"| Invoke-Expression

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

$env:VIRTUAL_ENV_DISABLE_PROMPT = 1

Import-Module PSReadLine

Set-PSReadLineOption -PredictionSource History

Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -Colors @{ InlinePrediction = '#875f5f'}


Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord
