Import-Module PSReadLine

Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineOption -Colors @{ InlinePrediction = '#875f5f'}

Set-PSReadLineKeyHandler -Chord "Ctrl+p" -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Chord "Ctrl+n" -Function HistorySearchForward
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord
Set-PSReadLineKeyHandler -Chord "Ctrl+LeftArrow" -Function BackwardWord

Set-Alias cl "clear"

function cdw { set-location "D:\Devel\PPT\" }
function cdd { set-location "D:\Devel\" }

$env:VIRTUAL_ENV_DISABLE_PROMPT = 1

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/konczosi.omp.json"| Invoke-Expression
