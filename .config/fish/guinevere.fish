#!/usr/bin/env fish

# Wayland
set -gx MOZ_ENABLE_WAYLAND 1
set -gx XDG_SESSION_TYPE wayland
set -gx XDG_CURRENT_DESKTOP sway
set -gx ECORE_EVAS_ENGINE wayland_egl
set -gx ELM_ENGINE wayland_egl
set -gx _JAVA_AWT_WM_NONREPARENTING 1
set -gx QT_WAYLAND_DISABLE_WINDOWDECORATION 1

# Itch can't start games
#set -gx SDL_VIDEODRIVER wayland

# Zoom doesn't start
# Seafile takes a long time to start
#set -gx QT_QPA_PLATFORM wayland-egl

# Font is too large for Seafile
#set -gx QT_WAYLAND_FORCE_DPI
