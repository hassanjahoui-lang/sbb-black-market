Config = {}

-- Modello del ped e coordinate
Config.PedModel = "g_m_m_chigoon_01" 
Config.Location = vector4(707.31, -966.99, 29.41, 211.5) -- Cambia con le tue coordinate

-- Valuta ("cash", "bank", o "crypto")
Config.Currency = "cash"

-- Categorie e Oggetti
Config.Categories = {
    ["armi_mk2"] = {
        label = "Armi MK2",
        icon = "fas fa-gun",
        items = {
            [1] = { name = "weapon_pistol_mk2", label = "Pistola Mk II", price = 15000, amount = 1 },
            [2] = { name = "weapon_snspistol_mk2", label = "Pistola SNS Mk II", price = 12000, amount = 1 },
            [3] = { name = "weapon_revolver_mk2", label = "Revolver Pesante Mk II", price = 25000, amount = 1 },
            [4] = { name = "weapon_smg_mk2", label = "SMG Mk II", price = 35000, amount = 1 },
            [5] = { name = "weapon_pumpshotgun_mk2", label = "Fucile a Pompa Mk II", price = 40000, amount = 1 },
            [6] = { name = "weapon_assaultrifle_mk2", label = "Fucile d'Assalto Mk II", price = 65000, amount = 1 },
            [7] = { name = "weapon_carbinerifle_mk2", label = "Carabina Mk II", price = 70000, amount = 1 },
            [8] = { name = "weapon_specialcarbine_mk2", label = "Carabina Speciale Mk II", price = 75000, amount = 1 },
            [9] = { name = "weapon_bullpuprifle_mk2", label = "Fucile Bullpup Mk II", price = 72000, amount = 1 },
            [10] = { name = "weapon_combatmg_mk2", label = "Mitragliatrice da Combattimento Mk II", price = 100000, amount = 1 },
            [11] = { name = "weapon_marksmanrifle_mk2", label = "Fucile da Tiratore Mk II", price = 90000, amount = 1 },
            [12] = { name = "weapon_heavysniper_mk2", label = "Cecchino Pesante Mk II", price = 150000, amount = 1 },
        }
    },
    ["munizioni"] = {
        label = "Munizioni",
        icon = "fas fa-box-open",
        items = {
            [1] = { name = "pistol_ammo", label = "Scatola Munizioni Pistola", price = 300, amount = 1 },
            [2] = { name = "smg_ammo", label = "Scatola Munizioni SMG", price = 450, amount = 1 },
            [3] = { name = "shotgun_ammo", label = "Scatola Cartucce Pompa", price = 400, amount = 1 },
            [4] = { name = "rifle_ammo", label = "Scatola Munizioni Fucile d'Assalto", price = 600, amount = 1 },
            [5] = { name = "mg_ammo", label = "Scatola Munizioni Mitragliatrice", price = 800, amount = 1 },
            [6] = { name = "snp_ammo", label = "Scatola Proiettili Cecchino", price = 1200, amount = 1 },
        }
    },
    ["illegali"] = {
        label = "Attrezzatura Illegale",
        icon = "fas fa-skull-crossbones",
        items = {
            [1] = { name = "thermite", label = "Termite", price = 8000, amount = 1 },
            [2] = { name = "c4_bomb", label = "Esplosivo C4", price = 15000, amount = 1 },
            [3] = { name = "trojan_usb", label = "USB Trojan (Hacking)", price = 5000, amount = 1 },
            [4] = { name = "advancedlockpick", label = "Pachetto Da 10 Di Grimaldello Avanzato", price = 1500, amount = 10 },
            [5] = { name = "armor", label = "Giubbotto Antiproiettile", price = 2000, amount = 1 },
            [6] = { name = "cokebaggy", label = "Bustina di Cocaina", price = 500, amount = 1 },
            [7] = { name = "weed_brick", label = "Panetto di Erba", price = 2500, amount = 1 },
            [8] = { name = "handcuffs", label = "Manette non tracciabili", price = 3000, amount = 1 },
        }
    }
}
