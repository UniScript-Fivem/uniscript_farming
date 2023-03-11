Config = {}

Config.raccolta = {
    ['wood'] = {
        coords = {
            vector3(-557.94, 5234.29, 71.80),
            vector3(-558.17, 5224.83, 76.29),
            vector3(-545.15, 5220.77, 77.63),
            vector3(-538.11, 5227.52, 77.83),
            vector3(-598.84, 5239.33, 71.41),
            vector3(-602.90, 5243.47, 71.30),
            vector3(-643.46, 5241.74, 75.19),
            vector3(-645.01, 5269.06, 73.59),
            vector3(-633.90, 5274.45, 69.43),
            vector3(-628.75, 5284.66, 64.54),
            vector3(-655.82, 5296.56, 68.87),
            vector3(-659.71, 5292.83, 70.31),
            vector3(-511.07, 5389.29, 72.50),
            vector3(-505.14, 5391.16, 75.43),
            vector3(-500.95, 5400.56, 75.04),
            vector3(-492.50, 5394.72, 77.30),
            vector3(-558.30, 5418.35, 63.06),
            vector3(-562.32, 5419.02, 62.00),
        },
        itemRequest = 'WEAPON_HATCHET',
        dict = "melee@hatchet@streamed_core",
        lib = "plyr_front_takedown",
        prop = "prop_w_me_hatchet",
        rotation = {x=0.05, y=0.02, z=0.02, rx=-44.04, ry=-9.78, rz=-1.43},
        qtymax = 5,
        qtymin = 0,
        numAnim = 5,
        itemForAnimation = true
    },
    ['mineral'] = {
        coords = {
            vector3(3004.68, 2775.56, 43.02),
            vector3(2989.35, 2808.58, 44.88),
            vector3(2910.06, 2782.95, 45.97),
            vector3(2915.25, 2805.04, 44.15),
        },
        dict = "melee@large_wpn@streamed_core",
        lib = "ground_attack_on_spot",
        prop = "prop_tool_pickaxe",
        rotation = {x=0.03, y=-0.09, z=-0.03, rx=-55.23, ry=0.0, rz=0.0},
        randomItem = true,
        item = {'iron', 'copper', 'gold'},
        qtymax = 5,
        qtymin = 1,
        numAnim = 5,
        itemForAnimation = false
    },
    
    ['marijuana'] = {
        coords = {
            vector3(2222.530029296875, 5577.08984375, 53.84000015258789),
            vector3(2216.72998046875, 5577.47021484375, 53.84999847412109),
            vector3(2227.47998046875, 5577.240234375, 53.84000015258789),
        },
        dict = "pickup_object",
        lib = "pickup_low",
        qtymax = 1,
        qtymin = 1,
        numAnim = 5,
        itemForAnimation = true
    }
}


Text = {
    pickup = 'Pick up',
    noItem = 'You don\'t have the right item to start piking up',
    actionFinish = 'You must finish the last action'
}
