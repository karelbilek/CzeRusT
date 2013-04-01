OOV pokusy
========
Pokusy, kdy
- neni pridana do UMC zadna dalsi vec (ani v LM)
- jeden z jazyku je rustina (at zdroj, nebo cil), aby se dal trivialne merit OOV pomoci cyrilice
- jedine, co se meni, je
    - jaky je alignment
    - jaky je backoff model

Jsou vzdy dva typy pokusu
 - jeden ma "pro kontrolu" translate krok pouze stem->stem (1way)
 - druhy ma translate krok form->form, ale s backoffem

Alignment je vzdy stejny.

Vizualizace
==========
RU->CS
---
![](../results_visualisation/rucs.png?raw=true)

Že je 2-stem7 tak mimo je divné, ale VŮBEC NEVÍM, co s tím sakra je.

Každopádně, i z dalších výsledků stejně vyplývá, že nejlepší je 2-lcstem6.

RU->EN
---
![](../results_visualisation/ruen.png?raw=true)

2-stem7 už má očekávané výsledky.

Má to 2x lepší výsledek, než ru->cs, ale to se dalo čekat...

CS->RU
---
![](../results_visualisation/csru.png?raw=true)

lemma a lcstem6 je teď nějak zmatlané dohromady, ale zase vychází nejlím 2-lcstem6.

Seznamy
=========
- ru->cs baseline s.evaluatorcyrillics.bbc23901.20130205-1730
- ru->cs 1 way
- lemma: s.evaluatorcyrillics.99ee3eec.20130205-1850
- lcstem3: s.evaluatorcyrillics.b3ffaca7.20130205-1849
- lcstem4: s.evaluatorcyrillics.8674fd52.20130205-1848
- lcstem5: s.evaluatorcyrillics.87f079da.20130205-1847
- lcstem6: s.evaluatorcyrillics.fd9a46a5.20130205-1846
- lcstem7: s.evaluatorcyrillics.bca0fa90.20130401-0332 
- ru->cs 2 way
- lemma: s.evaluatorcyrillics.0b217d47.20130205-2256
- lcstem3: s.evaluatorcyrillics.abee4dcc.20130205-1915
- lcstem4: s.evaluatorcyrillics.9b929690.20130205-1914
- lcstem5: s.evaluatorcyrillics.99998a35.20130205-1913
- lcstem6: s.evaluatorcyrillics.c0cd4c8c.20130205-1909
- lcstem7: s.evaluatorcyrillics.8cf43c99.20130401-0438 
- ru->en baseline s.evaluatorcyrillics.8032ce6d.20130205-2236
- ru->en 1 way
- lemma: s.evaluatorcyrillics.fa1910b0.20130205-2350
- lcstem3: s.evaluatorcyrillics.74f57dd5.20130205-2349
- lcstem4: s.evaluatorcyrillics.af956c9a.20130205-2346
- lcstem5: s.evaluatorcyrillics.f1600b72.20130205-2246
- lcstem6: s.evaluatorcyrillics.8b125510.20130205-2352
- lcstem7: s.evaluatorcyrillics.99e62c69.20130401-0337 
- ru->en 2 way
- lemma: s.evaluatorcyrillics.8f7db9fa.20130205-2248
- lcstem3: s.evaluatorcyrillics.6df7e7ab.20130205-2249
- lcstem4: s.evaluatorcyrillics.c030f500.20130205-2344
- lcstem5: s.evaluatorcyrillics.5495eca7.20130205-2252
- lcstem6: s.evaluatorcyrillics.6b052d73.20130205-2347
- lcstem7: s.evaluatorcyrillics.51b584a6.20130401-0339  
- cs->ru baseline s.evaluatorreversecyrillics.0f9ad641.20130401-0939
- cs->ru 1 way
- lemma:   s.evaluatorreversecyrillics.386ccb0f.20130401-0950
- lcstem3: s.evaluatorreversecyrillics.6494aaae.20130401-0950
- lcstem4: s.evaluatorreversecyrillics.9dc985ab.20130401-0950
- lcstem5: s.evaluatorreversecyrillics.fb6511f7.20130401-0950
- lcstem6: s.evaluatorreversecyrillics.253d7586.20130401-0950
- lcstem7: s.evaluatorreversecyrillics.b97f1a56.20130401-0951
- cs->ru 2 way
- lemma: s.evaluatorreversecyrillics.f620d315.20130401-0951
- lcstem3: s.evaluatorreversecyrillics.0808ec80.20130401-0953
- lcstem4: s.evaluatorreversecyrillics.f82fda30.20130401-0951
- lcstem5: s.evaluatorreversecyrillics.2767700f.20130401-0951
- lcstem6: s.evaluatorreversecyrillics.f1b07305.20130401-0951
- lcstem7: s.evaluatorreversecyrillics.42c9f52e.20130401-0951
- ru->en baseline  s.evaluatorreversecyrillics.932930c1.20130401-0951
- ru->en 1 way
- lemma: s.evaluatorreversecyrillics.1d73dffb.20130401-0951
- lcstem3: s.evaluatorreversecyrillics.13c057f8.20130401-0951
- lcstem4: s.evaluatorreversecyrillics.abe97a47.20130401-0951
- lcstem5: s.evaluatorreversecyrillics.fa99fabe.20130401-0951
- lcstem6: s.evaluatorreversecyrillics.749db3fc.20130401-0952
- lcstem7: s.evaluatorreversecyrillics.3cc911b5.20130401-0952
- ru->en 2 way
- lemma: s.evaluatorreversecyrillics.ebce40d1.20130401-0952
- lcstem3: s.evaluatorreversecyrillics.0ad19769.20130401-0952
- lcstem4: s.evaluatorreversecyrillics.826ae0d0.20130401-0952
- lcstem5: s.evaluatorreversecyrillics.18bbfb1f.20130401-0952
- lcstem6: s.evaluatorreversecyrillics.65dce982.20130401-0952
- lcstem7: s.evaluatorreversecyrillics.e4efc1e6.20130401-0952
