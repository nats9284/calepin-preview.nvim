The Neovim plugin for previewing Typst documents which contain [calepin](https://github.com/vincentarelbundock/calepin) executable code. Just run :Calepin before previewing with [chomosuke/typst-preview.nvim](https://github.com/chomosuke/typst-preview.nvim).


## Installation

#### Dependencies
- curl
- [chomosuke/typst-preview.nvim](https://github.com/chomosuke/typst-preview.nvim) or (other Typst previewers are also ok)

**Lazy.nvim:**

```lua
{
  'nats9284/calepin-preview.nvim',
  lazy = false, -- or ft = 'typst'
  config = function()
    require 'calepin-preview'.setup {}
  end,
  opts = {}, -- lazy.nvim will implicitly calls `setup {}`
}
```

If you use lazy.nvim, the dependent plugin ("chomosuke/typst-preview-nvim") is automatically installed.

**Packer.nvim:**

```lua
use {
  'nats9284/calepin-preview.nvim',
  config = function()
    require 'calepin-preview'.setup {}
  end,
}

use {
  'chomosuke/typst-preview.nvim',
  config = function()
    require 'typst-preview'.setup {}
  end,
}

```

**vim-plug:**

```vim
Plug  'nats9284/calepin-preview.nvim'
Plug  'chomosuke/typst-preview.nvim'

```

## Usage

### Commands / Functions:

- `:Calepin`:
  - This command triggers Calepin to watch.
  - After executing this command, you can run ":TypstPreview".
- `:CalepinStop`:
  - Stop calepin watching.


## Contribution

All feature requests are welcome.

