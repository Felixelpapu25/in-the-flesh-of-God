package.StoryMenuState()
local import_1 = require('MenuState')
local import_2 = require('LoadingState')
local isStoryMode = false
local Levels = {'Villa','Solfe','av.kevin',}
local LevelName = #Levels
local levelImages
local MenuBlack
local add
function Create()
    levelImages.makeLuaSprite('images/lvls/'+LevelName,0,0);
    levelImages.curFrame(#Levels - 1 > 3 ); --actualiza el numero "3" si agregaras mas niveles
    add(levelImages);
    MenuBlack.makeGraphic();
    MenuBlack.color("00000");
    MenuBlack.sizes(3,1);
end
    

    