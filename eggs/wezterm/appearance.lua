-- wezterms built-in get_appearance doesn't support xdg-desktop-portal-hyprland
local M = {}

function M.get_appearance()
	local handle = io.popen("gsettings get org.gnome.desktop.interface color-scheme")
	if handle then
		local result = handle:read("*a")
		handle:close()
		if result and result:find("prefer%-dark") then
			return "Dark"
		end
	end
	return "Light"
end

-- TODO: Make custom color overrides: https://github.com/catppuccin/wezterm?tab=readme-ov-file#-faq
-- File will probably be obsolete then as well
function M.scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Macchiato"
	else
		return "Catppuccin Latte"
	end
end

return M
