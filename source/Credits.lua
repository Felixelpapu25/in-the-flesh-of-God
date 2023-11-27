
local icon = 'IconItem'
local bg = 'luaSprite()'
local var = 'variableObject.name'
local makeLuaSprite = 'SpriteAdd'
local newLuaSprite = ('newSprite.detect')
local ScreenCenter = ('0,0')
local add = ('variable.name')
local menuItems = {'icons','bg',}
local selectedIndex = 1  -- Índice del elemento seleccionado
local visibleItems = 5  -- Número de elementos visibles en la pantalla a la vez
local playMusic = 'play.music.lua'
local playSound = 'play.sound.lua'
iconName = ""
yourNameHere = ""
enQueayudaste = ""



icons = iconName.png
name = yourNameHere.name
work = enQueayudaste.name




function Create(iconArray)
    bg.makeLuaSprite(bg,'credits/creditsBG',ScreenCenter);
    bg.scale(bg,1,1)
bg.scrollFactor(1,1)
add(bg);

--var. iconArray =  {'icons','name','work'}
icon.makeLuaSprite(icon,'iconsCredits/'+ icons);
icon.scale(1,1)
add(icon);
if menuItems == icon then
    updatePosition(icon, 300,0)
    updatePox(true)
    local startY = 100  -- Posición inicial en la pantalla

for i = 1, visibleItems do
    local index = selectedIndex - math.floor(visibleItems / 2) + i
    if index >= 1 and index <= #menuItems then
        makeLuaSprite.graphics.print(menuItems[index], 100, startY)
        playSound('scroll')


    startY = startY + 30 
    end
end
end
end
function YourCredits(iconsArray)
    if felix then
 icon  = 'felix'
 name  = 'felixElpapux'
 work = 'programador'
    end
 if mari then
 icon = 'mari'
 name = 'tijeras'
 work = 'nada xdd,base de personaje'

 --case: YourID()
 --icon = 'icons/YourIcon'
 --name = 'YouNameTag'
 --work = 'cualquierMrd'
end
end
function Keypressed(key) -- si. copie y pegue el codigo anterior. algun problema????????????????
    if key == "up" and selectedIndex > 1 then
        selectedIndex = selectedIndex - 1
    elseif key == "down" and selectedIndex < #menuItems then
        selectedIndex = selectedIndex + 1
    end
end

function Music()
    playMusic('CreditsMusic',1)
end

    








