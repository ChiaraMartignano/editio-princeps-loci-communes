# Transcription files of the Latin translation of the *Loci Communes*

## Introduction
This repository was created to work on the transcription of the Latin translation of the ***Loci Communes*, a collection of wise sayings attributed to Pseudo-Maximus**. Originally composed in Byzantine Greek in the 9th century, the collection was translated into Latin and published alongside the Greek text, and other works, by **Conrad Gesner in 1546**.

Scholars consider this *editio princeps* of the *Loci Communes* not particularly relevant or useful to reconstruct the original Greek text, as Gesner took many liberties with it during his editorial process (Baldi 2014). However, in the context of the **FIS CoMByN project** (*“The construction of Collective Memory in Byzantium: Towards a Network of Byzantine compilation literature across Europe and the Mediterranean”*), based at the University of Padua, Italy, we aim at studying all the historical translations of the *Loci Communes* and their reception across centuries and cultures. The ultimate goal of the CoMByN project is the publication of a **digital synoptic edition** that presents the critical edition of the Greek text, a modern translation in English, and the editions of all the historical translations.

One copy of Conrad’s editio princeps is preserved at the Austrian National Library and it is also available as a high-resolution digital facsimile via IIIF. This digital copy was used to produce the transcriptions deposited in this GitHub repository, following the editorial workflow illustrated below.
In the digital facsimile the Latin translation of the Loci Communes begins at page [507](https://viewer.onb.ac.at/102B2A68/507) (numbered 179) and ends at page [591](https://viewer.onb.ac.at/102B2A68/591) (numbered 263).

## Editorial workflow
To accelerate the transcription process I used the software [Transkribus](https://www.transkribus.org/) (free version). After a couple of tests, I decided to use two models that are publicly available for all Transkribus users:
- [Latin Incunabula (Reichenau)](https://app.transkribus.org/models/text/latin-incunabula-reichenau) for the diplomatic transcription;
- [Noscemus GM 6](https://app.transkribus.org/models/text/52640) for the interpretative transcription.

The results produced with Transkribus were stored in separate .txt files, two for each page of the book: one containing a diplomatic transcription, which **preserved all the orthographic features** of the text such as abbreviations and ancient characters, the other containing **a text that was slightly modified by the model** to expand common abbreviations and substitute ancient characters (e.g., ſ → s).

After manually revising the texts, I developed and implemented a light markup in the interpretative transcriptions to signal peculiar text placements  (in the center, in the right or left margin, floating below or above other text, etc.), words split by a line break, paragraphs divisions, page numbers, and apparent errors.

This light markup allowed me to easily convert and merge the .txt files into one XML/TEI document, applying two Python scripts that I developed with some AI-assistance.
Once the complete document was ready, I started revising the text to apply the common principles established within the editorial team of the CoMByN project. This final revision round is still in progress.

## Repository Structure
- `transcriptions`: contains all .txt files produced with Transkribus and manually marked and revised. Files are named with their corresponding page number.
- `editions`: XML/TEI documents containing the full edition of the text according to different criteria (interpretative edition, CoMByN edition).
- `scripts`: XSLT and Python scripts used to edit and analyse the text.

## Bibliography and links
- Baldi, Diego. 2014. ‘Conrad Gesner, i Loci Communes dello pseudo Massimo Confessore e la Melissa del monaco Antonio’. Bibliothecae.it 3 (1): 19–61. [https://doi.org/10.6092/issn.2283-9364/5711](https://doi.org/10.6092/issn.2283-9364/5711).
- ÖNB Digital. n.d. ‘Sententiae Sive Capita Theologica Praecipuae Ex Sacris et Profanis Libris ... Aphorismorum Seu Capitum de Perfectu Charitate ... Theophili Antiochensis Episcopi: De Deo et Fide Christianorum ... Libri III. Titani Assyrii: Oratio Contra Graecos.’ Accessed 21 September 2026. [https://onb.digital/result/102B2A68](https://onb.digital/result/102B2A68).

## About me
I am a digital humanist and a research fellow at the University of Padua. I specialise in digital philology and the development of visualization tools for digital scholarly editions. You can find my contact info and read more about me [here](https://chiaramartignano.github.io/presentation/)


