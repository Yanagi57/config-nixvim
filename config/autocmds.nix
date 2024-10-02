{
  autoGroups = {
    highlight-yank = {
      clear = true;
    };
  };
  
  autoCmd = [
    {
      event = "TextYankPost";
      group = "highlight-yank";
      callback = {__raw = "function() vim.highlight.on_yank() end";};
      desc = "Highlight when yanking (copying) text";
    }
  ];
}
