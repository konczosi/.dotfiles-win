Import-Module PSReadLine

Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineOption -Colors @{ InlinePrediction = '#875f5f'}

Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord

Set-Alias cl "clear"
function cdw { set-location "$workdir" }
function cdd { set-location "$develdir" }
$env:VIRTUAL_ENV_DISABLE_PROMPT = 1

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/konczosi.omp.json"| Invoke-Expression
Enable-PoshTransientPrompt
