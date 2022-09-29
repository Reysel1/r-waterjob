local Translations = {
    error = {
            ["donthaveint"] = "No tienes nada que me interesa. Mínimo 15 para hablar de negocio.",
            ["donthaveammount"] = "No tengo esa cantidad, te dejé una ubicación que tiene la cantidad que necesitas y mas.",
            ["donthavebottle"] = "No tienes botella."
    },
    success = {
             ["fillbottle"] = "Llenaste una botella de agua sucia.",
    },
    proggress = {
            ["spkpacopg"] = "Hablando con pako..",
            ["spkreyselpg"] = "Hablando con reysel...",
            ["int"] = "Interactuando111.."
    },
    helptext = {
            ["spkreyselhelptext"] = "G - Hablar con reysel",
            ["spkpacohelptext"] = "G - Hablar con paco",
            ["pickup"] = "G - Recoger"
        }
    }
 
Lang = Locale:new({
   phrases = Translations,
   warnOnMissing = true
 })