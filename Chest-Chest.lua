-- Hàm tiện ích: tải và chạy script từ URL, có bắt lỗi
local function runScript(url)
    local success, err = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    if not success then
        warn("Lỗi khi chạy " .. url .. ": " .. tostring(err))
    end
end

-- Lấy ID place và ép về chuỗi
local placeId = tostring(game.PlaceId)

-- Link ClickChest dùng chung
local clickChestURL = "https://raw.githubusercontent.com/quocngo1412/Chest/refs/heads/main/ClickChest.lua"

-- Kiểm tra và chạy script tương ứng
if placeId == "8737899170" then
    runScript("https://raw.githubusercontent.com/quocngo1412/Chest/refs/heads/main/Map1.lua")
    runScript(clickChestURL)
elseif placeId == "16498369169" then
    runScript("https://raw.githubusercontent.com/quocngo1412/Chest/refs/heads/main/Map2.lua")
    runScript(clickChestURL)
elseif placeId == "17503543197" then
    runScript("https://raw.githubusercontent.com/quocngo1412/Chest/refs/heads/main/Map3.lua")
    runScript(clickChestURL)
else
    warn("Bạn đang ở Place ID không được hỗ trợ: " .. placeId)
end
