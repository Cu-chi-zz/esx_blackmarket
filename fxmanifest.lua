fx_version 'adamant'
games { 'gta5' }

client_scripts {
    "Wrapper/Utility.lua",

    "UIElements/UIVisual.lua",
    "UIElements/UIResRectangle.lua",
    "UIElements/UIResText.lua",
    "UIElements/Sprite.lua",
}

client_scripts {
    "UIMenu/elements/Badge.lua",
    "UIMenu/elements/Colours.lua",
    "UIMenu/elements/StringMeasurer.lua",

    "UIMenu/items/UIMenuItem.lua",

    "UIMenu/UIMenu.lua",
    "UIMenu/MenuPool.lua",
}

client_scripts {
    "NativeUI.lua",
}

client_scripts {
    'client/client.lua',
    'config.lua'
}

server_scripts {
    'server/server.lua',
    'config.lua'
}