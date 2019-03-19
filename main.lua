--[[I'm sorry, my Blazey.. I had to..]]--
--[[It was spread too much, Nokiskid had it and was probably gonna sell it.]]--

--[[FOR YOU SKIDS: This is the official genocider sequel.]]--
--[[Project Name: Sadique/Sadist]]--
--[[qbxeeb]]--
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Mouse = Player:GetMouse()
local Character = Player.Character
local Humanoid = Character:findFirstChildOfClass("Humanoid")
local Head = Character.Head
local RootPart = Character.HumanoidRootPart
local Torso = Character.Torso
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Camera = game.Workspace.CurrentCamera
local RootJoint = RootPart.RootJoint
local Equipped = false
local Attack = false
local Anim = 'Idle'
local Idle = 0
local Combo = 1
local TorsoVelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local Velocity = RootPart.Velocity.y
local Sine = 0
local Change = 1
local Animie = .3
local Randomize = 0
local Victim = nil
local Delay = false
local Delay2 = false
local Rampage = "Normal"
local Deed = false


Humanoid.WalkSpeed = 14
Humanoid.JumpPower = 50
Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil

local newMotor = function(part0, part1, c0, c1)
	local w = Instance.new('Motor', part0)
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
	return w
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0)) 
local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH = newMotor(Torso, RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH = newMotor(Torso, LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
RootJoint.C1 = CFrame.new(0, 0, 0)
RootJoint.C0 = CFrame.new(0, 0, 0)
Torso.Neck.C1 = CFrame.new(0, 0, 0)
Torso.Neck.C0 = CFrame.new(0, 1.5, 0)

local rarmc1 = RW.C1
local larmc1 = LW.C1
local rlegc1 = RH.C1
local llegc1 = LH.C1

local resetc1 = false

function PlayAnimationFromTable(table, speed, bool)
	RootJoint.C0 = clerp(RootJoint.C0, table[1], speed) 
	Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed) 
	RW.C0 = clerp(RW.C0, table[3], speed) 
	LW.C0 = clerp(LW.C0, table[4], speed) 
	RH.C0 = clerp(RH.C0, table[5], speed) 
	LH.C0 = clerp(LH.C0, table[6], speed) 
	if bool == true then
		if resetc1 == false then
			resetc1 = true
			RootJoint.C1 = RootJoint.C1
			Torso.Neck.C1 = Torso.Neck.C1
			RW.C1 = rarmc1
			LW.C1 = larmc1
			RH.C1 = rlegc1
			LH.C1 = llegc1
		end
	end
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 30
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel"
}

spook = Create("Sound"){
	Parent = Character,
	SoundId = "rbxassetid://504871254",
	Volume = 1.3,
	PlaybackSpeed = 0.3,
	Looped = true
}
spook2 = Create("PitchShiftSoundEffect"){
	Parent = spook,
	Octave = 1
}
spook:Play()

