{
  # Import all your configuration modules here
  # Order matters
  imports = [ 
    ./looks.nix
    ./treesitter.nix
    ./globals.nix
    ./opts.nix
    ./keymaps.nix
    ./autocmds.nix
    ./telescope.nix
    ./oil.nix
    ./lsp.nix
    ./conform.nix
    ./comment.nix
    ./whichkey.nix
  ];
}
