-----------------------------------------
-- ID: 4120
-- Item: X-Potion
-- Item Effect: Restores 150 HP
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/msg");

function onItemCheck(target)
    if (target:getHP() == target:getMaxHP()) then
        return msgBasic.ITEM_UNABLE_TO_USE;
    elseif (target:hasStatusEffect(dsp.effects.MEDICINE)) then
        return msgBasic.ITEM_NO_USE_MEDICATED;
    end
    return 0;
end;

function onItemUse(target)
    target:messageBasic(msgBasic.RECOVERS_HP, 0, target:addHP(150*ITEM_POWER));
    target:addStatusEffect(dsp.effects.MEDICINE,0,0,5);
end;
