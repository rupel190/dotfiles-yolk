import "colors" as colors;

export let data = #{
    for_vcs: LOCAL,
    cool_setting: if SYSTEM.hostname == "foo" { 10 } else { 25 }
};
export let eggs = #{

    
    dunst: #{
        targets: "~/.config/dunst",
        templates: ["dunstrc"],
        enabled: true,
      },

    ags: #{
        targets: "~/.config/ags",
        templates: ["app.ts", "style.scss", "widget/Bar.tsx"],
        enabled: true,
      },

    neofetch: #{
        targets: "~/.config/neofetch",
        templates: ["neofetch.conf"],
        enabled: true,
      },

    xdg_desktop_portal: #{
        targets: "~/.config/xdg-desktop-portal",
        templates: ["portals.conf"],
        enabled: true,
      },

    fish: #{
        targets: "~/.config/fish",
        enabled: true,
      },

    hypr: #{
        targets: "~/.config/hypr",
        enabled: true,
      },

    nvim: #{
        targets: "~/.config/nvim",
        enabled: true,
    },

    spicetify: #{
        targets: "~/.config/spicetify",
        enabled: true,
      },

    btop: #{
        targets: "~/.config/btop",
        enabled: true,
    },

    ianny: #{
        targets: "~/.config/io.github.zefr0x.ianny",
        enabled: true,
    },

    keepassxc: #{
        targets: "~/.config/keepassxc",
        templates: ["keepassxc.ini"],
        enabled: true,
    },

    wezterm: #{
      targets: "~/.config/wezterm",
      enabled: true,
    },

    cava: #{
      targets: "~/.config/cava",
      templates: ["config"],
      enabled: true,
    },

    tridactyl: #{
        targets: "~/.config/tridactyl",
        enabled: true,
      },

    mpv: #{
        targets: "~/.config/mpv",
        enabled: true,
      },
     

     bat: #{
      targets: #{
        ".": "~/.config/bat",
        "../../commons/rupels_dynamic.tmTheme": "~/.config/bat/themes/rupels_dynamic.tmTheme", // Theme loading requires bat cache --build
      },
      templates: ["../../commons/rupels_dynamic.tmTheme"],
      enabled: true,
    },

    yazi: #{
      targets: #{
        ".": "~/.config/yazi",
        "../../commons/rupels_dynamic.tmTheme": "~/.config/yazi/themes/rupels_dynamic.tmTheme",
      },
      templates: ["../../commons/rupels_dynamic.tmTheme"],
      enabled: true,
    },

  


        
};
