table.insert(Sprites,
{
		Name = "Tip-helper-icon",
		States =
		{
			Normal = { Frames = {{ texture = path .. "/scripts/media/helper/idle.png"},},},
			Rollover = { Frames = {{ texture = path .. "/scripts/media/helper/click.png" },},},
			Pressed = { Frames = {{ texture =  path .. "/scripts/media/helper/show.png"},},},
			Disabled = { Frames = {{ texture = path .. "/scripts/media/helper/idle.png" },},},
		},
})

	table.insert(Sprites,
	{
		Name = "dzshield_anim",
		InitialState = "sh90",
		States = 
		{
			sh90 = { Frames = { {texture = path.."/weapons/media/shield/shield01.tga"},mipmap = true },NextState = "sh90"},
			sh80 = { Frames = { {texture = path.."/weapons/media/shield/shield02.tga"},mipmap = true },NextState = "sh80"},
			sh70 = { Frames = { {texture = path.."/weapons/media/shield/shield03.tga"},mipmap = true },NextState = "sh70"},
			sh60 = { Frames = { {texture = path.."/weapons/media/shield/shield04.tga"},mipmap = true },NextState = "sh60"},
			sh50 = { Frames = { {texture = path.."/weapons/media/shield/shield05.tga"},mipmap = true },NextState = "sh50"},
			sh40 = { Frames = { {texture = path.."/weapons/media/shield/shield06.tga"},mipmap = true },NextState = "sh40"},
			sh30 = { Frames = { {texture = path.."/weapons/media/shield/shield07.tga"},mipmap = true },NextState = "sh30"},
			sh20 = { Frames = { {texture = path.."/weapons/media/shield/shield08.tga"},mipmap = true },NextState = "sh20"},
			sh10 = { Frames = { {texture = path.."/weapons/media/shield/shield09.tga"},mipmap = true },NextState = "sh10"},
			sh00 = { Frames = { {texture = path.."/weapons/media/shield/shield10.tga"},mipmap = true },NextState = "sh00"},
		},
	})

	table.insert(Sprites,
	{
		Name = "dzshield_dome_anim",
		InitialState = "Normal",

		States =
		{
			Normal =
			{
				RandomStartFrame = true,
				Frames =
				{
					{ texture = path.."/devices/dzshield/dome01.png" },
					{ texture = path.."/devices/dzshield/dome02.png" },
					{ texture = path.."/devices/dzshield/dome03.png" },
					{ texture = path.."/devices/dzshield/dome04.png" },
					{ texture = path.."/devices/dzshield/dome05.png" },
					{ texture = path.."/devices/dzshield/dome06.png" },
					{ texture = path.."/devices/dzshield/dome07.png" },
					{ texture = path.."/devices/dzshield/dome08.png" },
					{ texture = path.."/devices/dzshield/dome09.png" },
					

					duration = 0.2,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
			Idle =
			{
				Frames =
				{
					{ texture = path.."/devices/dzshield/dome05.png" },
					mipmap = true,
				},
				NextState = "Idle",
			},
		},
	})