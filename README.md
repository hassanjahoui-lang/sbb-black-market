# 🛒 QBCore Black Market (`qb-blackmarket`)

Uno script semplice, leggero e sicuro per aggiungere un **Mercato Nero** al tuo server FiveM basato sul framework QBCore. 
I giocatori potranno interagire con un NPC nascosto per acquistare Armi MK2, Munizioni e Attrezzatura Illegale.

## ✨ Funzionalità
- 🧍‍♂️ **NPC Spawner:** Spawna automaticamente un ped invincibile e bloccato nella posizione desiderata.
- 👁️ **Integrazione `qb-target`:** Interazione moderna tramite il "Terzo Occhio" (Alt).
- 📜 **Menu a Categorie:** Utilizza `qb-menu` per dividere gli oggetti in sottomenu ordinati (Es: Armi MK2, Munizioni, Illegali).
- 🛡️ **Sicuro dagli Hacker:** Il sistema di pagamento e assegnazione oggetti è gestito interamente lato server. I client passano solo l'ID dell'oggetto, impedendo l'exploit dei prezzi tramite mod menu.

## 📦 Dipendenze (Requisiti)
Assicurati che il tuo server abbia queste risorse installate e avviate prima di questo script:
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-target](https://github.com/qbcore-framework/qb-target)
- [qb-menu](https://github.com/qbcore-framework/qb-menu)

## 🛠️ Installazione
1. Crea una cartella chiamata `qb-blackmarket` nella cartella `resources` (consigliato dentro la sotto-cartella `[qb]`).
2. Inserisci i file dello script (`fxmanifest.lua`, `config.lua`, `client.lua`, `server.lua`).
3. Apri il tuo file `server.cfg` e aggiungi la seguente riga:
   ```cfg
   ensure qb-blackmarket

   Riavvia il server o digita ensure qb-blackmarket nella console del server.
   
# ⚙️ Configurazione (config.lua)

Tutta la personalizzazione si effettua all'interno del file config.lua.
Cambiare Posizione:
Usa il comando /coords in gioco nel punto esatto in cui vuoi l'NPC e sostituisci il vector4 alla voce Config.Location.
Cambiare Valuta:
Puoi far pagare i giocatori in contanti ("cash"), banca ("bank") o crypto ("crypto").
Aggiungere/Rimuovere Oggetti:
Puoi aggiungere quanti oggetti vuoi all'interno delle Config.Categories.

[1] = { name = "nome_item_database", label = "Nome nel Menu", price = 1000, amount = 1 }

## ⚠️ ATTENZIONE IMPORTANTE
Per far sì che i giocatori ricevano effettivamente gli oggetti:
Gli oggetti illegali e le munizioni (es. c4_bomb, rifle_ammo) DEVONO esistere nel file qb-core/shared/items.lua.
Le armi MK2 (es. weapon_pistol_mk2) DEVONO esistere nel file qb-core/shared/weapons.lua del tuo framework.
Se un oggetto non è presente nel database condiviso, il giocatore pagherà i soldi ma non riceverà l'oggetto nell'inventario!
