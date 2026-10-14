import re

def estrai_intestazioni(file_path):
    intestazioni = []
    
    with open(file_path, 'r', encoding='utf-8') as f:
        for linea in f:
            linea = linea.strip()
            # Cerca le linee che iniziano con #
            if linea.startswith('#'):
                # Rimuove il '#' iniziale
                testo = linea.lstrip('#').strip()
                # Rimuove gli asterischi iniziali (es. **1 Περὶ...)
                testo = re.sub(r'^\*+\s*', '', testo)
                # Rimuove il testo dal trattino '-' in poi (compreso)
                testo = testo.split('–')[0].strip()
                
                # Ricompone l'intestazione pulita con il cancelletto
                intestazioni.append(f"{testo}")
                
    return intestazioni

# Esempio di utilizzo:
# Sostituisci '00. Loci communes - ordine Ihm.docx.md' con il percorso del tuo file
file_input = '00. Loci communes - ordine Ihm.docx.md'

risultati = estrai_intestazioni(file_input)

# Stampa i risultati a schermo
for tit in risultati:
    print(tit)

# Opzionale: salva i risultati in un nuovo file di testo
with open('intestazioni_estratte.txt', 'w', encoding='utf-8') as f_out:
    for tit in risultati:
        f_out.write(tit + '\n')