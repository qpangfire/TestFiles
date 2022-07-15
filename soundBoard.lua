local dfpwm = require("cc.audio.dfpwm")
local testSpeaker = peripheral.find("speaker")


local decoder = dfpwm.make_decoder()
--print("Options: \n")
while true do
local event, e1 = os.pullEvent()

if e1 == "1" then
    print("Playing Creeper Explosion Sound...")
    testSpeaker.playSound("minecraft:entity.creeper.primed")
    end
    
if e1 == "2" then
    print("Playing Ambient Cave Sound...")
    testSpeaker.playSound("minecraft:ambient.cave")
    end
    
if e1 == "3" then
    print("Playing The SpongeBob Noise...")
    for chunk in io.lines("sadSponge.dfpwm", 16 * 1024) do
        local buffer = decoder(chunk)
        
        while not testSpeaker.playAudio(buffer) do
            os.pullEvent("speaker_audio_empty")
            end
    end
    --testSpeaker.playAudio("sadSponge.dfpwm")
    end
end