Billb = Create("BillboardGui"){
	Name = "Targetted",
	Parent = RootPart,
	Adornee = nil,
	LightInfluence = 0,
	AlwaysOnTop = true,
	Size = UDim2.new(5, 0, 5, 0)
}
D1 = Create("ImageLabel"){
	Parent = Billb,
	BackgroundTransparency = 1,
	Position = UDim2.new(.5, 0, .5, 0),
	Size = UDim2.new(1, 0, 1, 0),
	AnchorPoint = Vector2.new(.5, .5),
	Image = "rbxassetid://133820006",
	ImageColor3 = Color3.new(165 / 255, 0, 0),
	ImageTransparency = 1,
	ScaleType = "Tile"
}
D2 = D1:Clone()
D2.Parent = Billb
D2.Size = UDim2.new(1.4, 0, 1.4, 0)
D3 = D1:Clone()
D3.Parent = Billb
D3.Size = UDim2.new(.05, 0, .05, 0)
D3.Image = "rbxassetid://1215682739"
D3.Rotation = 45

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
CFuncs = {	
	Part = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part"){
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			}
			RemoveOutlines(Part)
			if Size == Vector3.new(.2,.2,.2) then
				Part.Size = Vector3.new(0.2, 0.2, 0.2)
			else
				Part.Size = Size
			end
			return Part
		end;
	};
	
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				if MeshId ~= "" then
				Msh.MeshId =  "rbxassetid://" .. MeshId
				end
			end
			return Msh
		end;
	};

	Weld = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	Sound = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					Parent = par or workspace,
				}
				if id ~= "" then
					S.SoundId = "rbxassetid://" .. id
				end
				swait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
	
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local Particle = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return Particle
		end;
	};
	
	CreateTemplate = {
		
	};
}
FHead=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Head",Vector3.new(1, 1, 1))
FHeadWeld=CFuncs.Weld.Create(m,Head,FHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",FHead,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1.25, 1.25, 1.25))
FHead.CanCollide = false
Head.Transparency = 1

FT = CFuncs.Mesh.Create("SpecialMesh",Torso,Enum.MeshType.FileMesh,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RA = CFuncs.Mesh.Create("SpecialMesh",RightArm,Enum.MeshType.FileMesh,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
LA = CFuncs.Mesh.Create("SpecialMesh",LeftArm,Enum.MeshType.FileMesh,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RL = CFuncs.Mesh.Create("SpecialMesh",RightLeg,Enum.MeshType.FileMesh,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
LL = CFuncs.Mesh.Create("SpecialMesh",LeftLeg,Enum.MeshType.FileMesh,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FT.MeshId = "rbxasset://fonts/torso.mesh"
RA.MeshId = "rbxasset://fonts/rightarm.mesh"
LA.MeshId = "rbxasset://fonts/leftarm.mesh"
RL.MeshId = "rbxasset://fonts/rightleg.mesh"
LL.MeshId = "rbxasset://fonts/leftleg.mesh"
FT.Parent = nil
RA.Parent = nil
LA.Parent = nil
RL.Parent = nil
LL.Parent = nil


Handle=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Handle",Vector3.new(1.10000002, 0.200000003, 0.399999976))
HandleWeld=CFuncs.Weld.Create(m,RightArm,Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0))
CFuncs.Mesh.Create("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.199999988, 0.100000001, 0.199999988))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-06, -0.250002742, -0.450048923, 0, -1, 0, 0, 0, -1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.980041981, 0, 0.820010304, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.005, 0.550000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.820030928, 0, 0.82000649, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.0051, 0.550000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.299999923, 0.200000003, 0.0999999866))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409988165, 0, 0.250000358, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.199999988, 0.100000001, 0.49999997))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-06, -0.250000358, -9.53674316e-07, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Clip=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Clip",Vector3.new(1, 0.200000003, 0.399999976))
ClipWeld=CFuncs.Weld.Create(m,Handle,Clip,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.649999857, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Clip,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 0.99000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800014019, -1.40998876, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 1, 0.550000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999982, 0.100000001, 0.0999999866))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0999993086, 0.200025082, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999803, 0.300000012, 0.100000016))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299974203, 0, 0.19999969, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.389988184, 0, 0.180001378, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.00999999, 0.550000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0100200176, 0, 0.140003324, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.00999999, 0.550000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999923, 0.200000003, 0.0999999866))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.800001383, -0.600008965, 0, 1, 0, 0, 0, 1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.199999928))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.639939666, 6.48498535e-05, 0.475003004, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.299999923, 0.300000012, 0.399999917))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.900032997, 0, 0.700012088, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Hole=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Hole",Vector3.new(0.200000003, 0.100000001, 0.200000003))
HoleWeld=CFuncs.Weld.Create(m,Handle,Hole,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800039053, -1.50998962, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh",Hole,"","",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 1, 0.550000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.499999911))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.30001092, 0, -0.239992976, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.499999911, 0.300000012, 1.20000005))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800009966, 0, -0.10000217, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999923, 0.300000012, 0.399999917))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.80001092, 0, -0.899988532, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999923, 0.300000012, 0.199999988))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.649999976, -0.650010109, 0, -1, 0, 0, 0, -1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000018, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800014019, -1.15998721, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.199999988, 0.100000001, 0.199999988))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-06, -0.250000358, -0.449951887, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.599999964, 0.300000012, 0.100000001))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.149971247, 0, -0.100001216, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999982, 0.100000001, 0.49999997))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.200006366, 0.100045919, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.199999928))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0180454254, 6.48498535e-05, -0.662756205, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0999999, 0.300000012, 0.200000018))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100028992, 0, 0.0500020981, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999923, 0.200000018, 0.299999982))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.700000167, 0.900013924, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.005))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999923, 0.300000012, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.900032997, 0, 0.549990773, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.005, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.099999927, 0.100000001, 0.0999999866))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0800056458, -0.749999881, 1.17000389, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.400000006))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999923, 0.100000001, 0.0999999866))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.750002623, 1.00003505, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.300000012, 0.399999917))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.970019102, 0, -0.899986625, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.099999927, 0.200000018, 0.199999928))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10000801, 0, 0.700013995, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.099999927, 0.100000001, 0.0999999866))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0799942017, -0.749999881, 1.17000389, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.400000006))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.099999927, 0.100000001, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17000294, -0.0699996948, 0.650015235, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.600000024, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.099999927, 0.100000001, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17000294, 0.0699996948, 0.650015235, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.600000024, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.199999988))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0800056458, 0.850004554, 1.01000404, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.200000018, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02000904, 0, -0.949990749, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09000492, 0.0699996948, -0.949989796, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.600000024, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09000492, -0.0699996948, -0.949989796, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.600000024, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.199999988))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0799942017, 0.850004554, 1.01000404, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17000198, 0.0800018311, -0.349988341, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.400000006, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.200000018, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10000801, 0, -0.349986911, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17000198, -0.0799980164, -0.349988341, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.400000006, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.499999911))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499481201, 0, 0.455062389, 0.422881097, 0, 0.90618521, 0, 1, 0, -0.90618521, 0, 0.422881067))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.920023918, 0, -1.0199939, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.005, 0.550000012))

Handle2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Handle2",Vector3.new(1.10000002, 0.200000003, 0.399999976))
Handle2Weld=CFuncs.Weld.Create(m,LeftArm,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0))
CFuncs.Mesh.Create("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.199999988, 0.100000001, 0.199999988))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-06, -0.250002742, -0.450048923, 0, -1, 0, 0, 0, -1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.980041981, 0, 0.820010304, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.005, 0.550000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.820030928, 0, 0.82000649, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.005, 0.550000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.299999923, 0.200000003, 0.0999999866))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409988165, 0, 0.250000358, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.199999988, 0.100000001, 0.49999997))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-06, -0.250000358, -9.53674316e-07, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Clip=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Clip",Vector3.new(1, 0.200000003, 0.399999976))
ClipWeld=CFuncs.Weld.Create(m,Handle2,Clip,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.649999857, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Clip,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 0.99000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800014019, -1.40998876, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 1, 0.550000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999982, 0.100000001, 0.0999999866))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0999993086, 0.200025082, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999803, 0.300000012, 0.100000016))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299974203, 0, 0.19999969, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.389988184, 0, 0.180001378, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.00999999, 0.550000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0100200176, 0, 0.140003324, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.00999999, 0.550000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999923, 0.200000003, 0.0999999866))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.800001383, -0.600008965, 0, 1, 0, 0, 0, 1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.199999928))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.639939666, 6.48498535e-05, 0.475003004, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.299999923, 0.300000012, 0.399999917))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.900032997, 0, 0.700012088, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Hole2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Hole2",Vector3.new(0.200000003, 0.100000001, 0.200000003))
Hole2Weld=CFuncs.Weld.Create(m,Handle2,Hole2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800039053, -1.50998962, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh",Hole2,"","",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 1, 0.550000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.499999911))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.30001092, 0, -0.239992976, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.499999911, 0.300000012, 1.20000005))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800009966, 0, -0.10000217, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999923, 0.300000012, 0.399999917))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.80001092, 0, -0.899988532, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999923, 0.300000012, 0.199999988))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.649999976, -0.650010109, 0, -1, 0, 0, 0, -1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000018, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800014019, -1.15998721, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.199999988, 0.100000001, 0.199999988))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-06, -0.250000358, -0.449951887, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.599999964, 0.300000012, 0.100000001))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.149971247, 0, -0.100001216, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999982, 0.100000001, 0.49999997))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.200006366, 0.100045919, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.199999928))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0180454254, 6.48498535e-05, -0.662756205, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0999999, 0.300000012, 0.200000018))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100028992, 0, 0.0500020981, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999923, 0.200000018, 0.299999982))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.700000167, 0.900013924, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.005))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999923, 0.300000012, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.900032997, 0, 0.549990773, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.005, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.099999927, 0.100000001, 0.0999999866))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0800056458, -0.749999881, 1.17000389, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.400000006))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299999923, 0.100000001, 0.0999999866))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.750002623, 1.00003505, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.300000012, 0.399999917))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.970019102, 0, -0.899986625, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.099999927, 0.200000018, 0.199999928))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10000801, 0, 0.700013995, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.099999927, 0.100000001, 0.0999999866))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0799942017, -0.749999881, 1.17000389, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.400000006))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.099999927, 0.100000001, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17000294, -0.0699996948, 0.650015235, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.600000024, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.099999927, 0.100000001, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17000294, 0.0699996948, 0.650015235, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.600000024, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.199999988))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0800056458, 0.850004554, 1.01000404, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.200000018, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02000904, 0, -0.949990749, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09000492, 0.0699996948, -0.949989796, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.600000024, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09000492, -0.0699996948, -0.949989796, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.600000024, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.199999988))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0799942017, 0.850004554, 1.01000404, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17000198, 0.0800018311, -0.349988341, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.400000006, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.200000018, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10000801, 0, -0.349986911, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.099999927))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17000198, -0.0799980164, -0.349988341, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.400000006, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.099999927, 0.100000001, 0.499999911))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499481201, 0, 0.455062389, 0.422881097, 0, 0.90618521, 0, 1, 0, -0.90618521, 0, 0.422881067))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.920023918, 0, -1.0199939, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.005, 0.550000012))

Shush=CFuncs.Part.Create(m,Enum.Material.Neon,0,1,"Really red","Shush",Vector3.new(0.200000003, 0.200000003, 0.200000003))
ShushWeld=CFuncs.Weld.Create(m,Head,Shush,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.529996872, -0.240020752, -0.0899963379, 1.5871283e-08, 1.15818466e-12, 1, -2.55182385e-07, 1.00000012, -3.45529827e-10, -1.00000012, -2.79396772e-07, -1.58675455e-08))
CFuncs.Mesh.Create("SpecialMesh",Shush,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Really black","Shush",Vector3.new(0.200000003, 0.200000003, 0.100000001))
ShushWeld=CFuncs.Weld.Create(m,Head,Shush,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.529996872, -0.240020752, -0.0899972916, 1.5871283e-08, 1.15818466e-12, 1, -2.55182385e-07, 1.00000012, -3.45529827e-10, -1.00000012, -2.79396772e-07, -1.58675455e-08))
CFuncs.Mesh.Create("SpecialMesh",Shush,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 0.899999976, 0.800000012))
Shush=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush",Vector3.new(0.200000003, 0.100000001, 0.300000012))
ShushWeld=CFuncs.Weld.Create(m,Head,Shush,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499996185, 0.0699939728, -0.0600013733, 1.5871283e-08, 1.15818466e-12, 1, 1.00000012, 2.79396772e-07, 1.58675455e-08, -2.55182385e-07, 1.00000012, -3.45529827e-10))
CFuncs.Mesh.Create("SpecialMesh",Shush,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush",Vector3.new(0.200000003, 0.100000001, 0.199999988))
ShushWeld=CFuncs.Weld.Create(m,Head,Shush,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499996185, -0.187038422, -0.0198893547, -1.5871283e-08, -1.15818466e-12, -1, -0.921719849, 0.387856632, -1.47594443e-08, 0.387856662, 0.921719849, 5.83585447e-09))
CFuncs.Mesh.Create("SpecialMesh",Shush,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush",Vector3.new(0.200000003, 0.100000001, 0.26000002))
ShushWeld=CFuncs.Weld.Create(m,Head,Shush,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499996185, -0.232531548, 0.00673818588, -1.5871283e-08, -1.15818466e-12, -1, -0.833314717, 0.552799165, -1.3413664e-08, 0.552799165, 0.833314776, 8.48363335e-09))
CFuncs.Mesh.Create("SpecialMesh",Shush,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush",Vector3.new(0.200000003, 0.100000001, 0.240000084))
ShushWeld=CFuncs.Weld.Create(m,Head,Shush,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499996185, -0.039185524, -0.109341145, -1.5871283e-08, -1.15818466e-12, -1, -0.981748402, -0.190185368, -1.55122226e-08, -0.190185368, 0.981748402, -3.35699379e-09))
CFuncs.Mesh.Create("SpecialMesh",Shush,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush",Vector3.new(0.200000003, 0.100000001, 0.120000094))
ShushWeld=CFuncs.Weld.Create(m,Head,Shush,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499996185, 0.0304012299, -0.15789032, -1.5871283e-08, -1.15818466e-12, -1, -0.902570128, -0.430543363, -1.41728069e-08, -0.430543363, 0.902570128, -7.14352622e-09))
CFuncs.Mesh.Create("SpecialMesh",Shush,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

Shush2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush2",Vector3.new(0.200000003, 0.120000012, 0.210000068))
Shush2Weld=CFuncs.Weld.Create(m,Head,Shush2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499950409, 0.0232925415, 0.397506714, 5.17722219e-05, -0.000442385674, -1.00000036, 0.987985253, 0.154551089, -1.72778964e-05, 0.154551119, -0.987984896, 0.000445634127))
CFuncs.Mesh.Create("SpecialMesh",Shush2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush2",Vector3.new(0.200000003, 0.140000001, 0.25000003))
Shush2Weld=CFuncs.Weld.Create(m,Head,Shush2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499992371, 0.247455597, -0.0262145996, -7.54790381e-06, -1.24275684e-05, 1.00000048, 0.767775178, -0.640720129, -1.78813934e-06, 0.640720248, 0.76777482, 1.39474869e-05))
CFuncs.Mesh.Create("SpecialMesh",Shush2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush2",Vector3.new(0.200000003, 0.100000001, 0.120000094))
Shush2Weld=CFuncs.Weld.Create(m,Head,Shush2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.500003815, -0.256121635, 0.251476288, -4.41810116e-05, -4.7981739e-06, -1.00000048, 0.187089488, 0.982343197, -1.35600567e-05, 0.982343316, -0.187089384, -4.23565507e-05))
CFuncs.Mesh.Create("SpecialMesh",Shush2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush2",Vector3.new(0.200000003, 0.109999992, 0.180000082))
Shush2Weld=CFuncs.Weld.Create(m,Head,Shush2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499996185, 0.190258026, 0.221046448, 1.83703378e-05, 2.40206718e-05, -1.00000048, 0.655323863, -0.755348384, -5.66244125e-06, -0.755348682, -0.655323744, -2.92360783e-05))
CFuncs.Mesh.Create("SpecialMesh",Shush2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush2",Vector3.new(0.200000003, 0.0999998376, 0.519999981))
Shush2Weld=CFuncs.Weld.Create(m,Head,Shush2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499996185, 0.0484619141, 0.0416660309, 3.47616151e-07, -6.46710396e-06, 1.00000048, 0.991302073, 0.131609648, 4.54485416e-07, -0.131609663, 0.991301835, 5.93066216e-06))
CFuncs.Mesh.Create("SpecialMesh",Shush2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush2",Vector3.new(0.200000003, 0.0799999982, 0.319999993))
Shush2Weld=CFuncs.Weld.Create(m,Head,Shush2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499996185, -0.21938324, 0.038766861, 7.32019544e-07, 1.54972076e-06, -1.00000048, -0.749051094, 0.662512839, 0, 0.662512958, 0.749050856, 1.1920929e-06))
CFuncs.Mesh.Create("SpecialMesh",Shush2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush2",Vector3.new(0.200000003, 0.0799999982, 0.300000191))
Shush2Weld=CFuncs.Weld.Create(m,Head,Shush2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499992371, 0.159481049, -0.0253829956, 2.09049322e-05, -9.53674316e-06, -1.00000048, -0.518668175, -0.854975939, -2.23517418e-06, -0.854976237, 0.518667936, -2.31266022e-05))
CFuncs.Mesh.Create("SpecialMesh",Shush2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush2",Vector3.new(0.200000003, 0.0800000131, 0.210000068))
Shush2Weld=CFuncs.Weld.Create(m,Head,Shush2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499977112, 0.108161926, 0.335229874, 6.95632771e-05, -0.000365644693, -1.00000036, 0.979239762, -0.202707946, 0.000142380595, -0.202708066, -0.979239345, 0.00034442544))
CFuncs.Mesh.Create("SpecialMesh",Shush2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush2",Vector3.new(0.200000033, 0.129999995, 0.369999975))
Shush2Weld=CFuncs.Weld.Create(m,Head,Shush2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499992371, -0.229066849, 0.190048218, 7.13965856e-05, -7.77840614e-06, 1.00000036, -0.115747206, 0.993278861, 1.5437603e-05, -0.993279219, -0.115747198, 7.00615346e-05))
CFuncs.Mesh.Create("SpecialMesh",Shush2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shush2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Bright red","Shush2",Vector3.new(0.200000003, 0.090000011, 0.15000011))
Shush2Weld=CFuncs.Weld.Create(m,Head,Shush2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.500125885, -0.188785553, 0.348403931, -0.000512038823, 0.000103473663, -1.00000024, 0.568686485, 0.822554708, -0.000206530094, 0.822554886, -0.568686366, -0.000479668379))
CFuncs.Mesh.Create("SpecialMesh",Shush2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

function RayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

FindNearestTorso = function(pos)
	local list = (game.Workspace:children())
	local torso = nil
	local dist = 1000
	local temp, human, temp2 = nil, nil, nil
	for x = 1, #list do
		temp2 = list[x]
		if temp2.className == "Model" and temp2.Name ~= Character.Name then
			temp = temp2:findFirstChild("Head")
			human = temp2:findFirstChildOfClass("Humanoid")
			if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
				local dohit = true
				if dohit == true then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso, dist
end
function FindNearestTorso2(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Head") then
				if v ~= Character then
					if (v:findFirstChild("Head").Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end
			aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 3)})
			bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
			local Blood = Create("ParticleEmitter"){
			Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0)),
			LightEmission = .1,
			Size = NumberSequence.new(0.2),
			Texture = "rbxassetid://771221224",
			Transparency = bbb,
			Size = aaa,
			ZOffset = .8,
			Acceleration = Vector3.new(0, -25, 0),
			LockedToPart = false,
			EmissionDirection = "Top",
			Lifetime = NumberRange.new(.4, .6),
			Rate = 1000,
			Rotation = NumberRange.new(-100, 100),
			RotSpeed = NumberRange.new(-100, 100),
			Speed = NumberRange.new(20),
			VelocitySpread = 1000,
			Enabled = false,
			Parent = Head
			}


