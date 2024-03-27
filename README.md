# Powershell config

## Usage

```text
cd ~\.config
git clone https://github.com/szevzol/pwsh.git

```

Edit powershell profile to call cloned config.

Powershell profile path is saved in env $PROFILE.

Usually it's `~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`

There will be one line in this profile:

```powershell
. ~\.config\pwsh\Microsoft.PowerShell_profile.ps1

```

## Tools and pwsh modules used

[oh-my-posh](https://ohmyposh.dev/)

[PSReadLine](https://github.com/PowerShell/PSReadLine)

[fzf](https://github.com/junegunn/fzf)

[ripgrep](https://github.com/BurntSushi/ripgrep)

[PSFzf](https://github.com/kelleyma49/PSFzf)

[ZLocation](https://github.com/vors/ZLocation)

[venvlink](https://github.com/fohrloop/venvlink)

[venvlink-autoenv](https://github.com/fohrloop/venvlink-autoenv-powershell)

[psdirenv](https://github.com/takekazuomi/posh-direnv)
