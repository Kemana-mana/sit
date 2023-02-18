cfg = {

    deformationMultiplier = -1,					-- How much should the vehicle visually deform from a collision. Range 0.0 to 10.0 Where 0.0 is no deformation and 10.0 is 10x deformation. -1 = Don't touch
    deformationExponent = 1.0,					-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
    collisionDamageExponent = 1.0,				-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.

    damageFactorEngine = 2.5,					-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
    damageFactorBody = 3.0,						-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
    damageFactorPetrolTank = 20.0,				-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 64
    engineDamageExponent = 1.0,					-- How much should the handling file engine damage setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
    weaponsDamageMultiplier = 0.124,			-- How much damage should the vehicle get from weapons fire. Range 0.0 to 10.0, where 0.0 is no damage and 10.0 is 10x damage. -1 = don't touch
    degradingHealthSpeedFactor = 5.4,			-- Speed of slowly degrading health, but not failure. Value of 10 means that it will take about 0.25 second per health point, so degradation from 800 to 305 will take about 2 minutes of clean driving. Higher values means faster degradation
    cascadingFailureSpeedFactor = 1.5,			-- Sane values are 1 to 100. When vehicle health drops below a certain point, cascading failure sets in, and the health drops rapidly until the vehicle dies. Higher values means faster failure. A good starting point is 8

    degradingFailureThreshold = 677.0,			-- Below this value, slow health degradation will set in
    cascadingFailureThreshold = 310.0,			-- Below this value, health cascading failure will set in
    engineSafeGuard = 100.0,					-- Final failure value. Set it too high, and the vehicle won't smoke when disabled. Set too low, and the car will catch fire from a single bullet to the engine. At health 100 a typical car can take 3-4 bullets to the engine before catching fire.

    torqueMultiplierEnabled = true,				-- Decrease engine torge as engine gets more and more damaged

    limpMode = false,							-- If true, the engine never fails completely, so you will always be able to get to a mechanic unless you flip your vehicle and preventVehicleFlip is set to true
    limpModeMultiplier = 0.20,					-- The torque multiplier to use when vehicle is limping. Sane values are 0.05 to 0.25

    preventVehicleFlip = true,					-- If true, you can't turn over an upside down vehicle

    sundayDriver = true,						-- If true, the accelerator response is scaled to enable easy slow driving. Will not prevent full throttle. Does not work with binary accelerators like a keyboard. Set to false to disable. The included stop-without-reversing and brake-light-hold feature does also work for keyboards.
    sundayDriverAcceleratorCurve = 7.5,			-- The response curve to apply to the accelerator. Range 0.0 to 10.0. Higher values enables easier slow driving, meaning more pressure on the throttle is required to accelerate forward. Does nothing for keyboard drivers
    sundayDriverBrakeCurve = 5.0,				-- The response curve to apply to the Brake. Range 0.0 to 10.0. Higher values enables easier braking, meaning more pressure on the throttle is required to brake hard. Does nothing for keyboard drivers

    displayBlips = false,						-- Show blips for mechanics locations
    randomTireBurstInterval = 0,
    chargeForRepairs = true,					-- if true fixing vehicle cost money
    price = 100.0,									-- you may edit this to your liking. if "chargeForRepairs = false" ignore this one
    DamageMultiplier = 3.0,						-- you may edit this to your liking. if "chargeForRepairs = false" ignore this one

    classDamageMultiplier = {
        [0] = 	0.75,		--	0: Compacts
                0.75,		--	1: Sedans
                0.65,		--	2: SUVs
                0.75,		--	3: Coupes
                0.75,		--	4: Muscle
                0.75,		--	5: Sports Classics
                0.75,		--	6: Sports
                0.75,		--	7: Super
                0.20,		--	8: Motorcycles
                0.60,		--	9: Off-road
                0.25,		--	10: Industrial
                0.35,		--	11: Utility
                0.75,		--	12: Vans
                1.0,		--	13: Cycles
                0.4,		--	14: Boats
                0.7,		--	15: Helicopters
                0.7,		--	16: Planes
                0.75,		--	17: Service
                0.65,		--	18: Emergency
                0.67,		--	19: Military
                0.43,		--	20: Commercial
                1.0			--	21: Trains
    }
}

