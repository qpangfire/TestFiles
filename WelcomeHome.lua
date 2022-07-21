local speaker = peripheral.find("speaker")
local detector = peripheral.find("playerDetector")
local playerInRange = false
local playerTable
local range = 6

function tableLength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

while true do
    randomN = math.random(0, 1)
    playerTable = detector.getPlayersInRange(range)
    if tableLength(playerTable) ~= 0 and playerInRange == false then
    playerInRange = true
    for i = 1, tableLength(playerTable),1 do
		      if randomN == 1 then
            shell.run("speaker", "play", "Soldier_Welcome.dfpwm")
        elseif playerTable[i] == "Ecstarsy" then
            shell.run("speaker", "play", "Glados_Welcome_Josh.dfpwm")
        elseif playerTable[i] == "qpangfire" then
            shell.run("speaker", "play", "Glados_Welcome_Pang.dfpwm")
		      else
            shell.run("speaker", "play", "Glados_Welcome_Unknown.dfpwm")
    end
	end
   --shell.run("speaker", "play", "Soldier_Welcome.dfpwm")
    elseif tableLength(playerTable) == 0 then
    playerInRange = false
    end
end
