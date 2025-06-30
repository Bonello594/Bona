# Guida passo passo per creare l'app di stretching

Questa guida ti accompagna nella creazione di un'app di stretching con SwiftUI usando Xcode. Non è necessario essere programmatori esperti, segui i passaggi qui sotto.

## 1. Creazione del progetto

1. Apri **Xcode**.
2. Seleziona **Create a new Xcode project**.
3. Scegli **App** sotto la voce iOS e premi **Next**.
4. Inserisci un nome per il progetto (ad esempio *StretchingApp*), assicurati che l'opzione **Interface** sia impostata su *SwiftUI* e il linguaggio su *Swift*.
5. Scegli una cartella dove salvare il progetto e conferma.

## 2. Aggiunta dei file di esempio

All'interno di questa repository trovi la cartella `StretchingApp` contenente i file Swift di esempio. Copiali dentro la cartella del tuo progetto Xcode, quindi trascinali nel pannello a sinistra di Xcode (navigatore dei file) assicurandoti che l'opzione *Copy items if needed* sia attivata.

I file principali sono:

- `StretchingApp.swift`: punto di ingresso dell'applicazione. Gestisce le richieste di permesso per notifiche e posizione.
- `ContentView.swift`: contiene la `TabView` con le cinque sezioni.
- `HomeView.swift`: mostra un video di sfondo e un semplice form di login.
- `TrainingView.swift`: elenco di esercizi di stretching con categorie.
- `ActivityView.swift`: grafico delle attività e pulsante di condivisione.
- `ProfileView.swift`: form con le informazioni dell'utente e impostazioni base.

## 3. Risorse necessarie

Per il video in home page e i video degli esercizi, trascina i file mp4 nel gruppo **Assets** o direttamente nel progetto in Xcode. Assicurati che i nomi dei file corrispondano a quelli utilizzati nel codice (`background.mp4`, `neck.mp4`, ecc.).

## 4. Avvio dell'app

1. Seleziona un simulatore (oppure un dispositivo reale collegato) nella barra in alto di Xcode.
2. Premi il pulsante **Run** (o `Cmd+R`).
3. Al primo avvio l'app ti chiederà l'autorizzazione per inviare notifiche e accedere alla posizione. Conferma oppure nega a tua discrezione.
4. Dalla schermata Home esegui il login (al momento è solo dimostrativo) per accedere alle altre sezioni.

## 5. Personalizzazioni

- **Design**: puoi modificare i colori e lo stile delle viste cambiando le proprietà SwiftUI (ad esempio `background`, `foregroundColor`, `font`).
- **Esercizi**: aggiungi nuovi esercizi all'array `sampleExercises` in `TrainingView.swift`, specificando nome, descrizione, categoria e nome del video.
- **Grafici**: in `ActivityView.swift` puoi ampliare la logica per salvare e visualizzare i dati reali delle tue sessioni.
- **Profilo**: in `ProfileView.swift` completa le azioni dei pulsanti (assistenza, cambio lingua, logout) secondo le tue necessità.

Questa base di codice è semplificata e serve come punto di partenza. Potrai estendere le funzionalità in futuro in base ai tuoi obiettivi.
