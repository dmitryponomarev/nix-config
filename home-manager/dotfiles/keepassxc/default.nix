{ config, pkgs, ... }:
{
  programs.keepassxc = {
    enable = true;
    settings = {
      General = {
        ConfigVersion = 2;
      };
      GUI = {
        ApplicationTheme = "dark";
        ColorPasswords = true;
        MinimizeOnClose = true;
        MinimizeOnStartup = true;
        ShowTrayIcon = true;
        HidePasswords = false;
      };
      KeeShare = {
        Active = "<?xml version=\"1.0\"?><KeeShare><Active/></KeeShare>";
        QuietSuccess = true;
      };
      PasswordGenerator = {
        Length = 14;
        SpecialChars = true;
      };
      Browser = {
        Enabled = true;
        CustomProxyLocation = "";
      };
      Security = {
        ClearClipboardTimeout = 20;
      };
    };
  };
}
