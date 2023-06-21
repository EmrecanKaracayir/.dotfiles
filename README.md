# CON-IN-DO

## Configurations

### Gnome

- **Tweaks**
  - UI Font: Inter
  - Monospace Font: CaskaydiaCove Nerd
  - Icons: MoreWaita
  - Theme: Gradience
  - Legacy Theme: Adw-gtk3
- **Extensions**
  - Blur My Shell: For blurring panel, dock and overview
  - Clipboard Indicator: Windows like clipboard manager
  - Color Picker: PowerToys like color picker
  - Cronomix: Timer, chronometer, alarm and pomodoro timer
  - Dash to Dock: macOS style dock
  - Just Perfection: UI tweaks
  - Logo Menu: macOS style logo menu
  - Rounded Window Corners: Rounds all window corners
  - Unite: Top panel UI adjustments
  - Vitals: System monitoring
  - Applications Menu: Top panel menu for quick application access
  - Pop Shell: Window tiling manager for Gnome

### Tools

- Tweaks: Application for tweaking Gnome
- Extension Manager: Hub and manager for Gnome extensions
- Gradience: Theming Gnome
- Snap: Package manager for proprietary Linux applications
- BlackBox: Beautiful terminal to replace the default Gnome Terminal
- Fish: A replacement for the builtin bash shell
  - **Plugins**
    - jorgebucaran/fisher: Fish plugin manager
    - jorgebucaran/nvm.fish: nvm recreation for Fish
    - jethrokuan/z: z recreation for Fish
    - gazorby/fish-exa: exa Fish integration (requires exa)
    - patrickf1/fzf.fish: fzf Fish integration (requires fzf)
    - decors/fish-ghq: ghq Fish integration (requires ghq)
  - **Theme**
    - Codemos Modern
  - **Prompt**
    - Starship
- Starship: Beautiful shell prompt for fish
- KMonad: Low level keyboard customizations
  - **Presets**
    - builtin-huawei-extended: A custom KMonad preset for builtin Huawei keyboard

## Installations

- **flatpak** via `flatpak list`
  - BlackBox
  - Extension Manager
  - Gradience
  - Web
  - Geary
  - adw-gtk3
  - adw-gtk3-dark
- **dnf** via `dnf repoquery --userinsalled`
  - 1password
  - bat
  - code
  - exa
  - fd-find
  - fish
  - fzf
  - gnome-shell-extension-pop-shell
  - gnome-tweaks
  - google-chrome-stable
  - neofetch
  - neovim
  - starship
- **snap** via `snap list`
  - obsidian
  - snap-store
  - snapd
  - todoist

## DotFiles

- **BlackBox**
  - .var/app/com.raggesilver.BlackBox/config/glib-2.0/settings/keyfile
  - .var/app/com.raggesilver.BlackBox/data/blackbox/schemes/codemos-modern-dark.json
- **Fish**
  - .config/fish/config.fish
  - .config/fish/themes/codemos-modern-dark.fish
- **Starship**
  - .config/starship.toml
- **KMonad**
  - .config/kmonad/builtin-huawei-extended.kbd
