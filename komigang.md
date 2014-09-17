# Att komma igång med länkade data

I detta kapitel ges praktiska råd för hur man kommer igång med länkade data. Först hur man väljer ut vilken informationsmängd man vill börja med och därefter hur man konkret skapar sin första länkade data. Sedan diskuteras i korthet frågor kring best practises och licenser. 

Kapitlet avslutas med en introduktion och analys av ett antal tekniska lösningskategorier för publicering av länkade data. Vilken lösningskategori man bör välja beror både på tekniska förutsättningar, t.ex. existerande IT-infrastruktur, och vilken kompetens man har eller vill ha inom den egna organisationen.

## Vilken information ska jag börja med?
För en del läsare är detta självklart då orsaken till att man läser denna vitbok är att man planerar att exponera en given informationsmängd som länkade data. Men om du som läsare representerar en organisation som funderar eller har beslutat att publicera länkade data kan det vara bra att få förslag till hur man prioriterar.
I E-delegationens [vägledning för vidarutnyttjande av offentlig information](http://www.edelegationen.se/Documents/Vagledningar%20mm/V%C3%A4gledning-f%C3%B6r-vidareutnyttjande-av-offentlig-information.pdf) listas i kapitel 4.4.1 ett antal frågor man ska ställa sig vid prioritering av vad som ska exponeras. Frågorna är i huvudsak skrivna för offentliga aktörer men är relevanta även för andra organisationer och företag. Fritt översatt är frågorna:

1. Efterfrågas information av andra aktörer?
2. Används informationen redan av den egna organisationen i kommunikation utåt?
3. Vilka demokratiska och ekonomiska värden kan en exponering av information bidra till?
4. Hur mycket arbete innebär det att exponera informationen, krävs manuell granskning för en framgångsrik exponering?

För en mer metodisk översikt för prioritering av vilken information man ska börja med se SKLs [ramverk för öppna data](http://www.skl.se/naringslivarbetedigitalisering/digitalisering/oppnadata/stodvagledning/ramverkoppnadata/ramverketforoppnadata.1184.html) speciellt de delar som handlar om nyttor och kostnader.

## Snabbstart
Det finns många sätt att komma igång med att publicera länkade data. Ett sätt är att lära sig något modelleringsverktyg som [Protégé](http://protege.stanford.edu/) där man kan börja modellera sina datauttryck. Författarnas erfarenhet är dock att det finns en enklare mer praktisk metod som ofta leder till lika bra eller bättre resultat. Särskilt då den inte kräver kompetens i ett avancerat och för de flesta okänt verktyg samt att ett för stort verktygsfokus inte nödvändigtvis främjar samarbete och snabb iteration i början av ett projekt:

1. Skriv ner en lista med de viktigaste tingen du har i din data, t.ex. personer, föremål, händelser, bilder, osv. Komplettera sen listan med viktiga egenskaper som tingen har, t.ex. benämning, personnummer för en person eller registreringsnummer för en bil.
2. Bestämma hur de olika tingen kan ges egna webbadresser, dvs URI design.
3. Samlas kring en whiteboard eller något digitalt ritverktyg. Rita upp era ting och förbind dem med varandra via olika relationer.
4. Konkretisera egenskaper och relationer genom att återanvända existerande vokabulärer som dcterms, foaf etc. för att hålla nere behovet av att introducera nya specifika termer.
5. Skriv ner uttrycket för några exempel. Använd förslagsvis formatet [Turtle](http://www.w3.org/TR/turtle/) då det är tämligen lätt att lära sig, skriva och läsa.
6. Lägg upp exempelfilerna på en webbserver i en katalogstruktur som motsvarar hur URI:erna för tingen ska se ut.

Efter detta har ni faktiskt redan producerat ett exempel med länkade data, på samma sätt som man kan producera statiska webbsidor genom att skriva dem för hand. Vad som återstår är att utveckla den tekniska lösning som ska generera länkade data utifrån underliggande system. 

**Notera:** Det faktum att ni redan från början har tagit fram riktiga exempel på länkade data innebär att tre olika aktiviteter kan ske parallellt:
1. Dokumentation av länkade data uttrycket och eventuell formalisering i RDFS / OWL.
2. Utveckling av en teknisk lösning för publicering av dina länkade data.
3. Utveckling av andra system som ska interagera med dina länkade data.

## Best Practices

Det finns best practices med väletablerade angreppssätt för skapning av URIer och val av vokabulärer som bör återanvändas så långt som möjligt. En detaljerad redogörelse av best practices ligger utanför vitbokens ramar, men det finns gott om litteratur som detaljerat beskriver hur man kan gå tillväga. Avsnittet ["Externa källor"](externt.html) innehåller en lista med relevant litteratur som även täcker best practices.

## Licens

Det är viktigt att förse datamängden med en licens som gör det tydligt vad man får göra med datamängden. Det är allmänt rekommenderat att återanvända väletablerade licenser som är anpassade för öppna data. Exempel på licenser som fungerar bra med länkade öppna data är:

* [Creative Commons Zero Public Domain Dedication (CC0)](http://creativecommons.org/publicdomain/zero/1.0/)
* [Open Data Commons Public Domain Dedication (PDDL)](http://opendatacommons.org/licenses/pddl/)
* [European Union Public License (EUPL)](https://joinup.ec.europa.eu/software/page/eupl)
* [ISA Open Metadata Licence](https://joinup.ec.europa.eu/category/licence/isa-open-metadata-licence-v11)

Det underlättar (eller möjliggör) att återanvända datamängden när den publiceras tillsammans med en tydlig och godtagbar öppen licens.

## Exponera länkade data - lösningskategorier

Vi har identifierat två huvudsakliga lösningskategorier med tillsammans fem underkategorier som på olika sätt klarar av att exponera länkade data från ett givet dataset. För att kunna ge en tydlig översikt av skillnaderna mellan de olika lösningskategorierna använder vi följande benämningar:

*Plattform A* - den existerande plattformen som i dagsläget inte har stöd för länkade data.

*Plattform B* - en plattformen som har stöd för länkade data.

<table>
<thead><tr style="background-color: #f8f8f8"><td colspan="3">Utnyttja befintlig plattform – Data ligger kvar i plattform A</td></tr></thead>
<tbody>
<tr style="background-color: white"><td>1. </td><td>Utvidga plattformen</td><td>Plattform A utvidgas med ny funktionalitet</td></tr>
<tr style="background-color: white"><td>2. </td><td>Lager ovanpå plattformen</td><td>Plattform B hämtar data från plattform A</td></tr>
<tr style="background-color: white"><td>3. </td><td>Molntjänst ovanpå plattformen</td><td>Plattform B i molnet hämtar data från plattform A</td></tr>
</tbody>
<thead><tr style="background-color: #f8f8f8"><td colspan="3">Ny plattform – Data flyttas från plattform A till plattform B</td></tr></thead>
<tbody>
<tr style="background-color: white"><td>4. </td><td>Ny plattform internt</td><td>Plattform B hanteras inom organisationen</td></tr>
<tr style="background-color: white"><td>5. </td><td>Ny plattform i molnet</td><td>Plattform B hanteras externt av annan organisation</td></tr>
</tbody>
</table>

Vi beskriver först de två huvudsakliga lösningskategorierna och i kapitlet efter görs en kort analys av de fem underkategorierna.

### Utnyttja befintlig plattform

Om man har en existerande plattform som man är nöjd med är det ofta vettigt att hålla fast vid den. Följande fördelar är vanliga:
1. Driftsättningen är klar.
2. Användargränsnitt för redigering och presentation är redan på plats.
3. Organisationen är van vid hanteringen.
4. Integration med andra underliggande system är klar.

Men det finns saker som kan tala emot användning av en existerande plattform, t.ex.:
1. Behov av ändrad informationsmodell för att stödja det avsedda länkade data-uttrycket som ofta är mer kvalificerat.
2. Behov av ett förbättrat och mer lämpligt användargränsnitt för redigering och presentation

### Ny plattform
I vissa situationer är det bättre att byta till en ny plattform, t.ex. om en eller flera av följande omständigheter beskriver situationen väl:
1. Datasetet är relativt självständig och det finns få eller inga behov av att integrera med andra underliggande system.
2. Informationsmodellen behöver ändras
   1.  då organisationens behov har förändrats.
   2. för att stödja ett mer kvalificerat länkade data-uttryck.
3. Det behövs ett förbättrat och mer lämpligt användargränsnitt  för redigering och presentation

## Kort analys av lösningskategorier

Nedan analyseras de fem lösningskategorierna. För att förenkla resonemangen en aning så ignorerar vi eventuella behov att integrera med andra underliggande system i de två sista lösningskategorierna.


### 1. Utvidga plattformen
Syftet här är att utvidga en existerande plattform med stöd för länkade data. Antingen ett generellt stöd för länkade data eller mer specifikt för en begränsad mängd data. Naturligtvis blir en sådan utvidgning specifik för varje plattform. Det finns två huvudvägar att gå:

*Syntaktisk lösning* - denna lösning innebär att man i ett existerande presentationslager som hittills levererat html lägger till en mall som istället producerar RDF i något format.

*Semantisk lösning* - denna lösning innebär att man skriver kod som översätter mellan en intern representation av datamodellen och informationsmodellen i RDF genom att jobba mot ett RDF API, typiskt tillhandahållet via ett RDF-bibliotek.
TODO mellanrum mellan raderna? Nackdelen med den syntaktiska lösningen är att man skapar en mappning till en syntax, inte till RDF som språk. Den semantiska lösningen jobbar istället mot RDF som språk och gör det enklare att uppfylla de tekniska kraven 2, 4 och 6. Båda lösningarna innebär en betydande mängd hårdkodning där man binder sig till den interna representationen av informationsmodellen.

### 2. Lager ovanpå plattformen
Skillnaden mot alternativet ovan (utvidga plattformen) är att man jobbar med någon form av etablerat datagränsnitt istället för en intern representation av informationsmodellen. Till exempel kan det vara så att datan regelbundet dumpas ut som filer (CSV, XML etc.) eller att det går att komma åt datan via ett API (Web Services, REST etc.). I vissa situationer kan också en välstrukturerad databas fungera som ett datagränsnitt. Existensen av någon form av datagränssnitt gör att man kan skapa stöd för länkade data i ett lager som är tämligen oberoende av den existerande plattformen. Beroende på val av programmeringsspråk och ramverk kan lagret driftsättas olika nära den existerande plattformen.

Lagret kan utgöras av standardkomponenter som plockas samman, alternativt används en dedikerad plattform som är lämpad för uppgiften.

### 3. Molntjänst ovanpå plattformen
Denna kategori av lösningar påminner starkt om lager ovanpå plattformen. Skillnaden är att lagret nu har lyfts ut till en oberoende tjänst i molnet (SaaS). Lösningar bör inkludera ett användargränssnitt för att styra vilken mekanism som ska användas vid inhämtning av data och vilken form av konvertering till länkade data som ska göras.

För att en lösning ska hamna i denna kategori ska den isolera organisationen från drift och underhåll av den mjukvara som exponerar länkade data. Kompetens för hur det länkade data uttrycket ska se ut och hur den egna datan ska översättas till detta uttryck är dock fortfarande nödvändigt att ha inom den egna organisationen. Sådan kompetens kan etableras hos informatiker inom organisationen, eventuellt med stöd utifrån. Efter initial etablering kan i de flesta fall denna kompetens underhållas internt inom organisationen och även bidra till ett vidare perspektiv på den egna informationsmodellen som ofta är av nytta vid samtal och samarbete med andra organisationer. Denna nytta är komplementär till nyttan av att ha ett länkade data-lager för att faktiskt genomföra en dataintegration med andra organisationer.

### 4. Driftsätta internt
Att flytta relevant data till en plattform som har stöd för länkade data innebär förstås att man måste hantera de konsekvenser som normalt uppstår vid byte av plattform.

*Datakonvertering* - Relevant data måste flyttas och konverteras till ett format som den nya plattformen kan ta emot.
Ny situation för drift och underhåll - Den nya plattformen kommer med nya krav på drift och underhåll. Rutiner för drift påverkas förstås av vilken typ av plattform det handlar om, t.ex. .NET jämfört med java.

*Ny teknisk kompetens* - Den nya plattformen kommer kräva ny teknisk kompetens av IT-avdelningen och/eller hos en extern partner särskilt vid behov av ändringar eller uppgraderingar.

*Ny användarkompetens* - Såvida man inte bygger om gränssnittet till att likna det gamla så kommer förändringen innebära en omställning för de som jobbar i systemet.
I något läge måste man också se till att existerande data mappas mot ett uttryck i RDF. Om den nya plattformen använder RDF internt sker konverteringen direkt. Om den nya plattformen har en annan intern representation som sedan mappas mot RDF i ett senare skede hamnar man i en situation där man måste göra två konverteringar, först till den nya plattformens interna datamodell och sedan till RDF. Förhoppningsvis är dock den senare mappningen av enklare karaktär om plattformen är en någorlunda kompetent länkad data-plattform.

En allmän reflektion är att omfattning av konsekvenserna ovan beror på hur stor mängden av relevant data och hur komplicerad den ursprungliga plattformen är. För små mängder data och med endast ett fåtal användare så är konsekvenserna troligtvis ganska små.

### 5. Driftsatt i molnet
Denna lösningskategori skiljer sig från lösningskategorin ovan genom att den nya plattform som man väljer körs som molntjänst istället för i den egna infrastrukturen. Detta innebär vissa fördelar som att drift och underhåll förenklas och att det inte ställs några ytterligare krav på teknisk kompetens inom organisationen. Samtidigt medför det några nackdelar som att eventuella behov av integration med existerande system blir svårare att realisera samt att en molnlösning innebär en återkommande kostnad. De övriga konsekvenerna listade ovan, behov av datakonvertering och behov av ny användarkompetens är desamma.
