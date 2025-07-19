Wiki = {}
Wiki.events = {}

py.on_event(py.events.on_init(), function()
    remote.call("pywiki", "add_section", "alienlife")

    remote.call("pywiki", "add_page", {
        name = "farming",
        section = "alienlife",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "caravans",
        section = "alienlife",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "caravan-manager",
        section = "alienlife",
        remote = {"pywiki_caravan_manager", "create_gui"},
        searchable = {"pywiki_caravan_manager", "on_search"}
    })

    remote.call("pywiki", "add_page", {
        name = "mounts",
        section = "alienlife",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "digosaurus",
        section = "alienlife",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "ocula",
        section = "alienlife",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "vatbrain",
        section = "alienlife",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "symbiosis",
        section = "alienlife",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "biofluid",
        section = "alienlife",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "mega-farm",
        section = "alienlife",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "wyrmhole",
        section = "alienlife",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "turd",
        title = "turd-title",
        section = "alienlife",
        remote = {"pywiki_turd_page", "create_turd_page"},
        searchable = {"pywiki_turd_page", "on_search"}
    })
end)
