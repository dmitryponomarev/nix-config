{ ... }:
{
  autoCmd = [
    {
      event = "VimResized";
      command = ''lua vim.cmd "tabdo wincmd ="'';
    }
  ];
}
