resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Police Job v2 SP Leaks'

version '2.0'

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/ru.lua',
	'locales/de.lua',
	'locales/en.lua',
	'locales/pl.lua',
	'locales/fr.lua',
	'locales/fi.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'config.lua',
	'server/sp_main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/ru.lua',
	'locales/de.lua',
	'locales/en.lua',
	'locales/pl.lua',
	'locales/fr.lua',
	'locales/fi.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'config.lua',
	'client/blips.lua',
	'client/sp_main.lua',
	'client/sp_radar.lua'
}

dependencies {
	'es_extended',
	'zapps_billing'
}