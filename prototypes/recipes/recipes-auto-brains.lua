------------------ARTHURIANS------------------

py.autorecipes {
    name = "rendering-brains-arthurians",
    category = "slaughterhouse",
    subgroup = "py-alienlife-arthurian",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "caged-arthurian", amount = 1},
            },
            results =
            {
                {name = "bones",       probability = 0.3, amount_min = 1, amount_max = 2},
                {name = "meat",        probability = 0.4, amount_min = 1, amount_max = 3},
                {name = "skin",        probability = 0.4, amount_min = 1, amount_max = 4},
                {name = "mukmoux-fat", probability = 0.2, amount_min = 1, amount_max = 1},
                {name = "guts",        probability = 0.4, amount_min = 1, amount_max = 2},
                {name = "blood",       amount = 20},
                {name = "cage",        amount = 1},
                {name = "brain",       probability = 0.6, amount_min = 1, amount_max = 3},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-arthuriansb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-arthurian.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='caged-arthurian', amount=1},
            },
            results =
            {
                {name = "bones",       remove_item = true},
                {name = "meat",        remove_item = true},
                {name = "skin",        remove_item = true},
                {name = "mukmoux-fat", remove_item = true},
                {name = "guts",        remove_item = true},
                {name = "blood",       remove_item = true},
                {name = "brain",       remove_item = true},
                {name = "brain",       add_amount = 4},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-arthurian-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------AUOGS------------------

py.autorecipes {
    name = "rendering-brains-auog",
    category = "slaughterhouse",
    subgroup = "py-alienlife-auog",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "caged-auog", amount = 1},
            },
            results =
            {
                {name = "bones",       probability = 0.3, amount_min = 1, amount_max = 4},
                {name = "meat",        probability = 0.4, amount_min = 2, amount_max = 5},
                {name = "skin",        probability = 0.3, amount_min = 1, amount_max = 2},
                {name = "mukmoux-fat", probability = 0.3, amount_min = 1, amount_max = 1},
                {name = "guts",        probability = 0.4, amount_min = 1, amount_max = 1},
                {name = "blood",       amount = 50},
                {name = "cage",        amount = 1},
                {name = "brain",       probability = 0.4, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-auogsb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-auog.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='caged-auog', amount=1},
            },
            results =
            {
                {name = "bones",       remove_item = true},
                {name = "meat",        remove_item = true},
                {name = "skin",        remove_item = true},
                {name = "mukmoux-fat", remove_item = true},
                {name = "guts",        remove_item = true},
                {name = "blood",       remove_item = true},
                {name = "brain",       remove_item = true},
                {name = "brain",       add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-auog-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------COTTONGUT------------------

py.autorecipes {
    name = "rendering-brains-cottongut",
    category = "slaughterhouse",
    subgroup = "py-alienlife-cottongut",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "cottongut", amount = 6},
            },
            results =
            {
                {name = "bones",       probability = 0.4, amount_min = 1, amount_max = 5},
                {name = "meat",        probability = 0.3, amount_min = 1, amount_max = 4},
                {name = "skin",        probability = 0.4, amount_min = 1, amount_max = 4},
                {name = "guts",        probability = 0.5, amount_min = 1, amount_max = 5},
                {name = "mukmoux-fat", probability = 0.3, amount_min = 1, amount_max = 4},
                {name = "blood",       amount = 40},
                {name = "brain",       probability = 0.3, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-cottongutb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-cottongut.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='cagedcottongut', amount=1},
            },
            results =
            {
                {name = "bones",       remove_item = true},
                {name = "meat",        remove_item = true},
                {name = "skin",        remove_item = true},
                {name = "mukmoux-fat", remove_item = true},
                {name = "guts",        remove_item = true},
                {name = "blood",       remove_item = true},
                {name = "brain",       remove_item = true},
                {name = "brain",       add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-cottongut-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------DINGRITS------------------

py.autorecipes {
    name = "rendering-brains-dingrits",
    category = "slaughterhouse",
    subgroup = "py-alienlife-dingrits",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "caged-dingrits", amount = 1},
            },
            results =
            {
                {name = "bones",         probability = 0.3, amount_min = 1, amount_max = 2},
                {name = "meat",          probability = 0.3, amount_min = 1, amount_max = 3},
                {name = "guts",          probability = 0.3, amount_min = 1, amount_max = 3},
                {name = "pelt",          probability = 0.1, amount_min = 1, amount_max = 1},
                {name = "dingrit-spike", probability = 0.1, amount_min = 1, amount_max = 1},
                {name = "blood",         amount = 20},
                {name = "cage",          amount = 1},
                {name = "brain",         probability = 0.3, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-dingritsb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-dingrits.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='caged-dingrits', amount=1},
            },
            results =
            {
                {name = "bones",         remove_item = true},
                {name = "meat",          remove_item = true},
                {name = "guts",          remove_item = true},
                {name = "pelt",          remove_item = true},
                {name = "dingrit-spike", remove_item = true},
                {name = "blood",         remove_item = true},
                {name = "brain",         remove_item = true},
                {name = "brain",         add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-dingrits-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------KMAUTS------------------

py.autorecipes {
    name = "rendering-brains-kmauts",
    category = "slaughterhouse",
    subgroup = "py-alienlife-kmauts",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "caged-kmauts", amount = 1},
            },
            results =
            {
                {name = "meat",            probability = 0.3, amount_min = 1, amount_max = 2},
                {name = "guts",            probability = 0.3, amount_min = 1, amount_max = 2},
                {name = "mukmoux-fat",     probability = 0.2, amount_min = 1, amount_max = 2},
                {name = "tendon",          probability = 0.3, amount_min = 1, amount_max = 1},
                {name = "arthropod-blood", amount = 10},
                {name = "cage",            amount = 1},
                {name = "brain",           probability = 0.3, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-kmautsb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-kmauts.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='caged-kmauts', amount=1},
            },
            results =
            {
                {name = "meat",            remove_item = true},
                {name = "guts",            remove_item = true},
                {name = "mukmoux-fat",     remove_item = true},
                {name = "tendon",          remove_item = true},
                {name = "arthropod-blood", remove_item = true},
                {name = "brain",           remove_item = true},
                {name = "brain",           add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-kmauts-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------KORLEX------------------

py.autorecipes {
    name = "rendering-brains-korlex",
    category = "slaughterhouse",
    subgroup = "py-alienlife-korlex",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "caged-korlex", amount = 1},
            },
            results =
            {
                {name = "bones",       probability = 0.3, amount_min = 1, amount_max = 2},
                {name = "meat",        probability = 0.4, amount_min = 1, amount_max = 3},
                {name = "skin",        probability = 0.4, amount_min = 1, amount_max = 4},
                {name = "mukmoux-fat", probability = 0.2, amount_min = 1, amount_max = 1},
                {name = "guts",        probability = 0.4, amount_min = 1, amount_max = 2},
                {name = "blood",       amount = 20},
                {name = "cage",        amount = 1},
                {name = "brain",       probability = 0.6, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-Korlexb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-korlex.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='caged-korlex', amount=1},
            },
            results =
            {
                {name = "bones",       remove_item = true},
                {name = "meat",        remove_item = true},
                {name = "skin",        remove_item = true},
                {name = "mukmoux-fat", remove_item = true},
                {name = "guts",        remove_item = true},
                {name = "blood",       remove_item = true},
                {name = "brain",       remove_item = true},
                {name = "brain",       add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-Korlex-brainb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------MUKMOUX------------------

py.autorecipes {
    name = "rendering-brain-mukmoux",
    category = "slaughterhouse",
    subgroup = "py-alienlife-mukmoux",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "caged-mukmoux", amount = 1},
            },
            results =
            {
                {name = "bones",       probability = 0.4, amount_min = 1, amount_max = 2},
                {name = "meat",        probability = 0.4, amount_min = 1, amount_max = 4},
                {name = "skin",        probability = 0.4, amount_min = 1, amount_max = 4},
                {name = "mukmoux-fat", probability = 0.4, amount_min = 1, amount_max = 3},
                {name = "guts",        probability = 0.4, amount_min = 1, amount_max = 4},
                {name = "blood",       amount = 50},
                {name = "cage",        amount = 1},
                {name = "brain",       probability = 0.4, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-Mukmouxsb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-mukmoux.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='caged-mukmoux', amount=1},
            },
            results =
            {
                {name = "bones",       remove_item = true},
                {name = "meat",        remove_item = true},
                {name = "skin",        remove_item = true},
                {name = "mukmoux-fat", remove_item = true},
                {name = "guts",        remove_item = true},
                {name = "blood",       remove_item = true},
                {name = "brain",       remove_item = true},
                {name = "brain",       add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-Mukmoux-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------PHADAI------------------

py.autorecipes {
    name = "rendering-phadai-brain",
    category = "slaughterhouse",
    subgroup = "py-alienlife-phadai",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "caged-phadai", amount = 1},
            },
            results =
            {
                {name = "bones",       probability = 0.3, amount_min = 1, amount_max = 3},
                {name = "meat",        probability = 0.3, amount_min = 1, amount_max = 1},
                {name = "guts",        probability = 0.3, amount_min = 1, amount_max = 3},
                {name = "mukmoux-fat", probability = 0.1, amount_min = 1, amount_max = 1},
                {name = "skin",        probability = 0.1, amount_min = 1, amount_max = 1},
                {name = "carapace",    probability = 0.3, amount_min = 1, amount_max = 1},
                {name = "blood",       amount = 30},
                {name = "cage",        amount = 1},
                {name = "brain",       probability = 0.5, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-phadaisb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-phadai.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='caged-phadai', amount=1},
            },
            results =
            {
                {name = "bones",       remove_item = true},
                {name = "skin",        remove_item = true},
                {name = "mukmoux-fat", remove_item = true},
                {name = "meat",        remove_item = true},
                {name = "guts",        remove_item = true},
                {name = "pelt",        remove_item = true},
                {name = "carapace",    remove_item = true},
                {name = "blood",       remove_item = true},
                {name = "brain",       remove_item = true},
                {name = "brain",       add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-phadai-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------PHAGNOT------------------

py.autorecipes {
    name = "rendering-brains-phagnot",
    category = "slaughterhouse",
    subgroup = "py-alienlife-phagnot",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "caged-phagnot", amount = 1},
            },
            results =
            {
                {name = "bones",       probability = 0.5, amount_min = 1, amount_max = 6},
                {name = "meat",        probability = 0.1, amount_min = 1, amount_max = 2},
                {name = "skin",        probability = 0.2, amount_min = 1, amount_max = 1},
                {name = "guts",        probability = 0.3, amount_min = 1, amount_max = 1},
                {name = "gas-bladder", probability = 0.4, amount_min = 1, amount_max = 1},
                {name = "blood",       amount = 20},
                {name = "cage",        amount = 1},
                {name = "brain",       probability = 0.4, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-phagnotsb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-phagnot.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='caged-phagnot', amount=1},
            },
            results =
            {
                {name = "bones",       remove_item = true},
                {name = "meat",        remove_item = true},
                {name = "skin",        remove_item = true},
                {name = "gas-bladder", remove_item = true},
                {name = "guts",        remove_item = true},
                {name = "blood",       remove_item = true},
                {name = "brain",       remove_item = true},
                {name = "brain",       add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-phagnot-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}


------------------SCRONDRIX------------------

py.autorecipes {
    name = "rendering-brains-scrondrix",
    category = "slaughterhouse",
    subgroup = "py-alienlife-scrondrix",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "caged-scrondrix", amount = 1},
            },
            results =
            {
                {name = "bones",        probability = 0.5, amount_min = 1, amount_max = 2},
                {name = "meat",         probability = 0.5, amount_min = 1, amount_max = 3},
                {name = "skin",         probability = 0.4, amount_min = 1, amount_max = 1},
                {name = "mukmoux-fat",  probability = 0.4, amount_min = 1, amount_max = 2},
                {name = "guts",         probability = 0.5, amount_min = 1, amount_max = 2},
                {name = "blood",        amount = 60},
                {name = "pineal-gland", probability = 0.4, amount_min = 1, amount_max = 1},
                {name = "cage",         amount = 1},
                {name = "brain",        probability = 0.5, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-scrondrixsb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-scrondrix.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='caged-scrondrix', amount=1},
            },
            results =
            {
                {name = "meat",         remove_item = true},
                {name = "bones",        remove_item = true},
                {name = "pineal-gland", remove_item = true},
                {name = "skin",         remove_item = true},
                {name = "mukmoux-fat",  remove_item = true},
                {name = "guts",         remove_item = true},
                {name = "blood",        remove_item = true},
                {name = "brain",        remove_item = true},
                {name = "brain",        add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-scrondrix-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------SIMIKS------------------

py.autorecipes {
    name = "rendering-brains-simik",
    category = "slaughterhouse",
    subgroup = "py-alienlife-simik",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "caged-simik", amount = 1},
            },
            results =
            {
                {name = "bones",       probability = 0.1, amount_min = 1, amount_max = 4},
                {name = "meat",        probability = 0.3, amount_min = 2, amount_max = 5},
                {name = "skin",        probability = 0.2, amount_min = 1, amount_max = 2},
                {name = "chitin",      probability = 0.2, amount_min = 1, amount_max = 1},
                {name = "mukmoux-fat", probability = 0.2, amount_min = 1, amount_max = 1},
                {name = "guts",        probability = 0.4, amount_min = 1, amount_max = 1},
                {name = "keratin",     probability = 0.1, amount_min = 1, amount_max = 1},
                {name = "simik-blood", amount = 30},
                {name = "cage",        amount = 1},
                {name = "brain",       probability = 0.3, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-simikb",
            icon = "__pyalienlifegraphics2__/graphics/icons/rendering-simik.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='caged-scrondrix', amount=1},
            },
            results =
            {
                {name = "meat",        remove_item = true},
                {name = "bones",       remove_item = true},
                {name = "keratin",     remove_item = true},
                {name = "chitin",      remove_item = true},
                {name = "skin",        remove_item = true},
                {name = "mukmoux-fat", remove_item = true},
                {name = "guts",        remove_item = true},
                {name = "simik-blood", remove_item = true},
                {name = "brain",       remove_item = true},
                {name = "brain",       add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-simik-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------TRITS------------------

py.autorecipes {
    name = "rendering-brain-trits",
    category = "slaughterhouse",
    subgroup = "py-alienlife-trits",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "trits", amount = 1},
            },
            results =
            {
                {name = "bones",       probability = 0.3, amount_min = 1, amount_max = 4},
                {name = "meat",        probability = 0.4, amount_min = 1, amount_max = 4},
                {name = "skin",        probability = 0.4, amount_min = 1, amount_max = 3},
                {name = "mukmoux-fat", probability = 0.4, amount_min = 2, amount_max = 5},
                {name = "guts",        probability = 0.4, amount_min = 1, amount_max = 4},
                {name = "photophore",  probability = 0.2, amount_min = 1, amount_max = 2},
                {name = "blood",       amount = 60},
                --{name='cage', amount=1},
                {name = "brain",       probability = 0.4, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-Tritsb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-trits.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='trits', amount=1},
            },
            results =
            {
                {name = "bones",       remove_item = true},
                {name = "meat",        remove_item = true},
                {name = "skin",        remove_item = true},
                {name = "mukmoux-fat", remove_item = true},
                {name = "guts",        remove_item = true},
                {name = "blood",       remove_item = true},
                {name = "brain",       remove_item = true},
                {name = "photophore",  remove_item = true},
                {name = "brain",       add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-Trits-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------ULRIC------------------

py.autorecipes {
    name = "rendering-brain-ulric",
    category = "slaughterhouse",
    subgroup = "py-alienlife-ulric",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "caged-ulric", amount = 1},
            },
            results =
            {
                {name = "bones",       probability = 0.4, amount_min = 1, amount_max = 3},
                {name = "meat",        probability = 0.4, amount_min = 1, amount_max = 3},
                {name = "skin",        probability = 0.2, amount_min = 1, amount_max = 1},
                {name = "mukmoux-fat", probability = 0.3, amount_min = 1, amount_max = 1},
                {name = "guts",        probability = 0.4, amount_min = 1, amount_max = 1},
                {name = "blood",       amount = 50},
                {name = "cage",        amount = 1},
                {name = "brain",       probability = 0.4, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-Ulricsb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-ulric.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='caged-ulric', amount=1},
            },
            results =
            {
                {name = "bones",       remove_item = true},
                {name = "meat",        remove_item = true},
                {name = "skin",        remove_item = true},
                {name = "mukmoux-fat", remove_item = true},
                {name = "guts",        remove_item = true},
                {name = "blood",       remove_item = true},
                {name = "brain",       remove_item = true},
                {name = "brain",       add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-Ulric-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------VONIX------------------

py.autorecipes {
    name = "rendering-brain-vonix",
    category = "slaughterhouse",
    subgroup = "py-alienlife-vonix",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "vonix", amount = 1},
            },
            results =
            {
                --{name='bones', probability = 0.5, amount_min =1, amount_max =2},
                {name = "meat",            probability = 0.5, amount_min = 1, amount_max = 6},
                {name = "skin",            probability = 0.4, amount_min = 1, amount_max = 4},
                {name = "mukmoux-fat",     probability = 0.5, amount_min = 1, amount_max = 5},
                {name = "guts",            probability = 0.4, amount_min = 1, amount_max = 6},
                {name = "arthropod-blood", amount = 80},
                {name = "venom-gland",     probability = 0.2, amount_min = 1, amount_max = 1},
                {name = "brain",           probability = 0.3, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-Vonixb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-vonix.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='vonix', amount=1},
            },
            results =
            {
                {name = "meat",            remove_item = true},
                {name = "venom-gland",     remove_item = true},
                {name = "skin",            remove_item = true},
                {name = "mukmoux-fat",     remove_item = true},
                {name = "guts",            remove_item = true},
                {name = "arthropod-blood", remove_item = true},
                {name = "brain",           remove_item = true},
                {name = "brain",           add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-Vonix-brainb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------VRAUKS------------------

py.autorecipes {
    name = "rendering-brain-vrauks",
    category = "slaughterhouse",
    subgroup = "py-alienlife-vrauks",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "caged-vrauks", amount = 1},
            },
            results =
            {
                --{name='bones', probability = 0.3, amount_min =1, amount_max =4},
                {name = "meat",        probability = 0.4, amount_min = 1, amount_max = 2},
                {name = "chitin",      probability = 0.3, amount_min = 1, amount_max = 1},
                --{name='mukmoux-fat', probability = 0.3, amount_min =1, amount_max =1},
                {name = "guts",        probability = 0.4, amount_min = 1, amount_max = 2},
                {name = "formic-acid", amount = 200},
                {name = "cage",        amount = 1},
                {name = "brain",       probability = 0.4, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-Vrauksb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-vrauks.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='caged-vrauks', amount=1},
            },
            results =
            {
                {name = "meat",        remove_item = true},
                {name = "chitin",      remove_item = true},
                {name = "guts",        remove_item = true},
                {name = "formic-acid", remove_item = true},
                {name = "brain",       remove_item = true},
                {name = "brain",       add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-Vrauks-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------RENDERING XENOS------------------

py.autorecipes {
    name = "rendering-brains-xenos",
    category = "slaughterhouse",
    subgroup = "py-alienlife-xeno",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "caged-xeno", amount = 1},
            },
            results =
            {
                {name = "bones",         probability = 0.45, amount_min = 1, amount_max = 3},
                {name = "meat",          probability = 0.4,  amount_min = 1, amount_max = 3},
                {name = "chitin",        probability = 0.4,  amount_min = 1, amount_max = 4},
                --{name='mukmoux-fat', probability = 0.2, amount_min =1, amount_max =1},
                --{name='guts', probability = 0.4, amount_min =1, amount_max =2},
                {name = "sulfuric-acid", amount = 60},
                {name = "cage",          amount = 1},
                {name = "brain",         probability = 0.5,  amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-Xenosb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-xeno.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name='caged-xeno', amount=1},
            },
            results =
            {
                {name = "bones",         remove_item = true},
                {name = "chitin",        remove_item = true},
                {name = "sulfuric-acid", remove_item = true},
                {name = "meat",          remove_item = true},
                {name = "brain",         remove_item = true},
                {name = "brain",         add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-Xeno-brainsb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}

------------------ZIPIR------------------

py.autorecipes {
    name = "rendering-brain-zipir",
    category = "slaughterhouse",
    subgroup = "py-alienlife-zipir",
    order = "b",
    mats =
    {
        {
            ingredients =
            {
                {name = "zipir1", amount = 1},
            },
            results =
            {
                --{name='bones', probability = 0.5, amount_min =1, amount_max =2},
                {name = "meat",            probability = 0.4, amount_min = 1, amount_max = 4},
                {name = "skin",            probability = 0.5, amount_min = 1, amount_max = 6},
                {name = "mukmoux-fat",     probability = 0.4, amount_min = 1, amount_max = 3},
                {name = "guts",            probability = 0.4, amount_min = 1, amount_max = 4},
                {name = "arthropod-blood", amount = 50},
                {name = "brain",           probability = 0.3, amount_min = 1, amount_max = 2},
            },
            crafting_speed = 30,
            tech = "interactive-cognition",
            name = "Full-Render-zipirb",
            icon = "__pyalienlifegraphics__/graphics/icons/rendering-zipir.png",
            icon_size = 64,
        },
        --brain
        {
            ingredients =
            {
                --{name = 'zipir1', amount=1},
            },
            results =
            {
                {name = "meat",            remove_item = true},
                {name = "skin",            remove_item = true},
                {name = "mukmoux-fat",     remove_item = true},
                {name = "guts",            remove_item = true},
                {name = "arthropod-blood", remove_item = true},
                {name = "brain",           remove_item = true},
                {name = "brain",           add_amount = 2},
            },
            crafting_speed = 15,
            tech = "interactive-cognition",
            name = "Extract-zipir-brainb",
            icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
            icon_size = 64,
        },
    }
}
