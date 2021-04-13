
HnSPlayers = {}

function addTarget()
    local name, realm = UnitName("target");
    print(realm);

    if(realm ~= nil) then
        name = name .. " - " .. realm;
    end

    if(not HnS_has_value(HnSPlayers, name)) then
        table.insert(HnSPlayers, name);
    end
    for i,n in ipairs(HnSPlayers) do
        print(n);
    end
end



SLASH_HNS1 = '/hns'
SlashCmdList['HNS'] = function()
    print("Hide and seek!");
    addTarget();
end



function HnS_has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end



