{
  config,
  pkgs,
  ...
}:
{
  programs.yazi = {
    enable = true;
    plugins = with pkgs.yaziPlugins; {
      git = git;
      # piper = piper;
      ouch = ouch;
      chmod = chmod;
      smart-enter = smart-enter;
      full-border = full-border;
      smart-paste = smart-paste;
      starship = starship;
      # jump-to-char = jump-to-char;
    };
    initLua =
      # lua
      ''
        require("full-border"):setup({ type = ui.Border.ROUNDED })
        require("starship"):setup()
        require("session"):setup {
          sync_yanked = true,
        }
      '';
    keymap = {
      mgr.prepend_keymap = [
        {
          on = [ "C" ];
          run = "plugin ouch";
          desc = "Compress with ouch";
        }
        {
          on = [ "l" ];
          run = "plugin smart-enter";
          desc = "Enter the child directory, or open the file";
        }
        {
          on = [
            "c"
            "m"
          ];
          run = "plugin chmod";
          desc = "Chmod on selected files";
        }
        {
          on = [
            "c"
            "d"
          ];
          run = "plugin kdiff3";
          desc = "Compare files with kdiff3";
        }
        {
          on = [
            "c"
            "v"
          ];
          run = "plugin vimdiff";
          desc = "Compare files with vimdiff";
        }
      ];
    };
    settings = {
      mgr = {
        ratio = [
          1
          4
          3
        ];
        sort_by = "alphabetical";
        sort_sensitive = false;
        sort_reverse = false;
        sort_dir_first = true;
        linemode = "size_and_mtime";
        show_hidden = true;
        show_symlink = true;
      };

      preview = {
        image_filter = "lanczos3";
        image_quality = 90;
        tab_size = 1;
        max_width = 600;
        max_height = 900;
        ueberzug_scale = 1;
        ueberzug_offset = [
          0
          0
          0
          0
        ];
      };
      opener = {
        edit = [
          {
            run = "$EDITOR \"$@\"";
            block = true;
            for = "unix";
          }
        ];
        extract = [
          {
            run = "ouch d -y \"$@\"";
            desc = "Extract here with ouch";
            for = "unix";
          }
        ];
      };
      plugin = {
        prepend_previewers = [
          {
            mime = "application/*zip";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/x-tar";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/x-bzip2";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/x-7z-compressed";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/x-rar";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/x-xz";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/xz";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/x-zstd";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/zstd";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/java-archive";
            run = "${pkgs.ouch}/bin/ouch";
          }
        ];
      };
    };
  };

  home.file.".config/yazi/plugins/kdiff3.yazi/main.lua".text = ''
    local selected = ya.sync(function()
      local tab, paths = cx.active, {}
      for _, u in pairs(tab.selected) do
        paths[#paths + 1] = tostring(u)
      end
      return paths
    end)

    return {
      entry = function()
        ya.emit("escape", { visual = true })

        local urls = selected()
        if #urls == 0 or #urls == 1 or #urls > 3 then
          return ya.notify({ title = "Kdiff3", content = "Select 2 or 3 files", level = "warn", timeout = 5 })
        end

        local status, err = Command("kdiff3"):arg(urls):spawn():wait()
      end,
    }
  '';
  home.file.".config/yazi/plugins/vimdiff.yazi/main.lua".text = ''
    local selected = ya.sync(function()
      local tab, paths = cx.active, {}
      for _, u in pairs(tab.selected) do
        paths[#paths + 1] = tostring(u)
      end
      return paths
    end)

    return {
      entry = function()
        ya.emit("escape", { visual = true })

        local urls = selected()
        if #urls ~= 2 then
          return ya.notify({ title = "Vimdiff", content = "Select only 2 files", level = "warn", timeout = 5 })
        end

        local status, err = Command("kitty"):arg("nvim"):arg("-d"):arg(urls):spawn():wait()
      end,
    }
  '';
}
