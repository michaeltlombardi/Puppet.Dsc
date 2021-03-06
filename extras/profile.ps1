Function New-LocalGemfile {
  Param (
    [string]$Path
  )
  $Gems = @'
gem 'fuubar'
gem 'pry-byebug'
gem 'pry-stack_explorer'
'@
  if ([string]::IsNullOrEmpty($Path)) {
    $Path = Join-Path -Path (Get-Location) -ChildPath 'gemfile.local'
  }
  [IO.File]::WriteAllLines($Path, $Gems)
}

Import-Module C:\ProgramData\chocolatey\helpers\chocolateyProfile.psm1
Update-SessionEnvironment
Import-Module C:\tools\poshgit\*posh-git*\src\posh-git.psd1