function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, Face, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChildOfClass("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if hit.Parent:IsA("Accessory") or hit.Parent:IsA("Hat") then
	hit = hit.Parent.Parent:FindFirstChild("Head")
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Head") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		
		if Type ~= "Blood" then
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
		end
		local HitHealth = h.Health
		h.Health = h.Health - Damage
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "DarkUp" then
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.1 do
					swait()
					Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
				end
			end))
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, 1)
		elseif Type == "Blood" then
			coroutine.resume(coroutine.create(function()
				if hit.Parent.Name == "Salvo_Starly" or hit.Parent.Name == "Nebula_Zorua" or hit.Parent.Name == "CKbackup" then
				CFuncs.Sound.Create("873911886", hit.Parent.Torso, .8, .8) 
				Effects.Sphere.Create(BrickColor.new("Royal purple"), hit.Parent.Torso.CFrame, 30, 30, 30, .5, .5, .5, 0.05)
				else
				local Blood2 = Blood:Clone()
				Blood2.Parent = hit
				Blood2.Enabled = true
				Blood2.EmissionDirection = Face
				local Hito = hit.Parent
				game:GetService("Debris"):AddItem(Blood2, 3)
				hit.Parent:BreakJoints()
				if hit.Parent:findFirstChild("AlreadyHit") == nil then
				local c = Create("BoolValue"){
					Name = "AlreadyHit",
					Value = true,
					Parent = Hito,
				}
				end
				swait(5)
				Blood2.Enabled = false
                swait(30)
				if Hito:findFirstChild("AlreadyHit") ~= nil and Hito:findFirstChild("Glitching") == nil then
				local s = Create("BoolValue"){
					Name = "Glitching",
					Value = true,
					Parent = Hito,
				}
				local FT2 = FT:Clone()
				if Hito:findFirstChild("Torso") ~= nil then
				FT2.Parent = Hito.Torso
				--[[RA2.Parent = Hito["Right Arm"]
				LA2.Parent = Hito["Left Arm"]
				RL2.Parent = Hito["Right Leg"]
				LL2.Parent = Hito["Left Leg"]]
				for _, v in pairs(Hito:children()) do
					if v:IsA("Part") and v.Name ~= "Torso" and v.Name ~= "Head" then
					local RA2 = RA:Clone()
					RA2.Name = "Shoos"
					RA2.Parent = v
					end
				end
				CFuncs.Sound.Create("155202884", Hito:findFirstChild("Torso"), 1, math.random(5, 15) / 10) 
				else
				FT2.Parent = nil					
				CFuncs.Sound.Create("155202884", Hito:findFirstChild("UpperTorso"), 1, math.random(5, 15) / 10) 				
				end
				for i = 0, 1, math.random(1, 10)/30 do
				swait()
				for _, v in pairs(Hito:children()) do
					if v:IsA("Part") and v:findFirstChild("Mesh") ~= nil then
						v:findFirstChild("Mesh").Offset = Vector3.new(math.random(-5, 5)/10, math.random(-5, 5)/10, math.random(-5, 5)/10)
					elseif v:IsA("Part") and v:findFirstChild("Shoos") ~= nil then
						v:findFirstChild("Shoos").Offset = Vector3.new(math.random(-5, 5)/10, math.random(-5, 5)/10, math.random(-5, 5)/10)
					elseif v:IsA("Accessory") and v.Handle:findFirstChild("Mesh") ~= nil then
						v.Handle:findFirstChild("Mesh").Offset = Vector3.new(math.random(-5, 5)/10, math.random(-5, 5)/10, math.random(-5, 5)/10)
					end
				end	
				if Hito:findFirstChild("UpperTorso") ~= nil then
				for _, v in pairs(Hito:findFirstChildOfClass("Humanoid"):children()) do
					if v:IsA("NumberValue") then
						v.Value = math.random(1, 5) / 10
					end
				end	
				end
				if Hito == nil then
					break
				end
				end
				if Hito ~= nil then
				Hito:Destroy()
				end
				end
				end
			end))		
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cf = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "SciFi",
		TextColor3 = Color,
		TextScaled = true,
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

function MagnitudeDamage(Part, Magnitude, MinimumDamage, MaximumDamage, KnockBack, Type, Face, HitSound, HitPitch)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChildOfClass("Humanoid")
		if hum ~= nil then
			if c:findFirstChild("Torso") ~= nil then
			local head = c:findFirstChild("Torso")
				if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= Magnitude and c.Name ~= Player.Name then 
					Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .01, Face, HitSound, HitPitch)
				end
			end
			elseif c:findFirstChild("UpperTorso") ~= nil then
			local head = c:findFirstChild("UpperTorso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= Magnitude and c.Name ~= Player.Name then 
					Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .01, Face, HitSound, HitPitch)
				end
				end
			end
		end
	end
end

EffectModel = Instance.new("Model", Character)
EffectModel.Name = "Effects"

Effects = {
	Block = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, Part)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			if Type == 1 or Type == nil then
				table.insert(Effects, {
					prt,
					"Block1",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			elseif Type == 2 then
				table.insert(Effects, {
					prt,
					"Block2",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			elseif Type == 3 then
				table.insert(Effects, {
					prt,
					"Block3",
					delay,
					x3,
					y3,
					z3,
					msh,
					Part
				})
			elseif Type == 4 then
				table.insert(Effects, {
					prt,
					"Block2Fire",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		end
	};

	Sphere = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, parent)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
			prt.Anchored = true
			prt.CFrame = cframe
			if parent == nil then
				prt.Parent = workspace
			else
				prt.Parent = parent
			end
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Blood = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Blood",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Blast = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Part)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "1323306", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Block4",
				delay,
				x3,
				y3,
				z3,
				msh,
				Part
			})
		end
	};

	Ring = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Cylinder = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Head = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Wave = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Break = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			game:GetService("Debris"):AddItem(prt, 10)
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local num = math.random(10, 50) / 1000
			table.insert(Effects, {
				prt,
				"Shatter",
				num,
				prt.CFrame,
				math.random() - math.random(),
				0,
				math.random(50, 100) / 100
			})
		end
	};

	Elec = {
		Create = function(brickcolor, cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x * 100, x * 100) / 100, math.random(-y * 100, y * 100) / 100, math.random(-z * 100, z * 100) / 100)
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 10)
			xval = math.random() / 9
			yval = math.random() / 9
			zval = math.random() / 9
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			eul1 = math.random(-50, 50)
			eul2 = math.random(-50, 50)
			eul3 = math.random(-50, 50)
			euld = CFrame.fromEulerAnglesXYZ(eul1, eul2, eul3)
			euld2 = CFrame.fromEulerAnglesXYZ(-eul1, -eul2, -eul3)
			table.insert(Effects, {
				prt,
				"Elec",
				.05,
				x,
				y,
				z,
				xval,
				yval,
				zval,
				msh,
				euld,
				euld2
			})
		end
	};

	Elec2 = {
		Create = function(brickcolor, cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x * 100, x * 100) / 100, math.random(-y * 100, y * 100) / 100, math.random(-z * 100, z * 100) / 100)
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 10)
			xval = math.random() / 7
			yval = math.random() / 7
			zval = math.random() / 7
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			eul1 = math.random(-50, 50)
			eul2 = math.random(-50, 50)
			eul3 = math.random(-50, 50)
			euld = CFrame.fromEulerAnglesXYZ(eul1, eul2, eul3)
			euld2 = CFrame.fromEulerAnglesXYZ(-eul1, -eul2, -eul3)
			table.insert(Effects, {
				prt,
				"Elec",
				.1,
				x,
				y,
				z,
				xval,
				yval,
				zval,
				msh,
				euld,
				euld2
			})
		end
	};

	Clone = {
		Create = function() 
			for _, v in pairs(Torso.Parent:children()) do
				if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
					local c = CFuncs.Part.Create(EffectModel, "Neon", 0, .5, BrickColor.new("Bright blue"), "Effect", v.Size)
					c.Anchored = true
					c.CFrame = v.CFrame
					game:GetService("Debris"):AddItem(c, 5)
					local cmsh = nil
					if v.Name == "Head" then
						cmsh = CFuncs.Mesh.Create("SpecialMesh", c, "Head", "", Vector3.new(0, 0, 0), v.Mesh.Scale)
					else
						cmsh = CFuncs.Mesh.Create("BlockMesh", c, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
					end
					table.insert(Effects, {
						c,
						"Cylinder",
						0.05,
						0.1,
						0.1,
						0.1,
						cmsh
					})
				end
			end
		end
	};

	EffectTemplate = {

	};
}

