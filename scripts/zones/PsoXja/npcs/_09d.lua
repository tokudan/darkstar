-----------------------------------
-- Area: Pso'Xja
--  NPC: _09d (Stone Gate)
-- Notes: Spawns Gargoyle when triggered
-- !pos 301.600 -1.925 -10.000 9
-----------------------------------
package.loaded["scripts/zones/PsoXja/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/PsoXja/globals");
require("scripts/zones/PsoXja/TextIDs");
require("scripts/zones/PsoXja/MobIDs");
require("scripts/globals/status");
-----------------------------------

function onTrade(player,npc,trade)
    if ( player:getMainJob() == JOBS.THF and trade:getItemCount() == 1 and (trade:hasItemQty(1115,1) or trade:hasItemQty(1023,1) or trade:hasItemQty(1022,1)) ) then
        attemptPickLock(player, npc, player:getXPos() <= 301);
    end        
end;

function onTrigger(player,npc)
    attemptOpenDoor(player, npc, player:getXPos() <= 301);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 26 and option == 1) then
        player:setPos(260,-0.25,-20,254,111);
    end
end;
