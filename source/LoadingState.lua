package.LoadingState()

local xdd = require('Title')
local bg = 'LuaSprite'
local newLuaSprite
local textLoading = 'luaText'
local makeLuaSprite
local ScreenCenter = '0,0'
local bar = 'Luagraphic'
local loading = '%'
local loadingBar = 1
local isComplete = 100
local ImageFormat = {'png','jpg'}
local LoadFile = 'charge.code.files'
local var = 'variable'
local StartGame = 'application.build.test'
local bg2 = 'LuaSprite'
local loadingText = 'lua.text'
local add = 'add.vareable'
local addText = 'addLuaText'
local Word = 'Lua.Text'
 if loadingBar == isComplete  then loadingComplete() end
function Create()
    if StartGame 'app' then
    bg(newLuaSprite);
    bg.makeLuaGraphic('menuLoading',ScreenCenter);
    add(bg);
    bar(newLuaSprite)
    bar.makeLuaSprite('',-100,0)
    bar.color(#D10085);
   textLoading.makeLuaText('cargando.. no apagues ni reinicies el juego');
   textLoading.scale(2.2)
   textLoading.font('gameGoH')
   if not StartGame then
    remove(bg)
    bg2.makeLuaSprite('loading/Loading01',screenCenter)
    bg2.updateHitbox(true)
    loadingText.makeLuaText('loading...')
    loadingText.border(true)
    loadingText.border.color(#FFFF0)
    add(bg2)
    addText(loadingText)
    Wait.makeLuaSprite("ruta/a/tu/imagen.png") -- Carga la imagen que quieres girar
    add(Wait)
    Wait = 0 -- Establece el ángulo inicial a 0
    Word.load(Paths.getPath('carga/'+imagenes[(math.random.int(0, cuentaTexto-1))]+'.txt', loading)); --esto mostrara palabras al azar en la pantalla de carga
		add(Word);
end

    


   end
end
-- Crear una nueva GUI
local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local textLabel = Instance.new("TextLabel")

frame.Size = UDim2.new(1, 0, 1, 0)
textLabel.Text = "Cargando..."
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.FontSize = Enum.FontSize.Size48
textLabel.Parent = frame
frame.Parent = screenGui

function showLoadingScreen()
    screenGui.Parent = game.ReplicatedFirst
    game.Loaded:Wait()
    screenGui.Parent = game.StarterGui
end

-- Mostrar la pantalla de carga
showLoadingScreen()

function LoadObjects()
    LoadingLuaObjects = 'chillLoad' --se encargara de no forzar la carga de objectos y ayudara al rendimiento 
    local layers = {varName.makeLuaSprite}
    object = {'variables','class','layers'}
    LoadFile (librery.lua);
    loadFile (object.lua);
    loadFile (layers.lua);
    loadFile (music.lua); --esto afecta a todo sonido que venga en "mp3,ogg y wav"
    loadFile (all.isComplete)
local startLoad = 0
if startLoad then 
    if librery == LoadFile == {'MenuState','GameState'} then
        LoadingLuaObjects()
    end
    if object == FileName.lua then
        LoadingLuaObjects()
    end
elseif layers == Images..ImageFormat then
        LoadingLuaObjects()
    end
    if music == {'Music.file.lua','sound.file.lua'} then
        LoadingLuaObjects()
    end
    if  all == isLoadingAll then
        isComplete()
       
    end
end
function Update()
    angle = angle + dt * math.pi / 2 -- Incrementa el ángulo en 90 grados por segundo
end
function Create_Draw()
    local makeGraphics
    local x = makeGraphics.getWidth() / 2
    local y = makeGraphics.getHeight() / 2
    makeGraphics.draw(Wait, x, y, angle, 1, 1, Wait:getWidth() / 2, Wait:getHeight() / 2)
end
