local Re = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','`','1','2','3','4','5','6','7','8','9','0','-','=','~','!','@','#','$','%','^','&','*','(',')','_','+','[','{',']','}',',','<','>','.','/','?','"',"'",'|',';',':'}

Lag = {
"殺害人數: ",
"Kills: ",
"杀害人数: ",
"K l  : ",
" il s: ",
"   l : ",
"Ki  s: ",
"殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺殺: ",
"　害　　: ",
"　　人数: ",
"KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK: ",
"　　人　: ",
"殺　　數: ",
"　害人数: ",
"杀害人数杀害人数杀害人数杀害人数杀害人数杀害人数杀害人数杀害人数杀害人数杀害人数杀害人数: ",
"害害害害害害害害害害害害害害害害害害害害害害害害害害害害害害害害害害害害害害害���害害害害: ",
"人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人��人人人��人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人��人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人\人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人人: ",
"K\i\l\l\s\: ",
"杀害\杀害杀害\杀害杀害杀害\杀害杀害杀害杀害\杀害杀害杀害杀害杀害\杀害杀害杀害杀害杀害杀害\杀害杀害杀害杀害杀害杀害杀害\杀害杀害杀害杀害杀害杀害杀害杀害\杀害杀害杀害杀害杀害杀害杀害杀害杀害\杀害杀害杀害杀害杀害杀害杀害杀害杀害杀害\杀害杀害杀害杀害杀害杀害杀害杀害杀害杀害杀害\杀害杀害杀害杀害杀害杀害杀害杀害杀害杀害杀害杀害: ",
"     : ",
"　　　　: ",
"殺: ",
"K害人ls: ",
": ",
"Psychopath x Genocider",
}
--[[
function chatfunc(text)
	local chat = coroutine.wrap(function()
	if Character:FindFirstChild("TalkingBillBoard")~= nil then
		Character:FindFirstChild("TalkingBillBoard"):destroy()
	end
	local Bill = Instance.new("BillboardGui",Character)
	Bill.Size = UDim2.new(0,100,0,40)
	Bill.StudsOffset = Vector3.new(0,3,0)
	Bill.Adornee = Character.Head
	Bill.Name = "TalkingBillBoard"
	local Hehe = Instance.new("TextLabel",Bill)
	Hehe.BackgroundTransparency = 1
	Hehe.BorderSizePixel = 0
	Hehe.Text = ""
	Hehe.Font = "Bodoni"
	Hehe.TextSize = 40
	Hehe.TextStrokeTransparency = 0
	Hehe.Size = UDim2.new(1,0,0.5,0)
	coroutine.resume(coroutine.create(function()
		while Hehe ~= nil do
			swait()	
			Hehe.Position = UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))	
			Hehe.Rotation = math.random(-5,5)
			Hehe.TextColor3 = Color3.new(math.random(0, 255)/255,0,0)
			Hehe.TextStrokeColor3 = Color3.new(math.random(0, 255)/255,0,0)
		end
	end))
	for i = 1,string.len(text),1 do
		swait()
		Hehe.Text = string.sub(text,1,i)
	end
	swait(90)--Re[math.random(1, 93)]
	for i = 0, 1, .025 do
		swait()
		Bill.ExtentsOffset = Vector3.new(math.random(-i, i), math.random(-i, i), math.random(-i, i))
		Hehe.TextStrokeTransparency = i
		Hehe.TextTransparency = i
	end
	Bill:Destroy()
	end)
chat()
end

function onChatted(msg)
	chatfunc(msg)
end

Player.Chatted:connect(onChatted)
]]
function Shoot(part, sp)
	local Spread = sp
	local epread = Vector3.new((math.random(-1, 0) + math.random()) * Spread, (math.random(-1, 0) + math.random()) * Spread, (math.random(-1, 0) + math.random()) * Spread) * (part.Position - Mouse.Hit.p).magnitude / 100
	local MouseLook = CFrame.new((part.Position + Mouse.Hit.p) / 2, Mouse.Hit.p + epread)
	table.insert(Effects,{MouseLook.lookVector, "Shoot", 100 ,part.Position,8,12, math.random(10,20),2})
end
function Shoot2(part, sp, target)
	local Spread = sp
	local epread = Vector3.new((math.random(-1, 0) + math.random()) * Spread, (math.random(-1, 0) + math.random()) * Spread, (math.random(-1, 0) + math.random()) * Spread) * (part.Position - Mouse.Hit.p).magnitude / 100
	local MouseLook = CFrame.new((part.Position + target.Position)/2, target.Position)
	table.insert(Effects,{MouseLook.lookVector, "Shoot", 100 ,part.Position,8,12, math.random(10,20),2})
end

function Attackone()
	Attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0, 1.5, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(1.5, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(-1.5, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(0.5, -2, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.5, -2, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	Attack = false
end
local Hold = false
function Broken_wing_bird()
	Attack = true
	Hold = true
	Humanoid.WalkSpeed = 5
	Humanoid.AutoRotate = false
	for i = 0, 1, 0.17 do
		swait()
   		local aim = CFrame.new(RootPart.Position, Mouse.Hit.p)
   		local direction = aim.lookVector
   		local headingA = math.atan2(direction.x, direction.z)
   		headingA = math.deg(headingA)
    	RootPart.CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(math.rad(0), math.rad(headingA - 180), math.rad(0))
 		PlayAnimationFromTable({
         CFrame.new(9.53674316e-07, -0.0336816609, -0.255211323, 1, 0, 0, 0, 0.971067786, 0.238803938, 0, -0.238803938, 0.971067786) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.42541242, 0.0876473337, 1, 0, 0, 0, 0.97239244, -0.233351514, 0, 0.233351514, 0.97239244) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.37510991, 0.698206067, -0.824641049, 0.999785006, 0.020736089, 4.64693449e-06, 0.00501107331, -0.241390109, -0.970415294, -0.0201214943, 0.970206618, -0.241442129) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.22553766, 0.648294926, -0.861116946, 0.999652445, -0.0263630021, -1.06560663e-06, -0.00493114442, -0.186943203, -0.982358336, 0.0258977152, 0.982016921, -0.187008232) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.562389553, -1.96633184, -0.220747471, 0.997805655, -0.0662109777, 0, 0.0642953441, 0.96893692, -0.238803938, 0.0158114415, 0.238279924, 0.971067786) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.560589671, -1.96681178, -0.220865458, 0.998194873, 0.0600589924, 0, -0.058321353, 0.969314873, -0.238803938, -0.0143423239, 0.238372862, 0.971067786) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .45, false)
 		HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104418173, -1.09499753, -0.00497820787, 4.66004713e-06, 1, 1.3038516e-08, -5.84172085e-07, 1.3038516e-08, -1.00000012, -1.00000012, 4.66004713e-06, 5.83939254e-07) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .45)
  		Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104342066, -1.0949899, -0.00497933477, -1.08149834e-06, 1, 5.58793545e-08, -5.84870577e-07, 5.40167093e-08, -1.00000012, -1, -1.08149834e-06, 5.88595867e-07) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .45)
	end
	local ref = CFuncs.Part.Create(m,Enum.Material.Neon,0,1,"New Yeller","ref",Vector3.new(0.05,0.05,0.05))
	ref.Anchored = true
	while Hold == true do
	Shoot(Hole, 1.5)
	coroutine.resume(coroutine.create(function()
	swait(1.5)
	if Victim ~= nil then
	Effects.Block.Create(BrickColor.new("New Yeller"), ref.CFrame, .1, .1, .1, .25, .25, .25, .13)
	ref.CFrame = Victim.Torso.CFrame * CFrame.new(math.random(-200, 200), math.random(-200, 200), math.random(-200, 200))
	Shoot2(ref, 1, Victim.Torso)
	else
	Victim = nil
	end
	end))
	CFuncs.Sound.Create("259291804", Hole2, 1.1, .8) 
	Effects.Block.Create(BrickColor.new("New Yeller"), Hole.CFrame, .1, .1, .1, .25, .25, .25, .13)
	for i = 0, 1 do
		swait()
   		local aim = CFrame.new(RootPart.Position, Mouse.Hit.p)
   		local direction = aim.lookVector
   		local headingA = math.atan2(direction.x, direction.z)
   		headingA = math.deg(headingA)
    	RootPart.CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(math.rad(0), math.rad(headingA - 180), math.rad(0))
 		RW.C0 = clerp(RW.C0, CFrame.new(1.37510991, 0.698206067, -0.824641049, 0.999785006, 0.020736089, 4.64693449e-06, 0.00501107331, -0.241390109, -0.970415294, -0.0201214943, 0.970206618, -0.241442129) * CFrame.new(0, .2, 0) * CFrame.Angles(0, 0, 0),  1)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.22553766, 0.648294926, -0.861116946, 0.999652445, -0.0263630021, -1.06560663e-06, -0.00493114442, -0.186943203, -0.982358336, 0.0258977152, 0.982016921, -0.187008232) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .5)
	end
	Shoot(Hole2, 1.5)
	coroutine.resume(coroutine.create(function()
	swait(1.5)
	if Victim ~= nil then
	Effects.Block.Create(BrickColor.new("New Yeller"), ref.CFrame, .1, .1, .1, .25, .25, .25, .13)
	ref.CFrame = Victim.Torso.CFrame * CFrame.new(math.random(-200, 200), math.random(-200, 200), math.random(-200, 200))
	Shoot2(ref, 1, Victim.Torso)
	else
	Victim = nil
	end
	end))
	CFuncs.Sound.Create("259291804", Hole2, 1.1, .8) 
	Effects.Block.Create(BrickColor.new("New Yeller"), Hole2.CFrame, .1, .1, .1, .25, .25, .25, .13)
	for i = 0, 1 do
		swait()
   		local aim = CFrame.new(RootPart.Position, Mouse.Hit.p)
   		local direction = aim.lookVector
   		local headingA = math.atan2(direction.x, direction.z)
   		headingA = math.deg(headingA)
    	RootPart.CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(math.rad(0), math.rad(headingA - 180), math.rad(0))
        Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.42541242, 0.0876473337, 1, 0, 0, 0, 0.97239244, -0.233351514, 0, 0.233351514, 0.97239244) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.37510991, 0.698206067, -0.824641049, 0.999785006, 0.020736089, 4.64693449e-06, 0.00501107331, -0.241390109, -0.970415294, -0.0201214943, 0.970206618, -0.241442129) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),  .5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.22553766, 0.648294926, -0.861116946, 0.999652445, -0.0263630021, -1.06560663e-06, -0.00493114442, -0.186943203, -0.982358336, 0.0258977152, 0.982016921, -0.187008232) * CFrame.new(0, .2, 0) * CFrame.Angles(0, 0, 0), 1)
	end
	end
	game:GetService("Debris"):AddItem(ref, 1)
	swait(10)
	Humanoid.AutoRotate = true
	Humanoid.WalkSpeed = 14
	Attack = false
end

function Butterfly_on_the_ground()
	Attack = true
	Humanoid.WalkSpeed = 0
	Humanoid.JumpPower = 0
	for i = 0, 1, 0.11 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, -0.00924980082, -0.147094101, 1, 0, 0, 0, 0.998028755, 0.0627579838, 0, -0.0627579838, 0.998028755) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49783361, -0.324239999, 1, 0, 0, 0, 0.859559119, 0.511036277, 0, -0.511036277, 0.859559119) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),  
         CFrame.new(1.47537684, -0.0119673908, -0.486074328, 0.995289624, -0.0926431417, 0.0285649542, 0.0904912725, 0.782049656, -0.616611481, 0.0347856097, 0.616291881, 0.786749184) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.57702017, 0.00502845645, -0.622533083, 0.987496614, 0.147014618, -0.0568970889, -0.146226123, 0.719407618, -0.679021835, -0.0588939339, 0.678851485, 0.731909931) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.582992077, -1.99089563, 0.0221938714, 0.998069108, -0.0621130057, 0, 0.0619905666, 0.996101677, -0.0627579838, 0.00389808696, 0.0626368076, 0.998028755) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.55340898, -1.99206996, 0.0221200362, 0.997222602, 0.0744800419, 0, -0.0743332207, 0.995256841, -0.0627579838, -0.0046742172, 0.0625836775, 0.998028755) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .32, false)
  		HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104349852, -1.09500027, -0.00498119649, 4.65661287e-08, 1.00000012, -3.59304249e-06, 9.83476639e-07, -3.59490514e-06, -1, -1, 4.65661287e-08, -1.01327896e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .32)
  		Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104328832, -1.09499168, -0.00498193316, -4.22075391e-06, 1.00000012, -2.68220901e-07, 8.04662704e-07, -2.38418579e-07, -1, -1, -4.21702862e-06, -7.74860382e-07) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .32)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-8.83230587e-06, -1.21326494, -0.585408747, 0.999996662, 1.76079993e-06, 1.71904196e-06, 2.44006287e-06, 0.779393435, 0.626534164, 2.42144097e-07, -0.626533806, 0.779394567) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.76084802e-06, 1.37720037, -0.459903181, 0.999998331, -2.89008483e-07, 1.28259637e-06, 8.30739737e-07, 0.534020782, 0.845471025, 7.89761543e-07, -0.845471621, 0.534020901) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),  
         CFrame.new(1.45852637, 0.365505755, -0.795653403, 0.995879352, -0.0528275259, 0.0736907572, 0.0878442302, 0.360745877, -0.928517818, 0.0224694014, 0.931166887, 0.363901049) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.50637293, 0.371033907, -0.893403471, 0.989684701, 0.0623151474, -0.128987223, -0.141957864, 0.305990666, -0.941391051, -0.0191923492, 0.949993253, 0.311681062) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.574780762, -1.89212012, 0.54934907, 0.998062849, -0.0490923077, -0.038172923, 0.0620655455, 0.824978769, 0.561744928, 0.00391620025, -0.563027501, 0.826429188) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.572159648, -1.85852242, 0.532348573, 0.997223377, 0.0585144907, 0.0460263006, -0.0743010715, 0.820766509, 0.566410959, -0.00463189185, -0.56825918, 0.822836995) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .5, false)
		HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104334829, -1.09498894, -0.00498536741, -6.70552254e-07, 1.00000012, -4.96208668e-06, -1.34110451e-06, -4.96767461e-06, -1.00000012, -1.00000012, -6.59376383e-07, 1.28149986e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .5)
		Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104280468, -1.09498692, -0.0049786875, 3.11806798e-06, 1, 5.73322177e-06, 2.14576721e-06, 5.73694706e-06, -1.00000012, -1, 3.11806798e-06, -2.23517418e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .5)
	end

	local hit = nil
	while hit == nil do
		swait()
		Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(2.76084802e-06, 1.37720037, -0.459903181, 0.999998331, -2.89008483e-07, 1.28259637e-06, 8.30739737e-07, 0.534020782, 0.845471025, 7.89761543e-07, -0.845471621, 0.534020901) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20))), .5)
		hit,pos=RayCast(RootPart.Position, (CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector, 4, Character)
	end
	CFuncs.Sound.Create("663164690", Hole, .3, .8) 
	CFuncs.Sound.Create("663164690", Hole2, .3, .8) 
	swait(5)
	local ref = CFuncs.Part.Create(m,Enum.Material.Neon,0,1,"New Yeller","ref",Vector3.new(0.05,0.05,0.05))
	ref.CFrame = CFrame.new(Mouse.Hit.p - Vector3.new(0, -.2, 0))
	ref.Anchored = true
	game:GetService("Debris"):AddItem(ref, 6)
	for i = 1, 20 do
	local MouseLook = CFrame.new((ref.Position + Mouse.Hit.p) / 2, Mouse.Hit.p)
	local hit2, pos2 = RayCast(ref.Position, MouseLook.lookVector, 999, Character)
	local refs = CFuncs.Part.Create(m,Enum.Material.Neon,0,1,"New Yeller","ref",Vector3.new(0.05,0.05,0.05))
	refs.Anchored = true
 	refs.CFrame = CFrame.new(pos2)
	game:GetService("Debris"):AddItem(refs, 1)
	Effects.Cylinder.Create(BrickColor.new("New Yeller"), refs.CFrame * CFrame.Angles(math.rad(math.random(-2, 2)), math.rad(math.random(-2, 2)), math.rad(math.random(-2, 2))), .5, 20000, .5, 0, 0, 0, .13)
	Effects.Block.Create(BrickColor.new("New Yeller"), Hole.CFrame, .1, .1, .1, .25, .25, .25, .13)
	Effects.Wave.Create(BrickColor.new("New Yeller"), CFrame.new(Hole.Position + Vector3.new(0, .2, 0)) * CFrame.Angles(0, math.rad(math.random(-360,360)), 0), .1, .1, .1, .1, 0, .1, .16)
	CFuncs.Sound.Create("340508929", refs, .8, .7) 
	CFuncs.Sound.Create("259291804", Hole2, 1.1, .8) 
	MagnitudeDamage(refs, 3, 0, 0, 0, "Blood", "Top", "142858160", math.random(2, 5)/1.4)
	for i = 0, 1 do
		swait()
		Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(2.76084802e-06, 1.37720037, -0.459903181, 0.999998331, -2.89008483e-07, 1.28259637e-06, 8.30739737e-07, 0.534020782, 0.845471025, 7.89761543e-07, -0.845471621, 0.534020901) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20))), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.45852637, 0.365505755, -0.795653403, 0.995879352, -0.0528275259, 0.0736907572, 0.0878442302, 0.360745877, -0.928517818, 0.0224694014, 0.931166887, 0.363901049) * CFrame.new(0, .2, 0) * CFrame.Angles(0, 0, 0),  1)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.50637293, 0.371033907, -0.893403471, 0.989684701, 0.0623151474, -0.128987223, -0.141957864, 0.305990666, -0.941391051, -0.0191923492, 0.949993253, 0.311681062) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .5)
	end
	local MouseLook = CFrame.new((ref.Position + Mouse.Hit.p) / 2, Mouse.Hit.p)
	local hit2, pos2 = RayCast(ref.Position, MouseLook.lookVector, 999, Character)
	local refs = CFuncs.Part.Create(m,Enum.Material.Neon,0,1,"New Yeller","ref",Vector3.new(0.05,0.05,0.05))
	refs.Anchored = true
 	refs.CFrame = CFrame.new(pos2)
	game:GetService("Debris"):AddItem(refs, 1)
	Effects.Cylinder.Create(BrickColor.new("New Yeller"), refs.CFrame * CFrame.Angles(math.rad(math.random(-2, 2)), math.rad(math.random(-2, 2)), math.rad(math.random(-2, 2))), .5, 20000, .5, 0, 0, 0, .13)
	Effects.Block.Create(BrickColor.new("New Yeller"), Hole.CFrame, .1, .1, .1, .25, .25, .25, .13)
	Effects.Wave.Create(BrickColor.new("New Yeller"), CFrame.new(Hole2.Position + Vector3.new(0, .2, 0)) * CFrame.Angles(0, math.rad(math.random(-360,360)), 0), .1, .1, .1, .1, 0, .1, .16)
	CFuncs.Sound.Create("259291804", Hole2, 1.1, .8) 
	CFuncs.Sound.Create("340508929", refs, .8, .7) 
	MagnitudeDamage(refs, 3, 0, 0, 0, "Blood", "Top", "142858160", math.random(2, 5)/1.4)
	for i = 0, 1 do
		swait()
		Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(2.76084802e-06, 1.37720037, -0.459903181, 0.999998331, -2.89008483e-07, 1.28259637e-06, 8.30739737e-07, 0.534020782, 0.845471025, 7.89761543e-07, -0.845471621, 0.534020901) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20))), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.45852637, 0.365505755, -0.795653403, 0.995879352, -0.0528275259, 0.0736907572, 0.0878442302, 0.360745877, -0.928517818, 0.0224694014, 0.931166887, 0.363901049) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),  .5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.50637293, 0.371033907, -0.893403471, 0.989684701, 0.0623151474, -0.128987223, -0.141957864, 0.305990666, -0.941391051, -0.0191923492, 0.949993253, 0.311681062) * CFrame.new(0, .2, 0) * CFrame.Angles(0, 0, 0), 1)
	end	
	end
	swait(10)
	Humanoid.WalkSpeed = 14
	Humanoid.JumpPower = 50
	Attack = false
end

function Innocent_s_Tear()
	Attack = true
	for i = 0, 1, 0.17 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0372427106, 0, -0.0254781954, 0.362814218, 0, -0.93186152, 0, 1, 0, 0.93186152, 0, 0.362814218) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0584814101, 1.48993742, -0.0233566761, 0.591825008, -0.146214843, 0.792694509, 0.0400200225, 0.987527847, 0.152273491, -0.805072486, -0.0583956167, 0.590295076) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.41006351, -0.0804157257, -0.338553876, 0.670105577, -0.712319076, 0.208710641, 0.734884977, 0.597121656, -0.321542978, 0.104415536, 0.368846059, 0.923607171) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.57609594, 0.0278623551, -0.341137588, 0.98150444, 0.191439465, 1.26063824e-05, -0.168087006, 0.861808777, -0.478573322, -0.0916287005, 0.469719768, 0.878047645) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.497831821, -1.99730384, -0.0567342639, 0.99926132, -0.00269644242, 0.0383348465, 0.00450899871, 0.998871744, -0.0472746976, -0.038164109, 0.0474126264, 0.998146176) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.546293855, -1.99743998, -0.0205773562, 0.406115621, 0.0459335074, 0.912666559, 0, 0.998735905, -0.0502652861, -0.913821757, 0.0204135161, 0.405602247) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .4, false)
	HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104765799, -1.09500122, -0.00494370935, 4.23192978e-06, 1.00000012, -2.20537186e-06, 3.36766243e-06, -2.17556953e-06, -1, -1.00000012, 4.23192978e-06, -3.39746475e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .4)
	Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0103758406, -1.09499943, -0.00501006888, -6.91413879e-06, 1, -3.57627869e-06, 2.86847353e-06, -3.57627869e-06, -1.00000012, -1.00000012, -6.94394112e-06, -2.92807817e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .4)
	end
	CFuncs.Sound.Create("200632211", Hole, .8, .6) 
	local gg = nil
	for i = 0, 1, 0.18 do
		swait()
		for i, v in pairs(FindNearestTorso2(Head.CFrame.p, 8)) do
			if v:FindFirstChild('Head') then
				if gg == nil then
				CFuncs.Sound.Create("260430060", Hole, .8, .9) 
				end
				gg = v
				if v:findFirstChildOfClass("Humanoid") ~= nil then
				v:findFirstChildOfClass("Humanoid").PlatformStand = true
				end
				v:findFirstChild("Head").CFrame = Hole.CFrame * CFrame.Angles(math.rad(90), 0, -math.rad(90))
			end
		end
		PlayAnimationFromTable({
         CFrame.new(0.0390095115, 0, -0.0197144821, 0.407043844, 0, 0.913408697, 0, 1, 0, -0.913408697, 0, 0.407043815) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.05453711, 1.46327734, -0.152279198, 0.41739738, 0.107248709, -0.902373195, 0.0385060012, 0.990031779, 0.135478243, 0.907908022, -0.0912950337, 0.40910691) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.8753885, 0.440661103, -0.547878385, 0.497761488, -0.867243707, 0.0110434555, 0.0789629743, 0.0326340236, -0.996343255, 0.863712072, 0.496813267, 0.0847240984) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.73796844, 0.00463971868, -0.238446265, 0.71437037, 0.694597006, -0.0849137902, -0.686124921, 0.671421766, -0.280045629, -0.137505859, 0.258317709, 0.956223965) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.657333732, -1.97795725, -0.018036887, 0.402342439, -0.0848773271, -0.91154623, 0.0163199995, 0.996199667, -0.0855563134, 0.915343881, 0.0195464976, 0.402198553) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.540840566, -2.00682664, -0.0355517492, 0.997884095, -0.000889145769, 0.0650128722, 0.00360199902, 0.999126971, -0.041622676, -0.0649190247, 0.0417687856, 0.997016191) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .45, false)
	HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104334587, -1.09500504, -0.00500968238, 1.3609184e-05, 1.00000024, 3.65823507e-06, 3.64333391e-06, 3.67313623e-06, -1, -1, 1.35949813e-05, -3.64147127e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .45)
	Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104610454, -1.09497094, -0.00493852887, -1.9043684e-05, 1.00000024, -2.35438347e-06, -8.43405724e-06, -2.35438347e-06, -1.00000012, -1, -1.9043684e-05, 8.5234642e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .45)
	end
	if gg ~= nil then
	Humanoid.WalkSpeed = 0
	Humanoid.JumpPower = 0
	for i = 0, 1, 0.16 do
		swait()
		if gg:findFirstChildOfClass("Humanoid") ~= nil then
		gg:findFirstChildOfClass("Humanoid").PlatformStand = true
		end
		gg:findFirstChild("Head").CFrame = Hole.CFrame * CFrame.Angles(math.rad(90), 0, -math.rad(90))
		PlayAnimationFromTable({
         CFrame.new(0.0374694094, 2.61733879e-30, -0.020400811, 0.407043517, 0, 0.913408816, 0, 1, 1.00974196e-28, -0.913408816, -6.31088724e-30, 0.407043517) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0591441095, 1.44310308, -0.104489565, 0.38024953, -0.166558102, -0.909763098, 0.0455610156, 0.985830128, -0.161441401, 0.923761129, 0.0199382901, 0.382449985) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.95842671, 0.950205386, -0.642317116, 0.497761637, -0.759324074, 0.419118613, 0.0789630339, -0.441555262, -0.893752694, 0.863711894, 0.47797066, -0.159830749) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.73796976, 0.0046387054, -0.238446742, 0.714370131, 0.694597125, -0.0849137902, -0.68612498, 0.671421647, -0.280045629, -0.137505859, 0.258317709, 0.956223905) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.657334089, -1.97795868, -0.0180363506, 0.40234226, -0.084877342, -0.91154635, 0.0163200051, 0.996199667, -0.0855563283, 0.915344059, 0.0195464883, 0.402198404) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.540840447, -2.00682497, -0.0355497524, 0.997884095, -0.000889146701, 0.0650128722, 0.00360199972, 0.999126911, -0.0416226797, -0.0649190843, 0.0417687893, 0.997016013) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .4, false)
	HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104334587, -1.09500504, -0.00500968238, 1.3609184e-05, 1.00000024, 3.65823507e-06, 3.64333391e-06, 3.67313623e-06, -1, -1, 1.35949813e-05, -3.64147127e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .45)
	Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104610454, -1.09497094, -0.00493852887, -1.9043684e-05, 1.00000024, -2.35438347e-06, -8.43405724e-06, -2.35438347e-06, -1.00000012, -1, -1.9043684e-05, 8.5234642e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .45)
	if gg == nil then
		break
	end
	end
	if gg.Name == "Salvo_Starly" or gg.Name == "Nebula_Zorua" or gg.Name == "CKbackup" then
	for i = 0, 1, 0.04 do
		swait()
		if gg:findFirstChildOfClass("Humanoid") ~= nil then
		gg:findFirstChildOfClass("Humanoid").PlatformStand = true
		end
		gg:findFirstChild("Head").CFrame = Hole.CFrame * CFrame.Angles(math.rad(90), 0, -math.rad(90))
		PlayAnimationFromTable({
         CFrame.new(0.0374694094, 2.61733879e-30, -0.020400811, 0.407043517, 0, 0.913408816, 0, 1, 1.00974196e-28, -0.913408816, -6.31088724e-30, 0.407043517) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0591441095, 1.44310308, -0.104489565, 0.38024953, -0.166558102, -0.909763098, 0.0455610156, 0.985830128, -0.161441401, 0.923761129, 0.0199382901, 0.382449985) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.95842671, 0.950205386, -0.642317116, 0.497761637, -0.759324074, 0.419118613, 0.0789630339, -0.441555262, -0.893752694, 0.863711894, 0.47797066, -0.159830749) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.73796976, 0.0046387054, -0.238446742, 0.714370131, 0.694597125, -0.0849137902, -0.68612498, 0.671421647, -0.280045629, -0.137505859, 0.258317709, 0.956223905) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.657334089, -1.97795868, -0.0180363506, 0.40234226, -0.084877342, -0.91154635, 0.0163200051, 0.996199667, -0.0855563283, 0.915344059, 0.0195464883, 0.402198404) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.540840447, -2.00682497, -0.0355497524, 0.997884095, -0.000889146701, 0.0650128722, 0.00360199972, 0.999126911, -0.0416226797, -0.0649190843, 0.0417687893, 0.997016013) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .4, false)
	HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104334587, -1.09500504, -0.00500968238, 1.3609184e-05, 1.00000024, 3.65823507e-06, 3.64333391e-06, 3.67313623e-06, -1, -1, 1.35949813e-05, -3.64147127e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .45)
	Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104610454, -1.09497094, -0.00493852887, -1.9043684e-05, 1.00000024, -2.35438347e-06, -8.43405724e-06, -2.35438347e-06, -1.00000012, -1, -1.9043684e-05, 8.5234642e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .45)
	if gg == nil then
		break
	end
	end
	for i = 0, 1, 0.035 do
		swait()
		if gg:findFirstChildOfClass("Humanoid") ~= nil then
		gg:findFirstChildOfClass("Humanoid").PlatformStand = true
		end
		gg:findFirstChild("Head").CFrame = Hole.CFrame * CFrame.Angles(math.rad(90), 0, -math.rad(90))
		PlayAnimationFromTable({
         CFrame.new(0.0390095115, 0, -0.0197144821, 0.407043844, 0, 0.913408697, 0, 1, 0, -0.913408697, 0, 0.407043815) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.05453711, 1.46327734, -0.152279198, 0.41739738, 0.107248709, -0.902373195, 0.0385060012, 0.990031779, 0.135478243, 0.907908022, -0.0912950337, 0.40910691) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.8753885, 0.440661103, -0.547878385, 0.497761488, -0.867243707, 0.0110434555, 0.0789629743, 0.0326340236, -0.996343255, 0.863712072, 0.496813267, 0.0847240984) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.73796844, 0.00463971868, -0.238446265, 0.71437037, 0.694597006, -0.0849137902, -0.686124921, 0.671421766, -0.280045629, -0.137505859, 0.258317709, 0.956223965) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.657333732, -1.97795725, -0.018036887, 0.402342439, -0.0848773271, -0.91154623, 0.0163199995, 0.996199667, -0.0855563134, 0.915343881, 0.0195464976, 0.402198553) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.540840566, -2.00682664, -0.0355517492, 0.997884095, -0.000889145769, 0.0650128722, 0.00360199902, 0.999126971, -0.041622676, -0.0649190247, 0.0417687856, 0.997016191) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .12, false)
	HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104334587, -1.09500504, -0.00500968238, 1.3609184e-05, 1.00000024, 3.65823507e-06, 3.64333391e-06, 3.67313623e-06, -1, -1, 1.35949813e-05, -3.64147127e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .12)
	Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104610454, -1.09497094, -0.00493852887, -1.9043684e-05, 1.00000024, -2.35438347e-06, -8.43405724e-06, -2.35438347e-06, -1.00000012, -1, -1.9043684e-05, 8.5234642e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .12)
	end
	else
	for i = 0, 10 do
	CFuncs.Sound.Create("259291804", Hole, 1.1, .8) 
	Effects.Block.Create(BrickColor.new("New Yeller"), Hole.CFrame, .1, .1, .1, .25, .25, .25, .13)
	Damage(Hole, gg.Head, 0, 0, 0,  "Blood", gg, 0, "Top", "142858160", math.random(2, 5)/1.4)
	if gg:findFirstChildOfClass("Humanoid") ~= nil then
		gg:findFirstChildOfClass("Humanoid").PlatformStand = true
	end
	gg:findFirstChild("Head").CFrame = Hole.CFrame * CFrame.Angles(math.rad(90), 0, -math.rad(90))
	Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(-0.0591441095, 1.44310308, -0.104489565, 0.38024953, -0.166558102, -0.909763098, 0.0455610156, 0.985830128, -0.161441401, 0.923761129, 0.0199382901, 0.382449985) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20))), .5)
	RW.C0 = clerp(RW.C0, CFrame.new(1.95842671, 0.950205386, -0.642317116, 0.497761637, -0.759324074, 0.419118613, 0.0789630339, -0.441555262, -0.893752694, 0.863711894, 0.47797066, -0.159830749) * CFrame.new(0, .2, 0) * CFrame.Angles(0, 0, 0), 1)
	swait()
	gg:findFirstChild("Head").CFrame = Hole.CFrame * CFrame.Angles(math.rad(90), 0, -math.rad(90))
	Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(-0.0591441095, 1.44310308, -0.104489565, 0.38024953, -0.166558102, -0.909763098, 0.0455610156, 0.985830128, -0.161441401, 0.923761129, 0.0199382901, 0.382449985) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20))), .5)
	RW.C0 = clerp(RW.C0, CFrame.new(1.95842671, 0.950205386, -0.642317116, 0.497761637, -0.759324074, 0.419118613, 0.0789630339, -0.441555262, -0.893752694, 0.863711894, 0.47797066, -0.159830749) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .5)
	swait()
	if gg == nil then
		break
	end
	end
	end
	swait(10)
	end
	Attack = false
	Humanoid.WalkSpeed = 14
	Humanoid.JumpPower = 50
end


function Run()
	if Mouse.Target.Parent ~= Character and Mouse.Target.Parent.Parent ~= Character and Mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
	coroutine.resume(coroutine.create(function()
		if Victim ~= Mouse.Target.Parent then
		Victim = Mouse.Target.Parent
		Billb.Adornee = Victim.Torso
		Billb.Enabled = true
		CFuncs.Sound.Create("749189256", Mouse.Target.Parent, .8, math.random(5, 15) / 10) 
			for i = 1, 0, -.05 do
			swait()
			D1.TileSize = UDim2.new(math.random(1, 15) / 7, 0, math.random(1, 15) / 7, 0)
			D2.TileSize = UDim2.new(math.random(1, 15) / 7, 0, math.random(1, 15) / 7, 0)
			D3.TileSize = UDim2.new(math.random(1, 15) / 7, 0, math.random(1, 15) / 7, 0)
			D3.Rotation = math.random(-360, 360)
			D1.Size = UDim2.new(3, i * math.random(5, 40), 3, i * math.random(5, 40))
			D2.Size = UDim2.new(2.4, i * math.random(5, 40), 2.4, i * math.random(5, 40))
			D3.Size = UDim2.new(.2, i * math.random(5, 40), .2, i * math.random(5, 40))
			D1.ImageTransparency = i
			D2.ImageTransparency = i
			D3.ImageTransparency = i
			end
			D1.TileSize = UDim2.new(1, 0, 1, 0)
			D2.TileSize = UDim2.new(1, 0, 1, 0)
			D3.TileSize = UDim2.new(1, 0, 1, 0)
			D3.Rotation = 45
		end
	end))
	end
end
function Hide_n_Seek()
	Delay2 = true
	for i = 0, 1, math.random(1, 2)/9 do	
	swait()
	CFuncs.Sound.Create("155202884", Head, .4, math.random(5, 15) / 5) 
	FT.Parent = Torso
	RA.Parent = RightArm
	LA.Parent = LeftArm
	RL.Parent = RightLeg
	LL.Parent = LeftLeg
	D1.TileSize = UDim2.new(math.random(1, 15) / 20, 0, math.random(1, 15) / 20, 0)
	D2.TileSize = UDim2.new(math.random(1, 15) / 20, 0, math.random(1, 15) / 20, 0)
	D3.TileSize = UDim2.new(math.random(1, 15) / 20, 0, math.random(1, 15) / 20, 0)
	D3.Rotation = math.random(-360, 360)
	for _, v in pairs(Character:children()) do
		if v:IsA("Part") and v:findFirstChild("Mesh") ~= nil then
			v:findFirstChild("Mesh").Offset = Vector3.new(math.random(-5, 5)/6, math.random(-5, 5)/6, math.random(-5, 5)/6)
		elseif v:IsA("Accessory") and v.Handle:findFirstChild("Mesh") ~= nil then
			v.Handle:findFirstChild("Mesh").Offset = Vector3.new(math.random(-5, 5)/6, math.random(-5, 5)/6, math.random(-5, 5)/6)
		end
		for _, v in pairs(m:children()) do
			if v:IsA("Part") and v:findFirstChild("Mesh") ~= nil and (v.Name == "Shush" or v.Name == "Head") then
				v:findFirstChild("Mesh").Offset = Vector3.new(math.random(-5, 5)/6, math.random(-5, 5)/6, math.random(-5, 5)/6)
			end		
		end
	end	
	end	
	for _, v in pairs(Character:children()) do
		if v:IsA("Part") and v:findFirstChild("Mesh") ~= nil then
			v:findFirstChild("Mesh").Offset = Vector3.new(0, 0, 0)
		elseif v:IsA("Accessory") and v.Handle:findFirstChild("Mesh") ~= nil then
			v.Handle:findFirstChild("Mesh").Offset = Vector3.new(0, 0, 0)
		end
		for _, v in pairs(m:children()) do
			if v:IsA("Part") and v:findFirstChild("Mesh") ~= nil and (v.Name == "Shush" or v.Name == "Head") then
				v:findFirstChild("Mesh").Offset = Vector3.new(0, 0, 0)
			end		
		end
	end	
	if Victim:FindFirstChildOfClass("Humanoid") ~= nil then
	RootPart.CFrame = Victim.Head.CFrame * CFrame.new(0, 0, 6)
	else
	Victim = nil
	end
	D1.TileSize = UDim2.new(1, 0, 1, 0)
	D2.TileSize = UDim2.new(1, 0, 1, 0)
	D3.TileSize = UDim2.new(1, 0, 1, 0)
	D3.Rotation = 45
	FT.Parent = nil
	RA.Parent = nil
	LA.Parent = nil
	RL.Parent = nil
	LL.Parent = nil
	Delay2 = false
end

function Happy_Ending()
	Attack = true
	Humanoid.WalkSpeed = 0
	Humanoid.JumpPower = 0
	for i = 1, 0, -0.01 do
		swait()
		spook.Volume = i - .01 
		PlayAnimationFromTable({
         CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.48569643, -0.0892917216, 1, 0, 0, 0, 0.987443745, 0.15797095, 0, -0.15797095, 0.987443745) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.97623742, 0.437888026, -0.304436743, 0.406562924, -0.913622797, 3.01142649e-07, 0.281078935, 0.125080049, -0.951498568, 0.869310796, 0.386844128, 0.30765301) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.88455427, 0.422001511, -0.176498562, 0.283520967, 0.957216203, 0.0579055212, -0.204488963, 0.119341888, -0.971566737, -0.936909854, 0.263618499, 0.229576096) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.5102005, -1.99953759, 0, 0.998996615, -0.0447849892, 0, 0.0447849855, 0.998996615, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.554316103, -1.99676478, -0, 0.998235762, 0.0593759865, 0, -0.0593759865, 0.998235762, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .12, false)
	HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0227924436, -1.07477307, -0.0921273902, 1.96695328e-06, -0.999339342, 0.0363452137, 5.51342964e-07, 0.0363451838, 0.999339283, -1.00000012, -1.93715096e-06, 6.10947609e-07) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .12)
	Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0169022772, -1.08894277, -0.167423859, -2.58535147e-05, -0.999802172, 0.0198903829, 7.16745853e-06, 0.019890368, 0.999802232, -1, 2.59876251e-05, 6.65336847e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .12)
	end
	Effects.Block.Create(BrickColor.new("New Yeller"), Hole.CFrame, .1, .1, .1, .25, .25, .25, .13)
	Effects.Block.Create(BrickColor.new("New Yeller"), Hole2.CFrame, .1, .1, .1, .25, .25, .25, .13)
	CFuncs.Sound.Create("259291804", Hole, 1.1, .8) 
	CFuncs.Sound.Create("259291804", Hole2, 1.1, .8) 
	CFuncs.Sound.Create("142858160", Head, 1.3, math.random(2, 5)/1.4)

	if Character.Name == "Salvo_Starly" or Character.Name == "Nebula_Zorua" or Character.Name == "CKbackup" then
	CFuncs.Sound.Create("873911886", RootPart, .8, .8) 
	Effects.Sphere.Create(BrickColor.new("Royal purple"), RootPart.CFrame, 30, 30, 30, .5, .5, .5, 0.05)
	swait(55)
	for i = 0, 1, 0.01 do
		swait()
		spook.Volume = i + .01 
		PlayAnimationFromTable({
         CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.209060356, 1.4504354, -0.00869044848, 0.904006004, -0.421258777, 0.0728988647, 0.422152996, 0.906518221, 0.00342751318, -0.067528002, 0.0276759826, 0.997333467) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.52594924, -0.0116261244, -0.0164723098, 0.243770003, -0.733046055, -0.634995818, 0.0841329992, 0.668263078, -0.739152312, 0.966176987, 0.126759022, 0.224575877) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.45059443, 0.0140549541, -0.030643627, 0.177682057, 0.705317974, 0.68626219, -0.09524104, 0.706409931, -0.701365948, -0.979468346, 0.0592598245, 0.192691579) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.5102005, -1.99953759, 0, 0.998996615, -0.0447849892, 0, 0.0447849855, 0.998996615, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.554316103, -1.99676478, -0, 0.998235762, 0.0593759865, 0, -0.0593759865, 0.998235762, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .14, false)
	HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.023190137, -1.06343412, -0.0356665105, -0.00649303198, -0.999339521, 0.0357592702, -0.178101644, 0.0363439769, 0.983340681, -0.983990788, 1.60485506e-05, -0.178219959) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .14)
	Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0250650737, -1.08305347, -0.131738186, 0.000606626272, -0.999983788, -0.00567625836, -0.112200432, -0.00570848584, 0.993669271, -0.993685484, 3.4108758e-05, -0.112201981) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .14)
	end
	Attack = false
	Humanoid.WalkSpeed = 14
	Humanoid.JumpPower = 50
	else
	Deed = true
	Blood.Enabled = true
	m.Parent = workspace
	swait(1)
	Character:BreakJoints()
	swait(5)
	for _, v in pairs(m:children()) do
		if v:IsA("Part") and v.Name ~= "FHead" and v.Name ~= "Shush" and v.Name ~= "Shush2" then
			v.CanCollide = true
		end	
	end
	game:GetService("Debris"):AddItem(m, 40)
	Blood.Enabled = false
	swait(30)
	CFuncs.Sound.Create("155202884", Torso, 1, math.random(5, 15) / 10) 	
	FT.Parent = Torso
	RA.Parent = RightArm
	LA.Parent = LeftArm
	RL.Parent = RightLeg
	LL.Parent = LeftLeg
	for i = 0, 1, math.random(1, 10)/60 do
	swait()
	for _, v in pairs(Character:children()) do
			if v:IsA("Part") and v:findFirstChild("Mesh") ~= nil then
				v:findFirstChild("Mesh").Offset = Vector3.new(math.random(-5, 5)/10, math.random(-5, 5)/10, math.random(-5, 5)/10)
			elseif v:IsA("Part") and v:findFirstChild("Shoos") ~= nil then
				v:findFirstChild("Shoos").Offset = Vector3.new(math.random(-5, 5)/10, math.random(-5, 5)/10, math.random(-5, 5)/10)
			elseif v:IsA("Accessory") and v.Handle:findFirstChild("Mesh") ~= nil then
				v.Handle:findFirstChild("Mesh").Offset = Vector3.new(math.random(-5, 5)/10, math.random(-5, 5)/10, math.random(-5, 5)/10)
			end
		end	
	end
	Character:Destroy()
	end
end

Mouse.Button1Down:connect(function()
	if Attack == false and Hold == false then
	Broken_wing_bird()
	end
end)
Mouse.Button1Up:connect(function()
	if Hold == true then
	Hold = false
	end
end)

Mouse.KeyDown:connect(function(Key)
	Key = Key:lower()
	if Attack == false and Key == 'q' then
	Run()
	elseif Attack == false and Key == 'e' and Delay2 == false and Victim ~= nil then
	Hide_n_Seek()
	elseif Attack == false and Key == 'z' and Hold == false then
	Innocent_s_Tear()
	elseif Attack == false and Key == 'x' then
	Butterfly_on_the_ground()
	elseif Key == "p" then
	Happy_Ending()
	elseif Key == "g" then
	end
end)

Mouse.KeyUp:connect(function(Key)
end)



coroutine.resume(coroutine.create(function()
while true do
	swait()
	if Delay == false then
	Randomize = math.random(0, 120)
	if Randomize == 1 then
	FT.Parent = Torso
	RA.Parent = RightArm
	LA.Parent = LeftArm
	RL.Parent = RightLeg
	LL.Parent = LeftLeg
	for i = 0, 1, math.random(1, 10)/20 do
	swait()
	spook2.Octave = math.random(1, 20) / 10
	spook.PlaybackSpeed = math.random(1, 20) / 12
	D1.TileSize = UDim2.new(math.random(1, 15) / 20, 0, math.random(1, 15) / 20, 0)
	D2.TileSize = UDim2.new(math.random(1, 15) / 20, 0, math.random(1, 15) / 20, 0)
	D3.TileSize = UDim2.new(math.random(1, 15) / 20, 0, math.random(1, 15) / 20, 0)
	D3.Rotation = math.random(-360, 360)
	for _, v in pairs(Character:children()) do
		if v:IsA("Part") and v:findFirstChild("Mesh") ~= nil then
			v:findFirstChild("Mesh").Offset = Vector3.new(math.random(-5, 5)/10, math.random(-5, 5)/10, math.random(-5, 5)/10)
		elseif v:IsA("Accessory") and v.Handle:findFirstChild("Mesh") ~= nil then
			v.Handle:findFirstChild("Mesh").Offset = Vector3.new(math.random(-5, 5)/10, math.random(-5, 5)/10, math.random(-5, 5)/10)
		end
		for _, v in pairs(m:children()) do
			if v:IsA("Part") and v:findFirstChild("Mesh") ~= nil and (v.Name == "Shush" or v.Name == "Shush2" or v.Name == "Head") then
				v:findFirstChild("Mesh").Offset = Vector3.new(math.random(-5, 5)/10, math.random(-5, 5)/10, math.random(-5, 5)/10)
			end		
		end
	end	
	end
	spook2.Octave = 1
	spook.PlaybackSpeed = .3
	D1.TileSize = UDim2.new(1, 0, 1, 0)
	D2.TileSize = UDim2.new(1, 0, 1, 0)
	D3.TileSize = UDim2.new(1, 0, 1, 0)
	D3.Rotation = 45
	for _, v in pairs(Character:children()) do
		if v:IsA("Part") and v:findFirstChild("Mesh") ~= nil then
			v:findFirstChild("Mesh").Offset = Vector3.new(0, 0, 0)
		elseif v:IsA("Accessory") and v.Handle:findFirstChild("Mesh") ~= nil then
			v.Handle:findFirstChild("Mesh").Offset = Vector3.new(0, 0, 0)
		end
		for _, v in pairs(m:children()) do
			if v:IsA("Part") and v:findFirstChild("Mesh") ~= nil and (v.Name == "Shush" or v.Name == "Head") then
				v:findFirstChild("Mesh").Offset = Vector3.new(0, 0, 0)
			end		
		end
	end	
	FT.Parent = nil
	RA.Parent = nil
	LA.Parent = nil
	RL.Parent = nil
	LL.Parent = nil
	end
	end
	end
end))

while true do
	swait()
	D1.Rotation = D1.Rotation - 2
	D2.Rotation = D2.Rotation + 4
	Animie = math.random(1, 5) / 10
	if Deed == false then
	Torso.Neck.C0 = clerp(Torso.Neck.C0, Torso.Neck.C0 * CFrame.Angles(math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20))), .5)
	end
	if Head:findFirstChild("face") ~= nil then
		Head:findFirstChild("face"):Destroy()
	end
	if spook.Parent == nil then
		spook = Create("Sound"){
		Parent = Character,
		SoundId = "rbxassetid://504871254",
		Volume = 1.3,
		PlaybackSpeed = .3,
		Looped = true
		}
		spook2 = Create("PitchShiftSoundEffect"){
		Parent = spook,
		Octave = 1
		}
		spook:Play()
	end
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Accessory") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
	if Victim ~= nil and Victim:FindFirstChildOfClass("Humanoid") == nil then
	Victim = nil
	Billb.Adornee = nil
	Billb.Enabled = false
	end
	Humanoid.MaxHealth = 11111110896723058319876184696208490496
	Humanoid.Health = 11111110896723058319876184696208490496
	Humanoid.Name = Re[math.random(1, 93)]..Re[math.random(1, 93)]..Re[math.random(1, 93)]
	TorsoVelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	Velocity = RootPart.Velocity.y
	Sine = Sine + Change
	local hit, pos = RayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if Attack == false then
				Change = 1
			PlayAnimationFromTable({
        		 CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(0, 1.48630166, 0.0828605741, 1, 0, 0, 0, 0.986636221, -0.162939042, 0, 0.162939042, 0.986636221) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        		 CFrame.new(1.54998243, 0.0460062027, 0, 0.96711725, -0.254331052, 0, 0.254331052, 0.96711725, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(-1.60585427, 0.120478928, -0, 0.945319474, 0.326146126, 0, -0.326146156, 0.945319474, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(0.5, -1.98453414, 0.0931893736, 1, 0, 0, 0, 0.98649478, 0.163792953, 0, -0.163792953, 0.98649478) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(-0.5, -1.98326659, 0.121506959, 1, 0, 0, 0, 0.99064213, 0.13648501, 0, -0.13648501, 0.99064213) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, Animie, false)
			HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.01043892, -1.09500229, -0.00497436523, 0, 1.00000012, 0, 0, 0, -1.00000012, -1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .3)
 			Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.010425603, -1.09500909, -0.00497436523, 0, 1.00000024, 2.98023224e-08, 0, -2.98023224e-08, -1.00000024, -1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if Attack == false then
				Change = 1
			PlayAnimationFromTable({
        		 CFrame.new(0, -0.00281290524, -0.110870562, 1, 0, 0, 0, 0.983663857, 0.180014983, 0, -0.180014983, 0.983663857) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(0, 1.43970644, -0.17384778, 1, 0, 0, 0, 0.963594437, 0.267368227, 0, -0.267368197, 0.963594437) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                 CFrame.new(1.87205124, 0.239569426, 1.33605636e-05, 0.610077322, -0.792341948, -3.13323631e-06, 0.792341888, 0.610077322, 6.70552254e-07, 1.38580799e-06, -2.90572643e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(-1.88090944, 0.174126849, -0.0411957316, 0.636063814, 0.770755291, -0.0368679203, -0.771619737, 0.635008395, -0.0369789898, -0.00509031117, 0.0519690178, 0.998635769) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(0.611441433, -1.93454111, -0.205220982, 0.996495903, -0.0836423263, 9.74191153e-07, 0.0828808397, 0.987422228, -0.134641305, 0.0112607507, 0.134169608, 0.990894377) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(-0.570478976, -1.94810426, -0.143567681, 0.996611655, 0.0822507069, -1.19118874e-06, -0.0817528069, 0.99057734, -0.109877877, -0.00903635286, 0.109505668, 0.993945122) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, Animie, false)
			HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.01043892, -1.09500229, -0.00497436523, 0, 1.00000012, 0, 0, 0, -1.00000012, -1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .3)
 			Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.010425603, -1.09500909, -0.00497436523, 0, 1.00000024, 2.98023224e-08, 0, -2.98023224e-08, -1.00000024, -1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .3)
			end
		elseif TorsoVelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if Attack == false then
				Change = 1
			PlayAnimationFromTable({
      	    	CFrame.new(0, 0.00304500386 - .1 * math.cos(Sine / 45), -0.25276947, 1, 0, 0, 0, 0.966956854, 0.254939973, 0, -0.254939973, 0.966956854) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
      	    	CFrame.new(0, 1.48396528, -0.184687465, 1, 0, 0, 0, 0.938511074, 0.345249116, 0, -0.345249116, 0.938511074) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
      	 		CFrame.new(1.44362104, 0.0105986297, -0.173658058, 0.99780637, -0.0662000254, 0, 0.0640125647, 0.964835703, -0.254939973, 0.0168770328, 0.254380733, 0.966956854) * CFrame.new(0, 0 - .02 * math.cos(Sine / 45) + -math.sin(Sine / 45) / 15, 0) * CFrame.Angles(0, 0, math.rad(0 + 4 * math.cos(Sine / 45) + -math.sin(Sine / 45) / 15)), 
      			CFrame.new(-1.48667848, 0.0416535959, -0.221442789, 0.996128142, 0.0879139975, 0, -0.0850090459, 0.963212907, -0.254939973, -0.0224127937, 0.253952891, 0.966956854) * CFrame.new(0, 0 - .02 * math.cos(Sine / 45) + -math.sin(Sine / 45) / 15, 0) * CFrame.Angles(0, 0, math.rad(0 - 4 * math.cos(Sine / 45) + -math.sin(Sine / 45) / 15)), 
     	    	CFrame.new(0.537495971, -1.99924409, -0.2656973, 0.998377502, -0.0569419749, 0, 0.0550604314, 0.96538794, -0.254939973, 0.0145167857, 0.254526347, 0.966956854) * CFrame.new(0, 0 + .1 * math.cos(Sine / 45), 0) * CFrame.Angles(0, 0, 0), 
     	    	CFrame.new(-0.544956386, -1.99696815, -0.265097141, 0.995043218, 0.0994440243, 0, -0.0961580798, 0.962163866, -0.254939973, -0.0253522564, 0.253676295, 0.966956854) * CFrame.new(0, 0 + .1 * math.cos(Sine / 45), 0) * CFrame.Angles(0, 0, 0), 
			}, Animie, false)
 			HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104389191, -1.04402542, -0.00497436523, 0, 1, 0, 0, 0, -1, -1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), Animie)
  			Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104370201, -1.05964959, -0.00497436523, 0, 1.00000012, 7.4505806e-09, 0, -7.4505806e-09, -1.00000012, -1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), Animie)
			end
		elseif TorsoVelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if Attack == false then
				Change = 3
			PlayAnimationFromTable({
     	    	CFrame.new(0, 0.0217996836, -0.15443182, 1, 0, 0, 0, 0.982294619, 0.187342957, 0, -0.187342942, 0.982294619) * CFrame.new(0, -.1 - .15 * math.cos(Sine / 6), 0) * CFrame.Angles(0, math.rad(0 - 15 * math.sin(Sine / 12) / 2), 0),  
     	    	CFrame.new(0, 1.50440693, -0.177497774, 1, 0, 0, 0, 0.98494184, 0.172886148, 0, -0.172886133, 0.9849419) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
     	    	CFrame.new(1.51832783, -0.0136715584, -0.18358618, 0.99780637, -0.0662000254, 0, 0.0650279298, 0.980139852, -0.187342942, 0.0124021089, 0.186931998, 0.982294619) * CFrame.new(0, .1 - .15 * math.sin(Sine / 12), 0 - .5 * math.cos(Sine / 12)) * CFrame.Angles(math.rad(0 + 40 * math.cos(Sine / 12) + -math.sin(Sine / 12)), 0, 0), 
     	    	CFrame.new(-1.51726496, 0.00152201951, -0.180036053, 0.996128142, 0.0879139975, 0, -0.086357452, 0.978491306, -0.187342942, -0.0164700691, 0.186617598, 0.982294619) * CFrame.new(0, .1 + .15 * math.sin(Sine / 12), 0 + .5 * math.cos(Sine / 12)) * CFrame.Angles(math.rad(0 - 40 * math.cos(Sine / 12) + -math.sin(Sine / 12)), 0, 0), 
     	    	CFrame.new(0.537497759, -2.01284766, -0.226675838, 0.998377502, -0.0569419749, 0, 0.0559337959, 0.98070085, -0.187342942, 0.010667678, 0.187038988, 0.982294619) * CFrame.new(0, .1 + .15 * math.sin(Sine / 12), 0 + 1 * math.cos(Sine / 12)) * CFrame.Angles(math.rad(0 - 60 * math.cos(Sine / 12) + -math.sin(Sine / 12)), 0, 0), 
     	    	CFrame.new(-0.544956088, -2.01053548, -0.226234794, 0.995043218, 0.0994440243, 0, -0.0976833329, 0.977425575, -0.187342942, -0.0186301377, 0.186414331, 0.982294619) * CFrame.new(0, .1 - .15 * math.sin(Sine / 12), 0 - 1 * math.cos(Sine / 12)) * CFrame.Angles(math.rad(0 + 60 * math.cos(Sine / 12) + -math.sin(Sine / 12)), 0, 0), 
			}, Animie, false)
 			HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104389191, -1.04402542, -0.00497436523, 0, 1, 0, 0, 0, -1, -1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .3)
  			Handle2Weld.C0 = clerp(HandleWeld.C0, CFrame.new(0.0104370201, -1.05964959, -0.00497436523, 0, 1.00000012, 7.4505806e-09, 0, -7.4505806e-09, -1.00000012, -1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .3)
			end
		end
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					if Thing[2] == "Shoot" then
					Look = Thing[1]
					local hit, pos = RayCast(Thing[4], Look, 20, Character)
					local mag = (Thing[4] - pos).magnitude 
					Effects.Cylinder.Create(BrickColor.new("New Yeller"),CFrame.new((Thing[4] + pos)/2, pos)*CFrame.Angles(1.57,0,0),.5,mag * 5,.5,0,0,0,0.14)
					Thing[4]=Thing[4] + (Look * 20)
					Thing[3]=Thing[3] - 1
					if hit ~= nil and hit.Parent:findFirstChildOfClass("Humanoid") ~= nil then
					local ref = CFuncs.Part.Create(m,Enum.Material.Neon,0,1,"New Yeller","ref",Vector3.new(0.05,0.05,0.05))
					ref.Anchored = true
					ref.CFrame = CFrame.new(pos)
					CFuncs.Sound.Create("1166474639", ref, 1.2, 1.1) 
					Damage(hit, hit, 0, 0, 0,  "Blood", hit, 0, "Top", "142858160", math.random(2, 5)/1.4)
					game:GetService("Debris"):AddItem(ref, 1)
                    elseif hit ~= nil and hit.Parent:findFirstChildOfClass("Humanoid") == nil then
                    Thing[3] = 0
					end
					--MagnitudeDamage(ref, 2, 8, 9, 0, .2, "Normal")
					end
					if Thing[3] <= 0 then
					table.remove(Effects, e)
					end
					end
					if Thing[2] ~= "Shoot" then
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Ice" then
							if Thing[6] <= Thing[5] then
								Thing[6] = Thing[6] + .05
								Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, .4, 0)
							else
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							end
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block3" then
							Thing[1].CFrame = Thing[8].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block4" then
							Thing[1].CFrame = Thing[8].CFrame * CFrame.new(0, -Thing[7].Scale.Y, 0) * CFrame.fromEulerAnglesXYZ(3.14, 0, 0)
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2Fire" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							if Thing[1].Transparency >= .3 then
								Thing[1].BrickColor = BrickColor.new("Bright red")
							else
								Thing[1].BrickColor = BrickColor.new("Bright yellow")
							end
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, -.5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[10]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[1].CFrame = Thing[1].CFrame * Thing[11] * CFrame.new(0, 0, .2)
							Thing[1].Rotation = Vector3.new(0, 0, 0)
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end

--wat
