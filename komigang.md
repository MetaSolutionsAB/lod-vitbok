# Att komma igång med länkade data

Val av dataset => hänvisa till e-delegationen och SKL

## Snabbstart

Lägg upp lite turtle filer i en webbkatalog.
Experimentera med vilka properties, klasser, datatyper och länkar som känns bra.


## Design av Länkade data

### URI design
### Val av vokabulärer

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
1. Driftsättningen är klar
2. Användargränsnitt för redigering och presentation är redan på plats
3. Organisationen är van vid hanteringen
4. Integration med andra underliggande system är klar

Men det finns saker som kan tala emot användning av en existerande plattform, tex:
1. Behov av ändrad informationsmodell för att stödja det avsedda länkade data uttrycket som ofta är mer kvalificerat.
2. Behov av ett förbättrat och mer lämpligt användargränsnitt  för redigering och presentation

### Ny plattform
I vissa situationer är det bättre att byta till en ny plattform, tex om ett eller flera av följande omständigheter beskriver situationen väl:
1. Datasettet är relativt självständig och det finns få eller inga behov av att integrera med andra underliggande system
2. Informationsmodellen behöver ändras
   1.  då organisationens behov har förändrats
   2. för att stödja ett mer kvalificerat länkade data uttryck
3. Det behövs ett förbättrat och mer lämpligt användargränsnitt  för redigering och presentation

## Kort analys av lösningskategorier

Nedan listas först de tre olika lösningskategorier där man på olika sätt lägger till stöd för länkade data utan att byta plattform. Därefter följer de två lösningsgategorier där en ny plattform introduceras. För att förenkla resonemangen en aning så ignorerar vi eventuella behov att integrera med andra underliggande system i de två sista lösningskategorierna.


### 1. Utvidga plattformen
Syftet här är att utvidga en existerande plattform med stöd för länkade data. Antingen ett generellt stöd för länkade data eller mer specifikt för en begränsad mängd data. Naturligtvis blir en sådan utvidgning specifik för varje plattform. Det finns två huvudvägar att gå:

*Syntaktisk lösning* - denna lösning innebär att man i ett existerande presentationslager som hittills levererat html lägger till en mall som istället producerar RDF i något format.

*Semantisk lösning* - denna lösning innebär att man skriver kod som översätter mellan en intern representation av datamodellen och informationsmodellen i RDF genom att jobba mot ett RDF API, typiskt tillhandahållet via ett RDF bibliotek. 
Nackdelen med den syntaktiska lösningen är att man skapar en mappning till en syntax, inte till RDF som språk. Den semantiska lösningen jobbar istället mot RDF som språk och gör det enklare att uppfylla de tekniska kraven 2, 4 och 6. Båda lösningarna innebär en betydande mängd hårdkodning där man binder sig till den interna representationen av informationsmodellen.

### 2. Lager ovanpå plattformen
Skillnaden mot alternativet ovan (utvidga plattformen) är att man jobbar med någon form av etablerat datagränsnitt istället för en intern representation av informationsmodellen. Till exempel kan det vara så att datan regelbundet dumpas ut som filer (CSV, XML etc.) eller att det går att komma åt datan via ett API (Web Services, REST etc.). I vissa situationer kan också en välstrukturerad databas fungera som ett datagränsnitt. Existensen av någon form av datagränssnitt gör att man kan skapa stöd för länkade data i ett lager som är tämligen oberoende av den existerande plattformen. Beroende på val av programmeringsspråk och ramverk kan lagret driftsättas olika nära den existerande plattformen.

Lagret kan utgöras av standardkomponenter som plockas samman, alternativt används en dedikerad plattform som är lämpad för uppgiften.

### 3. Molntjänst ovanpå plattformen
Denna kategori av lösningar påminner starkt om lager ovanpå plattformen. Skillnaden är att lagret nu har lyfts ut till en oberoende tjänst i molnet (SaaS). Lösningar bör inkludera ett användargränssnitt för att styra vilken mekanism som ska användas vid inhämtning av data och vilken form av konvertering till länkade data som ska göras.

För att en lösning ska hamna i denna kategori ska den isolera organisationen från drift och underhåll av den mjukvara som exponerar länkade data. Kompetens för hur det länkade data uttrycket ska se ut och hur den egna datan ska översättas till detta uttryck är dock fortfarande nödvändigt att ha inom den egna organisationen. Sådan kompetens kan etableras hos informatiker inom organisationen, eventuellt med stöd utifrån. Efter initial etablering kan i de flesta fall denna kompetens underhållas internt inom organisationen och även bidra till ett vidare perspektiv på den egna informationsmodellen som ofta är av nytta vid samtal och samarbete med andra organisationer. Denna nytta är komplementär till nyttan av att ha ett länkade data lager för att faktiskt genomföra en dataintegration med andra organisationer.

### 4. Driftsätta internt
Att flytta relevant data till en plattform som har stöd för länkade data innebär förstås att man måste hantera de konsekvenser som normalt uppstår vid byte av plattform.

*Datakonvertering* - Relevant data måste flyttas och konverteras till ett format som den nya plattformen kan ta emot.
Ny situation för drift och underhåll - Den nya plattformen kommer med nya krav på drift och underhåll. Rutiner för drift påverkas förstås av vilken typ av plattform det handlar om, t ex .NET jämförelsevis med java.

*Ny teknisk kompetens* - Den nya plattformen kommer kräva ny teknisk kompetens av IT avdelningen och/eller hos en extern partner särskilt vid behov av ändringar eller uppgraderingar.

*Ny användarkompetens* - Såvida man inte bygger om gränssnittet till att likna det gamla så kommer förändringen innebära en omställning för de som jobbar i systemet.
I något läge måste man också se till att existerande data mappas mot ett uttryck i RDF. Om den nya plattformen använder RDF internt sker konverteringen direkt. Om den nya plattformen har en annan intern representation som sen mappas mot RDF i ett senare skede hamnar man i en situation där man måste göra två konverteringar, först till den nya plattformens interna datamodell och sen till RDF. Förhoppningsvis är dock den senare mappningen av enklare karaktär om plattformen är en någorlunda kompetent länkad data plattform.

En allmän reflektion är att omfattning av konsekvenserna ovan beror på hur stor mängden av relevant data och hur komplicerad den ursprungliga plattformen är. För små mängder data och med endast ett fåtal användare så är konsekvenserna troligtvis ganska små.

### 5. Driftsatt i molnet
Denna lösningskategori skiljer sig från lösningskategorin ovan genom att den nya plattform som man väljer körs som molntjänst istället för i den egna infrastrukturen. Detta innebär vissa fördelar som att drift och underhåll förenklas och att det inte ställs några ytterligare krav på teknisk kompetens inom organisationen. Samtidigt medför det några nackdelar som att eventuella behov av integration med existerande system blir svårare att realisera samt att en molnlösning innebär en återkommande extern kostnad. De övriga konsekvenerna listade ovan, behov av datakonvertering och behov av ny användarkompetens är desamma.

## Jämförelse mellan lösningskategorier