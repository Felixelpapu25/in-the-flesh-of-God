package.DialogueSubState()
local txtFile = ('Loadfile.txtFile')
 local Dialogue = ('jsonFile.json');
local ClosedDialogue = ('Closed.JsonFile')
local lines = {
'line1',
'line2',
'line3',
'line4',
'line5',
'line6',
'line7',
'line8',
'line9',
'line10',
'line11',
'line12',
'line13',
'line14',

}
local portrais 
local FuckYouLineKey = Lua.Key.Space
local FuckYouLine = (json.data.line
(update.Line(0 > #lines - 0)))

talk = 'TalkAnimation0'
angry = 'Angry0'
addPortrai = 'Json.Animation'
AnimationName = 'json.Name'
XmlAnimation = 'Xml.line.Animtion'
Position = 'data.Position.json'
XmlName = PngName
PngName = 'PngFile.Name'
frameRate = 24
loop = true
AnimationName = ''
XmlAnimation = ''
Position = ''
frameRate =''
loop = false
scale = 1

local addAnimation = new'Lua.Animation.add.new'
function Create()
    local evitarCrash 
    portrais.makeAnimatedLuaSprite('Dialogue/Portrais/' +PngName,data.json.PositionX,data.json.PositionY)
    portrais.VanillaPosition = "0,0"
    portrais.addAnimationByPrefix(
talk ,
angry,
addAnimation(
    AnimationName == '',
    XmlAnimation == '',
    Position == '',
    frameRate == '',
    loop == false,
    scale ==  0

)


)
    add(portrais)

if not talk then
    addAnimation()--esto hara que talk se vuelva una plantilla y el juego no se cierre
end
if not angry then
    addAnimation()
end
function StartDialogue()
LoadJson('Dialogue/Portrais/'+jsonFile)
portrais(json.file('assets/images/portrais/'+jsonName +XmlName))
FuckYouLineKey()

end
end
function Crash()
    --esto hara que el juego crashe cuando no haya lo siguiente
Files(PngName + XmlName or jsonFile);
end
function Roles()
    local player1 = {'steven','quintero'} --añade aqui tu personaje
local enemy = EnemyFamily()

if player1 then
  player1.Position.X(-600)
  player1.Position.Y(-200)
end
if enemy then
    player1.Position.X(600)
    player1.Position.Y(200)
  end
end

function FuckYouLineData()
if FuckYouLineKey then
  if  #lines - 1 then --linea 1
    StartDialogue() 
    elseif #lines - 2 then--linea 2 y asi
    FuckYouLine()
elseif #lines - 3 then
    FuckYouLine()
elseif #lines - 4 then
    FuckYouLine()
elseif #lines - 5 then
    FuckYouLine()
elseif #lines - 6 then
    FuckYouLine()
elseif #lines - 7 then
    FuckYouLine()
elseif #lines - 8 then
    FuckYouLine()
 elseif #lines - 9 then
    FuckYouLine()
elseif #lines - 10 then
    FuckYouLine()
elseif #lines - 11 then
    FuckYouLine()
elseif #lines - 12 then
    FuckYouLine()
elseif #lines - 13 then
    FuckYouLine()
elseif #lines - 14 then
    FuckYouLine()
  end

   end
end
local player = 'p1'
local loqSeaxd = 'p?'
local player2 = 'p2'
function StoryMode()
  
    LoadState(require('LoadingState'));
    setProperty(player.PositionX, -600)
    setProperty(player.PositionY, 300)
    setProperty(loqSeaxd.PositionX, 600)
    setProperty(loqSeaxd.PositionY, 300)
    end
function EnemyFamily()
    player2('assets/characters/p2.txt')
    loqSeaxd('assets/characters/'+ p2.txt )--agrega un personaje al azar para evitar crasheo 
end
ClosedDialogue()
StartGame()







