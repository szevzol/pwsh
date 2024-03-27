# Powershell config

```text
cd ~\.config
git clone https://github.com/szevzol/pwsh.git

```

Edit powershell profile to call cloned config.

Powershell profile path is saved in env $PROFILE.

Usually it's `~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`

There will be one line in this profile:

```powershell
&"~\.config\pwsh\Microsoft.PowerShell_profile.ps1"

```
