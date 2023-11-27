---@diagnostic disable: undefined-global
local max_health = 100
local min_health = 30
local med_health = 50
local current_health = max_health
local healthBar
local healthBase
local EnemyHit = -15
local score = 0
local lifes = 5
local icon
local healthColor = "238F00"
local Low_healthColor = "8F0000"
local add
local charName = "Playable.p1"
local pause = "stop_animation"
local Enemy = "SubEnemy"
local combo = 0
local total_hits = 0
local hits
local numers = 0
local NumersAdd
local atack = "player.Animation.atack"
function Create()
    hits.makeLuaSprite('hits.png',-300,100)
    hits.setCamera("CamGame")
    setProperty(hits.visible,false)
    numers.makeLuaSprite('images/'+NumersAdd)
    numers.setCamera("CamGame")
    setProperty(numers.visible,false)
    add(numers)
    healthBar.makeLuaSprite('images/hud/Health_bar',0,0);
    healthBar.setCamera("hud");
    healthBar.scale(1,1);
    add(healthBar);
icon.animatedLuaSprite('images/hud/'+charName,0,0);
icon.addAnimationByPrefix('Hurt',"Icon_hurt_Animated",24,false)
icon.setCamera("hud");
add(icon);
healthBase.makeLuaSprite('images/hud/base',0,0)
healthBase.setCamera("hud")
add(healthBase)
function HitPlayer()
icon.objectPlayAnimation("hurt",0.5)
runTimer("stop",0.7)
end
function Update()
        if current_health >= 60 then
            setProperty('healthBase.color', healthColor)
        else
            setProperty('healthBase.color', Low_healthColor)
        end
    end
    function TimerComplete(tag);
        if tag == 'stop' then
 icon.StopAnimation("hurt",true)
    end
end
    function PlayerIsAtack()
        isContact = false
    end
    Enemy.Animation.detect("hit",getProperty("combo"),#combo +1)

    inCase 'Enemy.not.atack' 
    RemoveProperty(#combo -999,true)
        end
    addProperty('total_hits',getProperty("math.calculate.hits", true))
    if total_hits then
        Enemy.Animation.detect("hit",#total_hits +1)
        inCase 'Enemy.not.atack' 
    RemoveProperty(#total_hits -999,true)
    end
    function PlayerDie()
        RemoveNumer(#lifes -1)
        Player.addAnimationByPrefix("die","PlayerDies",24,false)
        Player.Animation.play("die",24,true);
        player.Finish.animation()
    end

