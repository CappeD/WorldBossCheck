local function CheckWorldBossStatus()
    local worldBosses = {
        {boss = "Sha of Anger", qid = 32099},
        {boss = "Galleon", qid = 32098}
    }

    print("WorldBossCheck:")
    for _, b in ipairs(worldBosses) do
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

SLASH_WORLDBOSSCHECK1 = "/wbc"
SLASH_WORLDBOSSCHECK2 = "/worldbosscheck"
SlashCmdList["WORLDBOSSCHECK"] = CheckWorldBossStatus
