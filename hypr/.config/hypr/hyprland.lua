------------------
---- MONITORS ----
------------------

require("hyprland.monitor")

-------------------
---- AUTOSTART ----
-------------------

require("hyprland.startup")

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

require("hyprland.env")

-----------------------
----- PERMISSIONS -----
-----------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- hl.config({
--   ecosystem = {
--     enforce_permissions = true,
--   },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")

-----------------------
---- LOOK AND FEEL ----
-----------------------

require("hyprland.looks")

----------------
----  MISC  ----
----------------

require("hyprland.misc")

---------------
---- INPUT ----
---------------

require("hyprland.input")

---------------------
---- KEYBINDINGS ----
---------------------

require("hyprland.keybinds")

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

require("hyprland.window_rules")
require("hyprland.workspaces")
