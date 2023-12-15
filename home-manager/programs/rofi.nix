{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
  };

  home.packages = with pkgs; [rofi-power-menu];

  xdg.configFile = {
    "rofi/rofi-wifi-menu" = lib.mkIf config.rot.wifi.enable {
      source = ./rofi-wifi-menu.sh;
    };

    "rofi/config.rasi".text = ''
      @theme "~/.cache/wallust/rofi.rasi"
    '';
  };

  rot.wallust.entries."rofi.rasi" = {
    enable = config.programs.rofi.enable;
    target = "~/.cache/wallust/rofi.rasi";
    text = ''
* {
    accent: {color4};
    background: {background};
    border-color: {color0};
    button-text-color: {color0};
    foreground: {foreground};
    selected: {color1};
    width: 600;
}

/*
configuration {
    show-icons: true;
}
*/

button {
    background-color: @background;
    horizontal-align: 0.5;
    padding: 10px;
    text-color: @button-text-color;
    vertical-align: 0.5;
}

button selected {
    background-color: @background;
    text-color: @accent;
}

element {
    background-color: @background;
    padding: 5px;
    text-color: @foreground;
}

element selected {
    background-color: @background;
    text-color: @selected;
}

element-icon {
    size: 25px;
}

element-text, element-icon, mode-switcher {
    background-color: inherit;
    text-color: inherit;
}

entry {
    background-color: @background;
    margin: 20px 0px 0px 10px;
    padding: 6px;
    text-color: @foreground;
}

inputbar {
    background-color: @background;
    border-radius: 5px;
    children: [prompt,entry];
    padding: 2px;
}

listview {
    background-color: @background;
    border: 0px 0px 0px;
    columns: 2;
    lines: 5;
    margin: 10px 0px 0px 20px;
    padding: 6px 0px 0px;
}

mainbox {
    background-color: @background;
}

message {
    background-color: @background;
    border-radius: 5px;
    margin: 2px;
    padding: 2px;
}

mode-switcher {
    enabled: false;
    spacing: 0;
}

prompt {
    background-color: @accent;
    border-radius: 3px;
    margin: 20px 0px 0px 20px;
    padding: 6px;
    text-color: @background;
}

textbox {
    background-color: @background;
    margin: 20px 0px 0px 20px;
    padding: 6px;
    text-color: @accent;
}

textbox-prompt-colon {
    expand: false;
    str: ":";
}

window {
    background-color: @background;
    border: 3px;
    border-color: @border-color;
    border-radius: 12px;
    height: 360px;
}
    '';
  };
}
