{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      cal = "cal -m --iso -w -y";
      cb = "chatblade -i -c 4o";
      cls = "clear";
      essh = "nvim ~/.ssh/config";
      gu = "gitui";
      grep = "rg";
      hosts = "sudo nvim /etc/hosts";
      lf = "yy";
      ls = "eza -la --group-directories-first --sort=name --time-style=long-iso";
      pm = "pulsemixer";
      rm = "rm -rf";
      vim = "nvim";
      hupdate = "home-manager switch -b backup --flake ~/nix-config#$(whoami)@$(hostname)";
      rebuild = "sudo nixos-rebuild switch --flake ~/nix-config#$(hostname)";
    };

    histSize = 1000000;
    histFile = "$HOME/.zsh_history";
  };

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  programs.steam = {
    enable = true;
  };

  programs.gamescope = {
    enable = true;
  };

  programs.firefox = {
    enable = true;

    policies = {
      AutofillAddressEnabled = false;
      AutofillCreditCardEnabled = false;
      CaptivePortal = false;
      DisableFirefoxAccounts = false;
      DisableFirefoxStudies = true;
      DisableFormHistory = true;
      DisablePocket = true;
      DisableSetDesktopBackground = true;
      DisableTelemetry = true;
      DontCheckDefaultBrowser = true;
      EnableTrackingProtection = true;
      FeatureRecommendations = false;
      NoDefaultBookmarks = true;
      OfferToSaveLogins = false;
      PasswordManagerEnabled = false;
      PictureInPicture = false;
      SearchBar = "unified";
      SkipOnboarding = true;
      SkipTermsOfUse = true;
      SanitizeOnShutdown = {
        FormData = true;
      };
      FirefoxHome = {
        Highlights = false;
        Pocket = false;
        Snippets = false;
        SponsporedTopSites = false;
        SponsporedPocket = false;
      };

      Preferences = {
        # Privacy settings
        "extensions.pocket.enabled" = false;
        "browser.topsites.contile.enabled" = false;
        "browser.newtabpage.activity-stream.showSponsored" = false;
        "browser.newtabpage.activity-stream.system.showSponsored" = false;
        "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
      };

      # ExtensionSettings = {
      #   "uBlock0@raymondhill.net" = {
      #     install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
      #     installation_mode = "force_installed";
      #   };
      #   "tridactyl.vim@cmcaine.co.uk" = {
      #     install_url = "https://addons.mozilla.org/firefox/downloads/latest/tridactyl-vim/latest.xpi";
      #     installation_mode = "force_installed";
      #   };
      #   "keepassxc-browser@keepassxc.org" = {
      #     install_url = "https://addons.mozilla.org/firefox/downloads/latest/keepassxc-browser/latest.xpi";
      #     installation_mode = "force_installed";
      #   };
      #   "simple-translate@sienori" = {
      #     installation_mode = "force_installed";
      #     install_url = "https://addons.mozilla.org/firefox/downloads/latest/simple-translate/latest.xpi";
      #   };
      #   "firefox@tampermonkey.net" = {
      #     install_url = "https://addons.mozilla.org/firefox/downloads/latest/tampermonkey/latest.xpi";
      #     installation_mode = "force_installed";
      #   };
      # };
    };
  };
}
