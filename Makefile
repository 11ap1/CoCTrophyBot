TARGET := iphone:clang:latest:14.0
ARCHS := arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CoCTrophyBot

CoCTrophyBot_FILES = Tweak.xm ImGuiMenu.mm imgui/imgui.cpp imgui/imgui_draw.cpp imgui/imgui_tables.cpp imgui/imgui_widgets.cpp
CoCTrophyBot_CFLAGS = -fobjc-arc -Iimgui

include $(THEOS_MAKE_PATH)/tweak.mk