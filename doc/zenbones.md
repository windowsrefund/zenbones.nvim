# Documentation

A collection of Vim/Neovim colorschemes designed to highlight code using
contrasts and font variations.

## Requirement

- Neovim v0.8.0 (use v2.0.0 for older versions) or Vim 8.1

## Usage

Just apply the colorscheme as usual:

```vim
set termguicolors
set background=light " or dark

colorscheme zenbones

" or any from the collection
colorscheme zenwritten
colorscheme neobones
colorscheme vimbones
colorscheme rosebones
colorscheme forestbones
colorscheme nordbones
colorscheme tokyobones
colorscheme seoulbones
colorscheme duckbones
colorscheme zenburned
colorscheme kanagawabones
colorscheme randombones
```

## Configuration

Configuration is only available for Neovim. There are two ways to set
configuration. First:

```vim
" vimscript
let g:zenbones_solid_line_nr = v:true
let g:zenbones_darken_comments = 45
```

```lua
-- lua
vim.g.zenbones_solid_line_nr = true
vim.g.zenbones_darken_comments = 45
```

Second way is to set configuration is to assign a dictionary to the prefix:

```vim
" vimscript
let g:forestbones = #{ solid_line_nr: v:true, darken_comments: 45 }
```

```lua
-- lua
vim.g.forestbones = { solid_line_nr = true, darken_comments = 45 }
```

**Notes**: Flavors accept their own configuration by replacing the prefix with
the flavor name e.g. `g:rosebones_italic_comments`.

| Option                             | Background | Default | Description                                                               |
| ---------------------------------- | ---------- | ------- | ------------------------------------------------------------------------- |
| lightness                          | light      | `nil`   | Change background colors lightness. Options: `'bright'`, `'dim'`.         |
| darkness                           | dark       | `nil`   | Change background colors darkness. Options: `'stark'`, `'warm'`.          |
| solid_vert_split                   | both       | `false` | Solid \|hl-VertSplit\| background.                                        |
| solid_line_nr                      | both       | `false` | Solid \|hl-LineNr\| background.                                           |
| solid_float_border                 | both       | `false` | Make \|hl-FloatBorder\| have a more distinguishable background highlight. |
| darken_noncurrent_window           | light      | `false` | Make non-current window background darker than _Normal_.                  |
| lighten_noncurrent_window          | dark       | `false` | Make non-current window background lighter than _Normal_.                 |
| italic_comments                    | both       | `true`  | Make comments italicize.                                                  |
| darken_comments                    | light      | `38`    | Percentage to darken comments relative to Normal bg.                      |
| lighten_comments                   | dark       | `38`    | Percentage to lighten comments relative to Normal bg.                     |
| darken_non_text                    | light      | `25`    | Percentage to darken \|hl-NonText\| relative to Normal bg.                |
| lighten_non_text                   | dark       | `30`    | Percentage to lighten \|hl-NonText\| relative to Normal bg.               |
| darken_line_nr                     | light      | `33`    | Percentage to darken \|hl-LineNr\| relative to Normal bg.                 |
| lighten_line_nr                    | dark       | `35`    | Percentage to lighten \|hl-LineNr\| relative to Normal bg.                |
| darken_cursor_line                 | light      | `3`     | Percentage to darken \|hl-CursorLine\| relative to Normal bg.             |
| lighten_cursor_line                | dark       | `4`     | Percentage to lighten \|hl-CursorLine\| relative to Normal bg.            |
| colorize_diagnostic_underline_text | both       | `false` | Colorize the fg of `DiagnosticUnderline*`.                                |
| transparent_background             | both       | `false` | Make background transparent.                                              |

#### g:bones_compat

Set to `1` to enable compatibility mode for all colorschemes. Enabled in Vim. To
enable/disable compatibility mode for a specific theme, set the variable
`g:{theme}_compat` to `0` or `1`, e.g. `let g:zenbones_compat = 1`.

### lightline

```vim
let g:lightline = #{ colorscheme: 'zenbones' } " or any other flavor
```

### lualine

```lua
require("lualine").setup {
	options = { theme = "zenbones" }, -- or any other flavor
}
```

## Advanced Usage

Zenbones is pretty extensible thanks to Lush. You can easily retrieve the colors
in lua:

```lua
local theme = require "zenbones" -- or any other flavor
local palette = require "zenbones.palette"

print(theme.StatusLine.bg.hex)
print(palette.dark.blossom.darken(20).hex)
```

### Extend/override highlights

Here's an example of how to extend/override some highlights.

`lua/customize_zenbones.lua`:

```lua
local lush = require "lush"
local base = require "zenbones"

-- Create some specs
local specs = lush.parse(function()
	return {
		TabLine { base.TabLine, gui = "italic" }, -- setting gui to "italic"
	}
end)
-- Apply specs using lush tool-chain
lush.apply(lush.compile(specs))
```

And then somewhere in your `init.vim`:

```vim
autocmd ColorScheme zenbones lua require "customize_zenbones"
colorscheme zenbones
```

See also
[Lush's documentation](https://github.com/rktjmp/lush.nvim#advanced-usage) for
more options.

### Create your own colorscheme

You can ultimately create your own colorscheme that is based on zenbones by
defining a palette and generating a specs. Best way to demonstrate this is
through an example. Let's make a zenbones-flavored Gruvbox colorscheme called
`gruvbones`.

Let's define our
[colorscheme](https://neovim.io/doc/user/syntax.html#:colorscheme) in
`colors/gruvbones.lua`. It contains the following:

```lua
local colors_name = "gruvbones"
vim.g.colors_name = colors_name -- Required when defining a colorscheme

local lush = require "lush"
local hsluv = lush.hsluv -- Human-friendly hsl
local util = require "zenbones.util"

local bg = vim.o.background

-- Define a palette. Use `palette_extend` to fill unspecified colors
-- Based on https://github.com/gruvbox-community/gruvbox#palette
local palette
if bg == "light" then
	palette = util.palette_extend({
		bg = hsluv "#fbf1c7",
		fg = hsluv "#3c3836",
		rose = hsluv "#9d0006",
		leaf = hsluv "#79740e",
		wood = hsluv "#b57614",
		water = hsluv "#076678",
		blossom = hsluv "#8f3f71",
		sky = hsluv "#427b58",
	}, bg)
else
	palette = util.palette_extend({
		bg = hsluv "#282828",
		fg = hsluv "#ebdbb2",
		rose = hsluv "#fb4934",
		leaf = hsluv "#b8bb26",
		wood = hsluv "#fabd2f",
		water = hsluv "#83a598",
		blossom = hsluv "#d3869b",
		sky = hsluv "#83c07c",
	}, bg)
end

-- Generate the lush specs using the generator util
local generator = require "zenbones.specs"
local base_specs = generator.generate(palette, bg, generator.get_global_config(colors_name, bg))

-- Optionally extend specs using Lush
local specs = lush.extends({ base_specs }).with(function()
	return {
		Statement { base_specs.Statement, fg = palette.rose },
		Special { fg = palette.water },
		Type { fg = palette.sky, gui = "italic" },
	}
end)

-- Pass the specs to lush to apply
lush(specs)

-- Optionally set term colors
require("zenbones.term").apply_colors(palette)
```

And there you have it. Just call `colorscheme gruvbones` to use your new
colorscheme. It respects `&background` and other configurations too.
