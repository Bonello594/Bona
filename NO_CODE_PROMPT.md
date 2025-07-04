Ecco un esempio di prompt da usare in un builder no-code (Webflow, Bubble, Softr) per creare una homepage di un servizio di trasferimento file ispirato a WeTransfer con slider pubblicitario.

## Obiettivo
Realizzare una homepage one-page dominata dal giallo canarino per permettere l'upload di file via drag-and-drop, la generazione di link di condivisione e l'invio diretto via mail. Deve essere presente uno slider pubblicitario con link esterni.

## Layout e Design
- Hero full-screen con area drag-and-drop centrale e pulsante "Clicca per selezionare file".
- Messaggio esplicativo: "Trascina qui i tuoi file o selezionali qui sotto per caricarli".
- Background neutro (bianco o grigio chiarissimo) e accenti in giallo canarino `#FFEB3B`.
- Slider pubblicitario in basso o in sidebar con 3-5 slide (immagine, headline e link) e autoplay con pausa al passaggio del mouse.
- Footer con link a Termini, Privacy, Contatti e Social.

## Interazioni & UX
- Evidenziare l'area drag-and-drop in giallo al passaggio del file.
- Barra di progresso durante l'upload e pop-up di conferma con link da copiare o inviare via mail.
- Layout responsive mobile-first.

## Funzionalità di Condivisione
1. **Invio mail diretto**: form con campi per mittente, destinatario e messaggio; bottone "Invia link" che usa un servizio mail (SendGrid o Mailgun).
2. **Link condivisibile**: generazione di URL breve (es. `tuodominio.com/d/abc123`) con pulsante per copiare e icona Condividi.

## Gestione Contenuti & CMS
- Pannello no-code per gestire le slide pubblicitarie e modificare rapidamente background e testi principali.
- Campo per inserire codice di tracciamento (Google Analytics, Meta Pixel) e configurazione SEO/Open Graph.

## Architettura Backend (suggerita)
- **Storage file**: Amazon S3 o Google Cloud Storage con policy di scadenza automatica.
- **Web server & API**: Node.js (Express) o Python (FastAPI) per upload/download e generazione link.
- **Database**: PostgreSQL per metadati (utenti, file, log).
- **Cache/CDN**: Cloudflare o AWS CloudFront.
- **Autenticazione**: JWT/OAuth2 se servono account.
- **Elaborazione upload**: funzioni serverless (AWS Lambda o Cloud Functions) per scansioni o anteprime.
- **Gestione slider**: admin panel (Strapi, Directus o CMS integrato) per CRUD delle slide.
- **Pulizia automatica**: task periodico per rimuovere file scaduti.

