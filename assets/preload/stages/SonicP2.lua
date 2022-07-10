function onCreate()
	-- background shit
	makeLuaSprite('thefrickinbg', 'SonicP2/thebgshit', -790, -520);

	setProperty('thefrickinbg.antialiasing', true);






	addLuaSprite('thefrickinbg', false);
end

function onStepHit()
	if curStep == 510 then
		triggerEvent('Change Character', 'bf', 'bf-pixel-sonic');

		triggerEvent('Change Character', 'gf', 'gf-pixel-sonic');

		triggerEvent('Change Character', 'dad', 'PixelExe');

		setCharacterX('boyfriend', 1150);

		setCharacterY('boyfriend', -160);

		setCharacterX('dad', 150);

		setCharacterY('dad', -130);

		setCharacterX('gf', 440);

		setCharacterY('gf', -200);

		setProperty('thefrickinbg.visible', false);

		setProperty('thefrickinbg2.antialiasing', true);

		makeLuaSprite('thefrickinbg2', 'SonicP2/greenhillsbiggggg', -572, -426);

		addLuaSprite('thefrickinbg2', false);
	
	end
	if curStep == 756 then
		triggerEvent('Change Character', 'bf', 'bf3');
		triggerEvent('Change Character', 'gf', 'gf');

		triggerEvent('Change Character', 'dad', 'XenoPhase3');

		setCharacterX('boyfriend', 830);

		setCharacterY('boyfriend', 100);

		setCharacterX('dad', 30);

		setCharacterY('dad', 90);

		setCharacterX('gf', 3200);

		setCharacterY('gf', 150);

		setProperty('thefrickinbg2.visible', false);

		setProperty('thefrickinbg.visible', true);
		
		makeLuaSprite('shadow', 'SonicP2/shadow', -500, 1);
		scaleObject('shadow', 2.7, 2);
		addLuaSprite('shadow', true);
    end
	if curStep == 879 then
	triggerEvent('Change Character', 'dad', 'XenoPhase2');
	triggerEvent('Change Character', 'gf', 'gf');
	setCharacterX('gf', 320);
	triggerEvent('Change Character', 'bf', 'bf2');
	setProperty('shadow.visible', false);
	end
end