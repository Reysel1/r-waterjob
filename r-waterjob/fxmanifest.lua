fx_version 'cerulean'
game 'gta5'

client_script 'Lua/C/CMain.lua'

server_script 'Lua/S/SMain.lua'

shared_scripts {
    'Shared.lua',
    '@qb-core/shared/locale.lua',
    'Locales/es.lua'
}
