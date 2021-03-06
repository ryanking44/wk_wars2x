--[[---------------------------------------------------------------------------------------

	Wraith ARS 2X
	Created by WolfKnight
	
	For discussions, information on future updates, and more, join 
	my Discord: https://discord.gg/fD4e6WD 
	
	MIT License

	Copyright (c) 2020 WolfKnight

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.

---------------------------------------------------------------------------------------]]--

-- Do not touch this
CONFIG = {}

-- Radar fast limit locking
-- When enabled, the player will be able to define a fast limit within the radar's menu, when a vehicle 
-- exceeds the fast limit, it will be locked into the fast box. Default setting is disabled to maintain realism
CONFIG.allow_fast_limit = false 

-- In-game first time quick start video
-- When enabled, the player will be asked if they'd like to view the quick start video the first time they 
-- open the remote. 
CONFIG.allow_quick_start_video = true 

-- Sets all of the controls
CONFIG.keys =
{
	-- Remote control key 
	-- The default key to open the remote control is 166 (F5 - INPUT_SELECT_CHARACTER_MICHAEL)
	remote_control = 166,

	-- Radar key lock key 
	-- The default key to enable/disable the radar key lock is 182 (L - INPUT_CELLPHONE_CAMERA_FOCUS_LOCK)
	key_lock = 182,

	-- Radar keybinds switch 
	-- The default key to switch the bind set is (K - INPUT_REPLAY_SHOWHOTKEY)
	switch_keys = 311, 

	-- Keys for a full size keyboard
	[ "full" ] = {
		-- Radar front antenna lock/unlock Key 
		-- The default full keyboard key to lock/unlock the front antenna is 111 (Numpad 8 - INPUT_VEH_FLY_PITCH_UP_ONLY)
		front_lock = 111,

		-- Radar rear antenna lock/unlock Key 
		-- The default full keyboard key to lock/unlock the rear antenna is 112 (Numpad 5 - INPUT_VEH_FLY_PITCH_DOWN_ONLY)
		rear_lock = 112,

		-- Plate reader front lock/unlock Key 
		-- The default full keyboard key to lock/unlock the front plate reader is 118 (Numpad 9 - INPUT_VEH_FLY_SELECT_TARGET_RIGHT)
		plate_front_lock = 118,

		-- Plate reader rear lock/unlock Key 
		-- The default full keyboard key to lock/unlock the rear plate reader is 109 (Numpad 6 - INPUT_VEH_FLY_ROLL_RIGHT_ONLY)
		plate_rear_lock = 109
	}, 

	-- Keys for smaller keyboards 
	[ "small" ] = {
		-- Radar front antenna lock/unlock Key 
		-- The default small keyboard key to lock/unlock the front antenna is 157 (1 - INPUT_SELECT_WEAPON_UNARMED)
		front_lock = 157,

		-- Radar rear antenna lock/unlock Key 
		-- The default small keyboard key to lock/unlock the rear antenna is 158 (2 - INPUT_SELECT_WEAPON_MELEE)
		rear_lock = 158,

		-- Plate reader front lock/unlock Key 
		-- The default small keyboard key to lock/unlock the front plate reader is 160 (3 - INPUT_SELECT_WEAPON_SHOTGUN)
		plate_front_lock = 160,

		-- Plate reader rear lock/unlock Key 
		-- The default small keyboard key to lock/unlock the rear plate reader is 164 (4 - INPUT_SELECT_WEAPON_HEAVY)
		plate_rear_lock = 164
	}
}

-- Here you can change the default values for the operator menu, do note, if any of these values are not
-- one of the options listed, the script will not work. 
CONFIG.menuDefaults = 
{
	-- Should the system calculate and display faster targets
	-- Options: true or false
	["fastDisplay"] = true, 

	-- Sensitivity for each radar mode, this changes how far the antennas will detect vehicles
	-- Options: 0.2, 0.4, 0.6, 0.8, 1.0
	["same"] = 0.6, 
	["opp"] = 0.6, 

	-- The volume of the audible beep 
	-- Options: 0.0, 0.2, 0.4, 0.6, 0.8, 1.0 
	["beep"] = 0.6,
	
	-- The volume of the verbal lock confirmation 
	-- Options: 0.0, 0.2, 0.4, 0.6, 0.8, 1.0 
	["voice"] = 0.6,
	
	-- The volume of the plate reader audio 
	-- Options: 0.0, 0.2, 0.4, 0.6, 0.8, 1.0 
	["plateAudio"] = 0.6, 

	-- The speed unit used in conversions
	-- Options: mph or kmh 
	["speedType"] = "mph"
}

-- Here you can change the default scale of the UI elements, as well as the safezone size
CONFIG.uiDefaults =
{
	-- The default scale of the UI elements.
	-- Options: 0.25 - 2.5
	scale =
	{
		radar = 1.0, 
		remote = 1.0, 
		plateReader = 1.0
	}, 

	-- The safezone size, must be a multiple of 5.
	-- Options: 0 - 100
	safezone = 20 
}