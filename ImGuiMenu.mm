#include "imgui.h"

// Streamlined toggles for battle activation
bool enableAutoTrophyBot = false;
bool enableAutoNext = false;
bool enableSmartTroopDrop = false;
bool enableProPlayerStrategy = false;

void DrawImGuiMenu() {
    ImGui::Begin("Clash of Clans - Pro Trophy Bot", nullptr, ImGuiWindowFlags_AlwaysAutoResize);

    ImGui::Text("Battle Bot Menu");
    ImGui::Separator();

    // Main Master Switch
    ImGui::Checkbox("Enable Auto Trophy Push Bot", &enableAutoTrophyBot);
    
    if (enableAutoTrophyBot) {
        ImGui::Indent();
        
        ImGui::Checkbox("Auto-Next Until Target Found", &enableAutoNext);
        ImGui::Checkbox("Smart Troop Drop Strategy", &enableSmartTroopDrop);
        
        ImGui::Separator();
        ImGui::Checkbox("Enable Pro Player Strategy", &enableProPlayerStrategy);
        
        if (enableProPlayerStrategy) {
            ImGui::TextColored(ImVec4(0.0f, 1.0f, 0.0f, 1.0f), "Pro Strategy: Active for next battle");
        }

        ImGui::Unindent();
    }

    ImGui::Separator();
    if (ImGui::Button("Close Menu")) {
        // Toggle menu visibility logic here
    }

    ImGui::End();
}