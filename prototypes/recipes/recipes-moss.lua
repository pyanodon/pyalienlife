--MOSS--

for t, tree in pairs(data.raw.tree) do
    tree.minable.results =
        {
            {type = 'item', name = 'wood', amount = tree.minable.count},
            {type = 'item', name = 'moss', amount = 1, probability = 0.01}
        }
end