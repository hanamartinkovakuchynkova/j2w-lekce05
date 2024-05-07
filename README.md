# Lekce 5 – HTML formuláře

Zatím jsme jen zobrazovali data, dnes je konečně začneme také upravovat. Použijeme k tomu HTML formuláře. 

1. Udělej fork zdrojového repository do svého účtu na GitHubu.
1. Naklonuj si repository **ze svého účtu** na GitHubu na lokální počítač.

## Cvičení
1. Z `div`u pod nadpisem *Append new person* udělej formulář (tag `form`). Třídy zůstanou stejné, formulář bude mít akci `/` a metoda bude `post`.
2. Vytvoř v controlleru metodu `append`. Metoda bude mapována na metodu `POST` a jako parametr bude přijímat entitu `Person`.
3. V metodě controlleru `append` použij metodu `append` ze služby `service` pro přidání nové osoby do seznamu osob.
4. Na konci controlleru proveď přesměrování zpět na úvodní stránku aplikace (POST-redirect-GET), aby se zobrazil seznam osob. Seznam se zobrazí už s nově přidanou osobou.

## Odkazy
* [Lekce 5](https://java.czechitas.cz/2024-jaro/java-2-online/lekce-5.html)
