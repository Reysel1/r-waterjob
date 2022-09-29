local Translations = {
    error = {
        ["donthaveint"] = "You have nothing that interests me. Minimum 15 to talk business.",
        ["donthaveammount"] = "I don't have that amount, I left you a location that has the amount you need and more.",
        ["donthavebottle"] = "You don't have a bottle."
     },
    success = {
        ["fillbottle"] = "You filled a dirty water bottle.",
    },
    proggress = {
        ["spkpacopg"] = "Talking to pako...",
        ["spkreyselpg"] = "Talking to reysel...",
        ["int"] = "Interacting..."
    },
    helptext = {
        ["spkreyselhelptext"] = "G - Talk to reysel",
        ["spkpacohelptext"] = "G - Talk to paco",
        ["pickup"] = "G - Pick up",
    }
     
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
