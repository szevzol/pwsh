oh-my-posh init pwsh --config '~\.config\pwsh\poshthemes\powerlevel10k_lean.omp.json' | Invoke-Expression

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

Import-Module venvlink-autoenv
Import-Module posh-direnv
