# Change directory update terminal title and get into neovim
 cd C:\my\directory; $HOST.UI.RawUI.WindowTitle = 'My Title'; nvim;

# Gracefully close all windows
(Get-Process | ? { $_.MainWindowTitle -ne "" } ) | % { $_.CloseMainWindow() }

