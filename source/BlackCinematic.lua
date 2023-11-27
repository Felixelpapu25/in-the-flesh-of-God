

-- Primero, vamos a crear un objeto (un rectángulo, en este caso)
local rect
local display
local transition = "lua.transition"


function Create()-- creara el rectángulo
    rect.makeLuaGraphic("00000", ScreenSize,ScreenSize)--"0000" es el color y el "ScreenSize" hace que se adapte a la pantalla
add.Graphic(rect)


function UpdatePost() --se encargara de actualizar la posicion 
 display.newRect(0, 0, 100, 100)
end
-- Ahora, vamos a mover el rectángulo a una nueva posición a lo largo de 3 segundos
transition.to(rect, {time=3000, x=200, y=200})
end

