require("toggle-bool").setup {
  mapping = '<enter>',
  additional_toggles = {
    Yes = 'No',
    On = 'Off',
    Enable = 'Disable',
    Enabled = 'Disabled',
    enable = 'disable',
    enabled = 'disabled',
    increment = 'decrement',
    Increment = 'Decrement',
    increase = 'decrease',
    Increase = 'Decrease',
    hide = 'show',
    Hide = 'Show',
    remove = 'add',
    Remove = 'Add',
    First = 'Last',
    Before = 'After',
    Internal = 'External',
    Allow = 'Deny',
    allow = 'deny',
    All = 'None',
    all = 'none',
    white = 'black'
  },
}