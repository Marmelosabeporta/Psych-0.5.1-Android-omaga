function onCreate()
	makeLuaSprite('blackbg', 'dablack', 0, 0);

    makeLuaSprite('circle', 'CircleYouCantRun', 777, 0);

    makeLuaSprite('text', 'TextYouCantRun', -1200, 0);

    setObjectCamera('blackbg', 'hud');

    setObjectCamera('circle', 'hud');

    setObjectCamera('text', 'hud');

    makeLuaSprite('vg', 'RedVG');

    setObjectCamera('vg', 'hud');

    addLuaSprite('blackbg', true);
    addLuaSprite('circle', true);
    addLuaSprite('text', true);


end

function onUpdate()
    if getProperty('vg.alpha') == 1 then
        doTweenAlpha('dothetweenvg', 'vg', 0, 1, 'quadInOut');
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'notfuckedanymore' then
        removeLuaSprite('theshitassthatdistractsyou', false);
    end
    if tag == 'bye1' then
        removeLuaSprite('wowa', false);
    end
    if tag == 'bye2' then
        removeLuaSprite('wowa2', false);
    end
end

function onTweenCompleted(tag)
    if tag == 'circleTweenX' then
        doTweenAlpha('removecircle', 'circle', 0, 1, 'linear');
    end
    if tag == 'textTweenX' then
        doTweenAlpha('removetext', 'text', 0, 1, 'linear');
    end
    if tag == 'removetext' then 
        removeLuaSprite('text');
        doTweenAlpha('removebg', 'blackbg', 0, 0.5, 'linear');
    end
    if tag == 'removecircle' then 
        removeLuaSprite('circle');
    end
    if tag == 'removebg' then 
        removeLuaSprite('blackbg');
    end
    if tag == 'dothetweenvg' then
        doTweenAlpha('dothetweenvgagain', 'vg', 1, 1, 'quadInOut');
    end
end

function onEvent(name, value1, value2)
    if name == 'YOU MISSED THE STATIC NOTE NOW GET FUCKED' then
        makeAnimatedLuaSprite('theshitassthatdistractsyou', 'hitStatic', 0, 0);

        addAnimationByPrefix('FUCKYOU', 'static', 'staticANIMATION', 24, false);
        
        objectPlayAnimation('FUCKYOU', true);

        setObjectCamera('theshitassthatdistractsyou', 'hud');

        addLuaSprite('theshitassthatdistractsyou', true);

        runTimer('notfuckedanymore', 0.2, 1);
    end
end


function onStepHit()
    if curStep == 1 then 
        doTweenX('circleTweenX', 'circle', 0, 1, 'linear');
        doTweenX('textTweenX', 'text', 0, 1, 'linear');
        
        setProperty('vg.visible', false);

        addLuaSprite('vg', true);
    end 
    if curStep == 78 then 
        setProperty('vg.visible', true);
    end 
    if curStep == 510 then
        setProperty('vg.visible', false);
    end
    if curStep == 879 then
        setProperty('vg.visible', true);
    end
end 




