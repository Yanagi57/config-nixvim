{
  keymaps = [
    {
      mode = "n";
      action = "<cmd>Oil<CR>";
      key = "<leader>pv";
      options.desc = "Show Project Files";
    }
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options.desc = "Move Line Up";
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
      options.desc = "Move Line Down";
    }
    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
      options.desc = "Remove New Line Character of Current Line";
    }
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options.desc = "Scroll Down";
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options.desc = "Scroll Up";
    }
    {
      mode = "n";
      key = "n";
      action = "nzzzv";
      options.desc = "Move to Next Occurrence";
    }
    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
      options.desc = "Move to Previous Occurrence";
    }
    {
      mode = "n";
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
    }
    {
      mode = ["n" "v"];
      key = "<leader>y";
      action = "[[\"+y\"]]";
      options.desc = "Copy to Clipboard";
    }
    {
      mode = "i";
      key = "<C-c>";
      action = "<Esc>";
    }
    {
      mode = "n";
      key = "[d";
      action = "vim.diagnostic.goto_prev";
      options.desc = "Go to previous [D]iagnostic message";
    }
    {
      mode = "n";
      key = "]d";
      action = "vim.diagnostic.goto_next";
      options.desc = "Go to next [D]iagnostic message";
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "vim.diagnostic.open_float";
      options.desc = "Show diagnostic [E]rror messages";
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h"; 
      options.desc = "Move focus to the left window"; 
    }
    {
       mode = "n"; 
       key = "<C-l>"; 
       action = "<C-w>l"; 
       options.desc = "Move focus to the right window"; 
     }
     {
       mode = "n"; 
       key = "<C-j>"; 
       action = "<C-w>j"; 
       options.desc = "Move focus to the lower window"; 
     }
     {
       mode = "n"; 
       key = "<C-k>"; 
       action = "<C-w>k"; 
       options.desc = "Move focus to the upper window"; 
     }
     {
       mode = "n";
       key = "<leader>b";
       action = "<cmd>%bd|e#<CR>";
       options = {
         silent = true;
         desc = "Close other buffers";
       };
     }
  ];
}
