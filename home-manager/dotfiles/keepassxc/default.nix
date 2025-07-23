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
        HidePasswords = false;
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
