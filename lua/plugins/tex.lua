return {
  "lervag/vimtex",
  lazy = false, 
  init = function()
    -- SumatraPDF setup
    vim.g.vimtex_view_general_viewer = 'C:/Users/alank/AppData/Local/SumatraPDF/SumatraPDF.exe'
    vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
    
    -- Full latexmk configuration table
    vim.g.vimtex_compiler_latexmk = {
      build_dir = '',
      callback = 1,
      continuous = 1,
      executable = 'latexmk',
      hooks = {},
      options = {
        '-pdf',          -- crucial! tells latexmk to output a pdf
        '-shell-escape', -- grants minted permission to run
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
      }
    }
  end,
}
