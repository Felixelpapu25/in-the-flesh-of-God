
   local MenuState = require('LoadingState')
local paths = require('paths')
 local bg
 local screenCenter = '0,0'
 local var = 'variable.object'
 local menuItems = {'storyMode','Credits','options',}
 local blackScene 
 local add 
 local Scene = require('BlackCinematic')
 local curSelected = 0
 local isState = true
 local botons 
 local addBotons =  {'storyMode','Credits','options'}
 local storyMode 
 local Credits 
 local Images
 local options 
 
local addOption
local bruh
local nullPosition = 'null'
local cuentaTexto;Int = optionsImages.length;
local imagesName =  {
    storyMode.png,
    Credits.png,
    options.png    
}
local MenuState = require('MenuState')
local BlackBG = "#000000"
local ScreenCenter = '0,0'
local Title
local TitleState = 'Source/Title.lua'
local add = require('LoadingState')
local playMusic
local json = require('.json')  -- Asegúrate de tener un módulo JSON.
local playMusicMenus
local playMusic = 'luaMusic.play'

-- Carga los datos del archivo JSON.
local function loadJson(filename)
    local f = io.open(filename, 'r')
    local content = f:read('*all')
    f:close()
    return json.decode(content)
end

-- Uso:
local data = loadJson('Load/Title.json')

local JsonTitle = {
    TitleJsonX = "titley",
    TitleJsonY = "titlex",
    StartJsonX = "starty",
    StartJsonY = "startx"
}
 local KeyPress = Keyboard.enter
 local OpenSubState 
 local ClosedSubState 
local pressStart 
function StartAplicattionMain(Title)
    OpenSubState(Title)-- hara que cuando el juego abra inicie desde el Title y no desde MainmenuState
 end
function Create(Title);
    BlackBG2.makeGraphic(ScreenCenter);
    BlackBG2.Color(#000000)
    add(BlackBG2)
Title.makeAnimatedLuaSprite('Menus/title/TitleSprite',TitleJsonX,TitleJsonY);
    Title.addAnimationByPrefix('welcome!','Title0',24,true);
    add(Title);
pressStart.makeLuaSprite('images/press',StartJsonX,StartJsonY);
playMusic('music/MainmenuState')
end
if KeyPress then
    ClosedSubState() --esto cierra el titleState 
end

 

 OpenSubState(MenuState) -- esto hara que cuanto se cierre el title se abra el MenuState 
function CreateCustomMenu(name,open);-- puedes añadir mas images al menu usando esta function 
    if name == 'MenuState' then
       bg.MakeLuaSprite('backgrounds/menus/BG',screenCenter) 
       bg.setScrollFactor(1.1,1.1)
       bg.scale(1,1)--afecta a la scala X e Y
    add(bg)
    end  
    end
function Overide.create(option)-- aqui igual pero es mas complejo y te recomiendo usarlo mas que todo para que sean imagenes
    --con una function especifica en este caso "storyMode" es un boton para el menu
    local ScreenLeft = '-400,0'
        optionsImages = CoolUtil.coolTextFile(Paths.getLibraryPath('Paths/librery/images.txt'));
      
        
		Images.loadGraphic(Paths.getPath('images/carga/'+optionsImages));
		Images.updateHitbox();
		Images.antialiasing = ClientPrefs.globalAntialiasing;
		add(Images);
        storyMode.MakeLuaSprite(optionsImages,ScreenLeft('images/Menu/'+imagesName))
        storyMode.setScrollFactor(1.1,1.1)
        storyMode.updateHitbox();
        setProperty(storyMode.visible,true)
        add(storyMode)
        options.MakeLuaSprite(optionsImages,ScreenLeft('images/Menu/'+imagesName))
      options.updateHitbox();
      options.setScrollFactor(setProperty,getProperty(storyMode.setScrollFactor))  
      add(options);

    end
    function CreatePost()-- aqui puedes tanto como agregar imagenes y modificar sus factores, como scala,posicion,
        --actualizar la scala contantemente y mas cosas si tienes algo de conocimiento sobre esta funcion
        setProperty(storyMode,'.X',-100)
        setProperty(storyMode,'.Y',0);
        setProperty(Credits,'.X',-100)
        setProperty(Credits,'.Y',200);
        setProperty(options,'.X',-100);
        setProperty(options,'.Y',400);
        end
 function Update(); --actualiza todo lo que esta dentro de ella
    local switch = 'Lua.Change.scroll'
    local daChoice = 'lua.select.curSelect'
    local NewStateFunction
    local ScrollKeysArray = {'W','S'}
    local Keyboard = 'windows.Keyboard'
    
  -- Detectar la presión de las teclas 'W' y 'S'
  if Keyboard.isDown('w') then
    -- Mover hacia arriba en el menú
    curSelected = curSelected - 1
    if curSelected < 0 then
        curSelected = #menuItems - 1
    end
elseif Keyboard.isDown('s') then
    -- Mover hacia abajo en el menú
    curSelected = curSelected + 1
    if curSelected >= #menuItems then
        curSelected = 0
    end




    if KeyPress then --al presionar la tecla 'enter' podras selecionar algunas de estos botones
    if daChoice == 'storyMode' then
        NewStateFunction:switchState(require ('StoryMenuState').new())-- en caso se seleccionar "storyMode" te llevara al menu de storyMode valga la redondancia 
    end
    
    if daChoice == 'options' then --aqui igual xd
        NewStateFunction:switchState(OptionsState.new())
    end

end
end
function ChangeItem(huh,Int)--lo puedes usar para el sistema de seleccion de objectos 
    local menuItemsSelect
    if select (#menuItems) then
		menuItemsSelect(curSelected, menuItems.length);  
    else curSelected = 0;
        menuItemsSelect (curSelected < 0) 
			curSelected = menuItems.length - 1;
    end
end
end
function FixErrors()
    local NullScroll = 'Key.stop.function'
        local NotEnter = 'Not.Detect'
if not 'W' then
    NullScroll() -- esto hara que cuando se presione una tecla que no sea "W" el menu no la detecte
end 
if not 'S' then
    NullScroll() -- esto hara que cuando se presione una tecla que no sea "W" el menu no la detecte
end 
if not 'enter' then
    NotEnter()-- esto hara que solamente tome en cuenta el "enter" para interactuar con los botones 
end
end
local open = {SubState = "MenuState"}
local closed = {SubStates = "Title"}
local pressEsc = Keyboard.key.esc
function SubStates()
OpenSubState (open.SubState)
ClosedSubState(closed.SubStates)
end
if KeyPress == true then
    ClosedSubState(closed.SubStates) --esto solo afectara el titleState 
end

if pressEsc then
    OpenSubState('Title')
end
if pressEsc then
    ClosedSubState('MenuState');
else
    OpenSubState('MenuState')
end
