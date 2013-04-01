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
- en->ru baseline s.evaluatorcyrillics.8032ce6d.20130205-2236
- en->ru 1 way
- lemma: s.evaluatorcyrillics.fa1910b0.20130205-2350
- lcstem3: s.evaluatorcyrillics.74f57dd5.20130205-2349
- lcstem4: s.evaluatorcyrillics.af956c9a.20130205-2346
- lcstem5: s.evaluatorcyrillics.f1600b72.20130205-2246
- lcstem6: s.evaluatorcyrillics.8b125510.20130205-2352
- lcstem7: s.evaluatorcyrillics.99e62c69.20130401-0337 
- en->ru 2 way
- lemma: s.evaluatorcyrillics.8f7db9fa.20130205-2248
- lcstem3: s.evaluatorcyrillics.6df7e7ab.20130205-2249
- lcstem4: s.evaluatorcyrillics.c030f500.20130205-2344
- lcstem5: s.evaluatorcyrillics.5495eca7.20130205-2252
- lcstem6: s.evaluatorcyrillics.6b052d73.20130205-2347
- lcstem7: s.evaluatorcyrillics.51b584a6.20130401-0339  
- ru->cs baseline s.evaluatorcyrillics.16a27d30.20130316-1309
- ru->cs 1 way
- lemma: s.evaluatorcyrillics.f1df104f.20130316-1316
- lcstem3: s.evaluatorcyrillics.101bf9dc.20130317-1229
- lcstem4: s.evaluatorcyrillics.1b884e49.20130316-1340
- lcstem5: s.evaluatorcyrillics.5905e184.20130316-1344
- lcstem6: s.evaluatorcyrillics.5bdfcefb.20130316-1420
- lcstem7: s.evaluatorcyrillics.3d0b958e.20130401-0659 
- ru->cs 2 way
- lemma: s.evaluatorcyrillics.40ff17ee.20130316-1421
- lcstem3: s.evaluatorcyrillics.57e10b09.20130316-1320
- lcstem4: s.evaluatorcyrillics.e037eef1.20130316-1733
- lcstem5: s.evaluatorcyrillics.d6ba6129.20130316-1734
- lcstem6: s.evaluatorcyrillics.a7b0095d.20130316-1734
- lcstem7: s.evaluatorcyrillics.b48f9fb7.20130401-0440 
- ru->en baseline  s.evaluatorcyrillics.5fbad79d.20130317-1334
- ru->en 1 way
- lemma: s.evaluatorcyrillics.af027664.20130317-1334
- lcstem3: s.evaluatorcyrillics.1145f6a8.20130317-1335
- lcstem4: s.evaluatorcyrillics.b9ebafa9.20130317-1259
- lcstem5: s.evaluatorcyrillics.dbdd3122.20130326-0214
- lcstem6: s.evaluatorcyrillics.61cb2511.20130317-1337
- lcstem7: s.evaluatorcyrillics.e804fc89.20130401-0406 
- ru->en 2 way
- lemma: s.evaluatorcyrillics.7bdc5a66.20130207-0706
- lcstem3: s.evaluatorcyrillics.91d612cd.20130331-2044 
- lcstem4: s.evaluatorcyrillics.04570ebc.20130326-0214
- lcstem5: s.evaluatorcyrillics.c67ccf30.20130317-1339
- lcstem6: s.evaluatorcyrillics.66ea3b05.20130326-0214
- lcstem7: s.evaluatorcyrillics.ed60936f.20130401-0441
