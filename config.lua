Config = {}

Config.Command = 'commands' -- commands to open ui
Config.title = 'MY SERVER | Server Commands' -- ui title
Config.description = 'This is a list of available commands for most players. These are common commands feel free to change them as your wish.' -- ui description

Config.infoDisplayed = { -- info displayed on UI
    ["General"] = {
        '/me /rules /cmds /respawn /ooc /fire'
    },
    ["Role-Play"] = {
        '/911 /me /text [id] [msg] /ad [bank, isc, ammunation, taxi, uber, store]'
    },
    ['Animations'] = {
        '/hu /huk /emote(s) /grab /cuff'
    },
    ['Vehicle Commands'] = {
        '/dv /engine /hood /trunk /rdoors /saveveh /lock /fix'
    }
}
