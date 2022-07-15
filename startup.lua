local password = "."
local input
local speaker = peripheral.find("speaker")
local spongeAudio = io.open("spongebobSad.dfpwm")
while input ~= password do
    term.clear()
    term.setCursorPos(1, 1)
    print("Please enter your password: ")
    input = read("*")
    if input ~= password then
    shell.run("speaker", "play", "/disk/spongebobSad.dfpwm")
    term.clear()
    end    
end    
