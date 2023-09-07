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
Set-Alias which get-command

function cdw { set-location "current workdir" }
function cdd { set-location "devel dir" }

$env:VIRTUAL_ENV_DISABLE_PROMPT = 1

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/konczosi.omp.json"| Invoke-Expression