-- End of Main Configuration

-- Configure Repair system

-- id=446 for wrench icon, id=72 for spraycan icon

repairCfg = {
    mechanics = {
        --{name="Mechanic", id=446, r=25.0, x=-337.0,  y=-135.0,  z=39.0},	-- LSC Burton
        --{name="Mechanic", id=446, r=25.0, x=-1155.0, y=-2007.0, z=13.0},	-- LSC by airport
        --{name="Mechanic", id=446, r=25.0, x=734.0,   y=-1085.0, z=22.0},	-- LSC La Mesa
        --{name="Mechanic", id=446, r=25.0, x=1177.0,  y=2640.0,  z=37.0},	-- LSC Harmony
        --{name="Mechanic", id=446, r=25.0, x=108.0,   y=6624.0,  z=31.0},	-- LSC Paleto Bay
        --{name="Mechanic", id=446, r=18.0, x=538.0,   y=-183.0,  z=54.0},	-- Mechanic Hawic
        --{name="Mechanic", id=446, r=15.0, x=1774.0,  y=3333.0,  z=41.0},	-- Mechanic Sandy Shores Airfield
        --{name="Mechanic", id=446, r=15.0, x=1143.0,  y=-776.0,  z=57.0},	-- Mechanic Mirror Park
        --{name="Mechanic", id=446, r=30.0, x=2508.0,  y=4103.0,  z=38.0},	-- Mechanic East Joshua Rd.
        --{name="Mechanic", id=446, r=16.0, x=2006.0,  y=3792.0,  z=32.0},	-- Mechanic Sandy Shores gas station
        --{name="Mechanic", id=446, r=25.0, x=484.0,   y=-1316.0, z=29.0},	-- Hayes Auto, Little Bighorn Ave.
        --{name="Mechanic", id=446, r=33.0, x=-1419.0, y=-450.0,  z=36.0},	-- Hayes Auto Body Shop, Del Perro
--{name="Mechanic", id=446, r=33.0, x=268.0,   y=-1810.0, z=27.0},	-- Hayes Auto Body Shop, Davis
    --	{name="Mechanic", id=446, r=24.0, x=288.0,   y=-1730.0, z=29.0},	-- Hayes Auto, Rancho (Disabled, looks like a warehouse for the Davis branch)
        --{name="Mechanic", id=446, r=27.0, x=1915.0,  y=3729.0,  z=32.0},	-- Otto's Auto Parts, Sandy Shores
        --{name="Mechanic", id=446, r=45.0, x=-29.0,   y=-1665.0, z=29.0},	-- Mosley Auto Service, Strawberry
        --{name="Mechanic", id=446, r=44.0, x=-212.0,  y=-1378.0, z=31.0},	-- Glass Heroes, Strawberry
        --{name="Mechanic", id=446, r=33.0, x=258.0,   y=2594.0,  z=44.0},	-- Mechanic Harmony
        --{name="Mechanic", id=446, r=18.0, x=-32.0,   y=-1090.0, z=26.0},	-- Simeons
        --{name="Mechanic", id=446, r=25.0, x=-211.0,  y=-1325.0, z=31.0},	-- Bennys
        --{name="Mechanic", id=446, r=25.0, x=903.0,   y=3563.0,  z=34.0},	-- Auto Repair, Grand Senora Desert
        {name="Mechanic", id=446, r=25.0, x=0.0,   y=0.0,  z=0.0}		-- Auto Shop, Grand Senora Desert
    },

    fixMessages = {
        "Looks fixed... must be nice!",
        "Duct tape application complete...",
        "Zip tie application complete...",
        "I heard kicking your car fixes it...",
        "Super glue fixed everything..."
    },
    fixMessageCount = 5,

    noFixMessages = {
        "You can't fix mistakes you have not made"
    },
    noFixMessageCount = 1
}

RepairEveryoneWhitelisted = true
RepairWhitelist =
{
    "steam:110000140cddb6e",
    --"steam:000000000000000",
    "ip:192.168.0.1"			-- not sure if ip whitelist works?
}--]]