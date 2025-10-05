local function CheckWorldBossStatus(input)
    local currentPhase = 2

    local worldBosses = {
        {boss = "Sha of Anger", qid = 32099, phase = 1},
        {boss = "Galleon", qid = 32098, phase = 1},
        {boss = "Nalak", qid = 32518, phase = 3},
        {boss = "Oondasta", qid = 32519, phase = 3},
        {boss = "Celestials", qid = 33117, phase = 5},
        {boss = "Ordos", qid = 33118, phase = 5}
    }

    local showAll = input and input:lower() == "all"

    print("WorldBossCheck:")
    for _, b in ipairs(worldBosses) do
        if showAll or b.phase <= currentPhase then
            local isCompleted = C_QuestLog.IsQuestFlaggedCompleted(b.qid)
            local status

            if isCompleted then
               status = "|cff00ff00killed|r"
            else
              status = "|cffffff00available|r"
            end

            print(string.format("%s - %s", b.boss, status))
        end
    end
end

SLASH_WORLDBOSSCHECK1 = "/wbc"
SLASH_WORLDBOSSCHECK2 = "/worldbosscheck"
SlashCmdList["WORLDBOSSCHECK"] = CheckWorldBossStatus
