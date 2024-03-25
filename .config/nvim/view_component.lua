local function rails_view_component_class()
local current_file = vim.fn.expand('%')

print( vim.api.nvim_buf_get_name(0))
end


-- Define the function to open the corresponding view file
function OpenCorrespondingView()
    -- Get the current file path
    local current_file = vim.fn.expand('%:p')

    -- Check if the file is in the specified directory structure
    local is_valid_path = string.match(current_file, '/app/components/.+%.rb$')
    if is_valid_path then
        -- Extract the directory and file names
        local directory_name = vim.fn.fnamemodify(current_file, ':h:t')
        local file_name = vim.fn.fnamemodify(current_file, ':t:r')

        -- Construct the path to the view file
        local view_path = string.format('%s/%s/%s.html.slim', vim.fn.expand('%:p:h'), directory_name, file_name)

        -- Open the view file if it exists
        if vim.fn.filereadable(view_path) == 1 then
            vim.cmd('edit ' .. view_path)
        else
            print('Corresponding view file does not exist.')
            print(view_path)
        end
    else
        print('Not a valid file path for the specified directory structure.')
    end
end

-- Map a key combination to call the function (you can change this to your preference)
vim.api.nvim_set_keymap('n', '<Leader>ov', ':lua OpenCorrespondingView()<CR>', { noremap = true, silent = true })

