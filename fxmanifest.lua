fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'j##'
description 'G0ogle'
version '1.1.0'

ui_page "ui/index.html"

files {
	"ui/index.html"
}

shared_scripts {
	'config.lua',
}

client_scripts {
	'shared/*.lua',
	'client/*.lua',
	'config.lua',
	'list.lua',
	'client.lua'
}

server_scripts {
	'shared/*.lua',
	"config.lua",
	"server/*.lua"
}

escrow_ignore {
	'config.lua',
	'list.lua',
	'client.lua'
}

dependencies {
	'/server:5181'
}
