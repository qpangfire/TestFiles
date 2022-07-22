quarryPlaced = false
local bool, qTable
local quarryWorking = false
while true do
    if quarryPlaced == false and turtle.getItemDetail(1).name == "quarryplus:solid_fuel_quarry" then
        turtle.dig()
        turtle.select(1)
        turtle.place()
        quarryPlaced = true
        quarryWorking = true
        turtle.select(2)
        turtle.drop(5)
    end
    if quarryPlaced == true then
        bool, qTable = turtle.inspect()
        print(textutils.serialize(qTable.state.working))
    end
	--if qTable ~= nil then
    if quarryPlaced == true and qTable.state.working == false then
        turtle.select(1)
        sleep(1)
        print("dropping")
        turtle.dropUp()
        sleep(1)
        turtle.select(1)
        turtle.dig()
        sleep(0.2)
        for i = 1, 12, 1 do
            if turtle.detect() == true then turtle.dig() end
            turtle.forward()
        end
        quarryPlaced = false
    end
	--end
end
