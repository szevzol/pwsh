oh-my-posh init pwsh --config '~\.config\pwsh\poshthemes\powerlevel10k_lean.omp.json' | Invoke-Expression
#Invoke-Expression (&starship init powershell)

# Shows navigable menu of all options when hitting Tab
# Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
#Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
# Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

Set-PsFzfOption -TabExpansion -EnableAliasFuzzyLocation -EnableAliasFuzzyLocation -EnableAliasPsFzfRipgrep

function fuzzy_edit {
  nvim $(fzf)
}

Set-Alias fe fuzzy_edit
Set-Alias fg Invoke-PsFzfRipgrep

Import-Module ZLocation

$env:EDITOR = "nvim"
$env:VIRTUAL_ENV_DISABLE_PROMPT = 1

Import-Module posh-direnv
