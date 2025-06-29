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
        templates: [],
        enabled: true,
      },
    hypr: #{
        targets: "~/.config/hypr",
        templates: [],
        enabled: true,
      },
    nvim: #{
        targets: "~/.config/nvim",
        templates: [],
        enabled: true,
    },
    btop: #{
        targets: "~/.config/btop",
        templates: [],
        enabled: true,
    },
    ianny: #{
        targets: "~/.config/io.github.zefr0x.ianny",
        templates: [],
        enabled: true,
    },
    keepassxc: #{
        targets: "~/.config/keepassxc",
        templates: ["keepassxc.ini"],
        enabled: true,
    },
    wezterm: #{
      targets: "~/.config/wezterm",
      templates: [],
      enabled: true,
    },
    cava: #{
      targets: "~/.config/cava",
      templates: [],
      enabled: true,
    },
};
