#include "imgui.h"

// Define variables to track your toggles
bool enableAutoTrophyBot = false;
bool enableAutoNext = false;
bool enableSmartTroopDrop = false;
int targetTrophies = 5000;

void DrawImGuiMenu() {
    // Set a clean style or window size if needed
    ImGui::Begin("Clash of Clans - Pro Trophy Bot", nullptr, ImGuiWindowFlags_AlwaysAutoResize);

    ImGui::Text("Welcome to ESign Mod Menu!");
    ImGui::Separator();

    // On/Off Toggles for your bot features
    ImGui::Checkbox("Enable Auto Trophy Push Bot", &enableAutoTrophyBot);
    
    if (enableAutoTrophyBot) {
        ImGui::Indent();
        
        ImGui::Checkbox("Auto-Next Until Target Found", &enableAutoNext);
        ImGui::Checkbox("Smart Troop Drop Strategy", &enableSmartTroopDrop);
        
        // Slider for target trophies
        ImGui::SliderInt("Target Trophies", &targetTrophies, 1000, 6500);

        if (ImGui::Button("Trigger Emergency Drop")) {
            // Action code when button is clicked
        }
        
        ImGui::Unindent();
    }

    ImGui::Separator();
    if (ImGui::Button("Close Menu")) {
        // Toggle menu visibility logic here
    }

    ImGui::End();
}