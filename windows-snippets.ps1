# Change directory update terminal title and get into neovim
 cd C:\my\directory; $HOST.UI.RawUI.WindowTitle = 'My Title'; nvim;

# Gracefully close all windows
(Get-Process | ? { $_.MainWindowTitle -ne "" } ) | % { $_.CloseMainWindow() }

# Delete all local git branches except for current and master branches
git branch | ? { -not ($_.Trim().StartsWith("*") -or $_.Trim() -eq "master")  } | % { git branch -D $_.Trim() }
