# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a WezTerm configuration written in Lua. WezTerm is a GPU-accelerated cross-platform terminal emulator and multiplexer. The configuration is platform-aware, automatically loading different settings and keymaps for macOS (aarch64-apple-darwin) and Windows (x86_64-pc-windows-msvc).

## Architecture

The configuration follows a modular architecture with platform-specific overrides:

### Entry Point
- `wezterm.lua` - Main entry point that loads config modules and initializes the tabline plugin

### Configuration System
The config system uses a base + platform-specific override pattern:

1. `config/init.lua` - Entry point that:
   - Loads `config/base.lua` as the foundation
   - Detects the platform using `wezterm.target_triple`
   - Deep merges platform-specific config on top using `utils.tbl_deep_extend()`

2. `config/base.lua` - Base configuration shared across all platforms:
   - Color scheme
   - Leader key configuration
   - Launch menu entries
   - Default working directory

3. `config/mac.lua` - macOS-specific overrides:
   - Font: JetBrains Mono Bold, size 11
   - Merges macOS-specific keymaps

4. `config/window.lua` - Windows-specific overrides:
   - Font: JetBrainsMono Nerd Font Mono, size 9
   - WSL domain configuration for Arch Linux
   - Default program (Git Bash)
   - Launch menu with Bash, PowerShell 7, and WSL Fish shell
   - Workspace switching keymaps for School, Config, Work, and Notes directories

### Keymap System
Keymaps follow the same base + platform-specific pattern:

1. `keymaps/base.lua` - Base keymaps shared across platforms:
   - Leader key: `CTRL+SHIFT+?`
   - Pane management: Leader + hjkl (vim-style navigation)
   - Pane splitting: Leader + s (vertical split)
   - Pane resizing: Leader + arrow keys
   - Tab switching: CTRL+ALT+1-5
   - Scroll: SHIFT+arrow up/down
   - Copy/paste: CTRL+SHIFT+c/v

2. `keymaps/mac.lua` - macOS-specific keymaps (minimal, just clipboard operations)

3. `keymaps/window.lua` - Windows-specific keymaps:
   - Tab cycling: CTRL+SHIFT+Tab / CTRL+ALT+SHIFT+Tab
   - Fullscreen toggle: CTRL+F11
   - Bottom split pane: CTRL+SHIFT+ALT+| (20% height)
   - Workspace switching: Leader + s/c/w/n
   - Disables default zoom assignments: CTRL+/-, CTRL+SHIFT+/- (prevents accidental font size changes)

### Utilities
- `utils/tables.lua` - Table manipulation utilities:
  - `tbl_extend()` - Shallow merge (modifies target in-place)
  - `list_extend()` - Concatenates two lists into a new list
  - `tbl_deep_extend()` - Deep merge with special handling for lists vs tables

### Plugin Integration
- Uses the [tabline.wez](https://github.com/michaelbrusegard/tabline.wez) plugin for statusline/tabline
- Configured in `wezterm.lua` with custom sections showing mode, workspace, tabs, RAM/CPU, datetime, and domain

## Platform Detection Pattern

When adding platform-specific features:
1. Add base functionality to `config/base.lua` or `keymaps/base.lua`
2. Add macOS overrides to `config/mac.lua` or `keymaps/mac.lua`
3. Add Windows overrides to `config/window.lua` or `keymaps/window.lua`
4. The platform detection in `config/init.lua` will automatically apply the right overrides
5. Platform detection uses `wezterm.target_triple`:
   - `"aarch64-apple-darwin"` for macOS
   - `"x86_64-pc-windows-msvc"` for Windows

## Keymap Merging Strategy

- Platform-specific keymap modules extend (not replace) base keymaps
- Use `utils.list_extend()` to concatenate keymap tables (see `keymaps/window.lua:68`)
- Later entries in the keymap list take precedence over earlier ones for duplicate key bindings

## Testing Configuration

To test configuration changes:
1. Edit the relevant Lua files
2. Reload WezTerm configuration:
   - Open command palette: `CTRL+SHIFT+P`
   - Select "Reload Configuration"
   - Or restart WezTerm entirely
3. Enable debug mode by uncommenting `debug_key_events = true` in `config/base.lua` to troubleshoot keybindings

