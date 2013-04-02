Posouvani alignmentu
=========

V kroku 0 byly pokusy vzdycky soubezne alignment a zalozni preklad.

Jak moc je to dusledek alignmentu a jak moc naopak dusledek prekladu?

Jdu to zkusit - jdu vzit nejlepsi vysledek (lcstem6) a hybat POUZE s alignmentem, zatimco ten zalozni preklad zustane stem6->stem6.

Tohle je pouze posouvani alignmentu.

Vizualizace
==========
RU->CS
---
![](../results_visualisation/rucs_align.png?raw=true)

Pozor - rozdíly jsou tady o dost menší, než v grafu v kroku 0, je to mnohem blíž u sebe. V grafech v kroku 0 bylo rozpětí BLEU > 5, tady cca 0.5.

RU->EN
---
![](../results_visualisation/ruen_align.png?raw=true)

Zajímavé. Nejlépe vychází trojka, ale ne zas o tolik.

CS->RU
---
(pořád běží)

EN->RU
---
![](../results_visualisation/enru_align.png?raw=true)

Seznamy
===
RU->CS
---
- lemma   s.evaluatorcyrillics.52c6777d.20130401-1116
- lcstem3 s.evaluatorcyrillics.625429bd.20130401-1123
- lcstem4 s.evaluatorcyrillics.707754d5.20130401-1124
- lcstem5 s.evaluatorcyrillics.692a5581.20130401-1125
- lcstem6 s.evaluatorcyrillics.c0cd4c8c.20130205-1909
- lcstem7 s.evaluatorcyrillics.3710add0.20130401-1126

RU->EN
---
- lemma   s.evaluatorcyrillics.3759fa5c.20130401-1129
- lcstem3 s.evaluatorcyrillics.ad2b9d85.20130402-0343
- lcstem4 s.evaluatorcyrillics.137c3800.20130401-1131
- lcstem5 s.evaluatorcyrillics.664a1db9.20130402-0343
- lcstem6 s.evaluatorcyrillics.6b052d73.20130205-2347
- lcstem7 s.evaluatorcyrillics.f3dbfd69.20130401-1134

CS->RU
---
- lemma   s.evaluatorreversecyrillics.38ef9451.20130402-0558
- lcstem3 s.evaluatorreversecyrillics.2409dbd5.20130401-1157
- lcstem4 s.evaluatorreversecyrillics.ab30495d.20130401-1158
- Xlcstem5 s.evaluatorreversecyrillics.2f312502.20130402-0558X
- lcstem6 s.evaluatorreversecyrillics.253d7586.20130401-0950
- lcstem7 s.evaluatorreversecyrillics.d220e3dd.20130401-1200

EN->RU
---
- lemma   s.evaluatorreversecyrillics.63fccb67.20130402-0347
- lcstem3 s.evaluatorreversecyrillics.a4af914d.20130402-0345
- lcstem4 s.evaluatorreversecyrillics.e027f8d6.20130401-1211
- lcstem5 s.evaluatorreversecyrillics.caf4ea6f.20130402-0345
- lcstem6 s.evaluatorreversecyrillics.65dce982.20130401-0952
- lcstem7 s.evaluatorreversecyrillics.f756c19f.20130401-1213


perl clone.pl
s.evaluatorreversecyrillics.16d40517.20130402-0344>>
s.evaluatorreversecyrillics.82a45d1c.20130402-0346>>
BEZI Step  submitted as job 7216347
