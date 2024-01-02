local keymap = vim.keymap
local opts = {
  noremap = true,
  silent = true
}

keymap.set("n", "<leader>xx", function() require("trouble").open() end)
keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end)
keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end)
keymap.set("n", "<leader>xq", function() require("trouble").open("quickfix") end)
keymap.set("n", "<leader>xl", function() require("trouble").open("loclist") end)
keymap.set("n", "gR", function() require("trouble").open("lsp_references") end)
keymap.set("n", "<leader>n", ":ASToggle<CR>", {})
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "<leader><leader>", ":Telescope<CR>", {})

-- Split windows
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- New tab
keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprevious<Return>", opts)

-- Find and replace
keymap.set("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" })
keymap.set('n', '<leader>Sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word"
})
keymap.set('n', '<leader>Sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file"
})

-- ChatGPT integration
keymap.set("n", "<leader>C", "<cmd>ChatGPT<CR>", { desc = "ChatGPT" })
keymap.set("n", "<leader>Cc", "<cmd>ChatGPTActAs<CR>", { desc = "ChatGPT Act As" })
keymap.set({ "n", "v" }, "<leader>Ce", "<cmd>ChatGPTEditWithInstruction<CR>", { desc = "Edit with instruction" })
keymap.set({ "n", "v" }, "<leader>Cg", "<cmd>ChatGPTRun grammar_correction<CR>", { desc = "Grammar Correction" })
keymap.set({ "n", "v" }, "<leader>Ct", "<cmd>ChatGPTRun translate<CR>", { desc = "Translate" })
keymap.set({ "n", "v" }, "<leader>Ck", "<cmd>ChatGPTRun keywords<CR>", { desc = "Keywords" })
keymap.set({ "n", "v" }, "<leader>Cd", "<cmd>ChatGPTRun docstring<CR>", { desc = "Docstring" })
keymap.set({ "n", "v" }, "<leader>Ca", "<cmd>ChatGPTRun add_tests<CR>", { desc = "Add tests" })
keymap.set({ "n", "v" }, "<leader>Co", "<cmd>ChatGPTRun optimize_code<CR>", { desc = "Optimize code" })
keymap.set({ "n", "v" }, "<leader>Cs", "<cmd>ChatGPTRun summarize<CR>", { desc = "Summarize" })
keymap.set({ "n", "v" }, "<leader>Cf", "<cmd>ChatGPTRun fix_bugs<CR>", { desc = "Fix bugs" })
keymap.set({ "n", "v" }, "<leader>Cx", "<cmd>ChatGPTRun explain_code<CR>", { desc = "Explain code" })
keymap.set({ "n", "v" }, "<leader>Cf", "<cmd>ChatGPTRun fix_bugs<CR>", { desc = "Fix bugs" })
keymap.set({ "n", "v" }, "<leader>Cr", "<cmd>ChatGPTRun roxygen_edit<CR>", { desc = "Roxygen Edit" })
keymap.set({ "n", "v" }, "<leader>Cl", "<cmd>ChatGPTRun code_readability_analysis<CR>", { desc = "Code Readability Analysis" })
