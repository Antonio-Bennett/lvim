--This disables closing buffer with c
lvim.builtin.which_key.mappings["c"] = nil

lvim.keys.normal_mode["<S-x>"] = ":BufferLinePickClose<CR>"
