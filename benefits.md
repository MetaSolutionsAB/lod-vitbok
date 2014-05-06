Fördelar med länkade data
=========================

Utan tvekan är webben en oerhört framgångsrik och hittils oöverträffad konstruktion när det gäller
att ge oss människor tillgång till stora mängder information snabbt och enkelt.

Men den webb vi ser idag är nästan uteslutande en vy genererad utifrån underliggande informationsmängder, dvs data i olika former. Dessa data hanteras av olika system (som databaser) och förvandlas
till webbsidor och webbapplikationer oftast millisekunder innan du ser resultatet i din browser.

Vilka vyer/tjänster som skapas och görs tillgängliga för dig bestäms oftast av den organisation
som ansvarar för datan och faktorer som ekonomi, tid, kompetens och förväntad användning spelar stor roll för de prioriteringar som görs.

En naturlig slutsats blir att det finns stor potential i att göra underliggande data tillgänglig för en större krets. Dels skulle det kunna medföra att nya vyer/tjänster skapas som hittils inte prioriterats. Dels kan data kombineras på nya sätt vilket möjliggör helt nya vyer/tjänster som utan öppen data skulle kräva sammordning mellan flera dataägare.

Men hur ska man exponera data? Vilka format ska man använda och vilka principer ska man följa? Vi listar här några av de viktigaste fördelarna man får av att just använda sig av länkade data:
<br>
<table>
<tr><td>1. </td><td>Data blir en del av webben</td><td>skicka med data i webbsidor</td></tr>
<tr><td>2. </td><td>Förbättrad sökbarhet</td><td>sökmaskiner förstår dina data bättre än dina webbsidor</td></tr>
<tr><td>3. </td><td>Interoperabilitet</td><td>lättare att utbyta och samköra data</td></tr>
<tr><td>4. </td><td>Återanvändbara datauttryck</td><td>mindre jobb för den egna organisationen</td></tr>
<tr><td>5. </td><td>Kompetenta datauttryck</td><td>inga fyrkantiga lådor i runda hål</td></tr>
<tr><td>6. </td><td>Ökad datakvalité via länkar</td><td>positionera dina data och externalisera information</td></tr>
</table>

Att dessa fördelar följer från valet av länkade data är inte helt självklart, nedan följer en fördjupning och analys för den intresserade.

1. Data blir en del av webben - skicka med data i webbsidor
-----------------------------
Först och främst så kan länkade data skickas med inne i vanliga webbsidor. Med hjälp av W3C rekommendationen *RDFa* kan man ge semantik till olika delar av en webbsida utöver vad som ingår i standarden för HTML. Till exempel så finns det stöd i HTML för att tala om att något är en rubrik, en paragraf osv. Men om man vill uttrycka att ett block av information representerar en person och vad som är förnamn och efternamn så räcker inte HTML. Istället får man använda sig av länkade data i form av en lämplig vokabulär, till exempel Friend Of A Friend (FOAF). Man annoterar då HTML uttrycket med RDFa för att förtydliga att blocket motsvarar en `foaf:Person`, vilka delar som motsvar `foaf:givenName` och `foaf:familyName`. Så här kan det se ut (foaf = http://xmlns.com/foaf/0.1/):

    <body vocab="http://xmlns.com/foaf/0.1/">
      <div typeof="Person">
        <span property="givenName">John</span>
        <span property="familyName">Doe</span>
      </div>
    </body>

Utöver RDFa bygger länkade data på samma principer som webben, det vill säga användning av URIer, access till data sker direkt via HTTP samt användning av länkar för att binda samman data. Det innebär att de tekniker som ofta används på webben för att ge stöd åt webbsidor och webbapplikationer också kan använda länkade data. Till exempel innnebär det att länkade data går att hämta via javascript anrop (Ajax) samt att det går att välja format som är enkela att hantera i en webbrowser (tex JSON).

Visserligen kan man hävda att även andra sätt att representera data går att utnyttja i samband med webben. Men när man studerar vad som är framgångsrikt på webben idag så ser man att enkelhet och integration med andra webbteknologier är starkt premierat. Relevanta exempel är hur JSON ökar i popularitet över XML och REST baserade tjänster ökar i förhållande till Web Services. (Länkade data är i grunden baserat på REST och det finns flera lämpliga JSON format som man kan välja mellan.)

En annan viktig princip som delas mellan webben och länkade data är antagandet om den öppna världen. Detta antagande innebär att man måste hantera att länkar bryts, att information saknas, inte kan nås
eller ändras på ett sätt som man inte har kontroll över. Dessa antaganden har visat sig fundamentala för att storskaliga och de-centraliserade informationssystem ska kunna växa dynamiskt. Det bör noteras att trots att antagandet om den öppna världen låter negativt så är det en styrka då system som designas för att klara av detta bättre klarar av att hantera den flora av information som finns på webben idag.

2. Förbättrad sökbarhet - sökmaskiner förstår dina data bättre än dina webbsidor
-----------------------------------
På senare tid har det skett ett paradigmskifte i hur moderna sökmaskiner fungerar. Man söker i större utsträckning efter kunskap snarare än efter webbsidor. I Google manifesterar sig detta dels genom att man får förslag på personer, filmer, företag osv. när man skriver in en sökning och dels att man får upp faktarutor relaterat till det man sökt på.
Grunden för detta är att sökmaskinerna kompletterar sin indexering av webbsidor med en kunskapsbas. Till exempel så introducerade Google sin knowledge graph 2012 och Microsofts introducerade Bings Satori Knowledge Base 2013.

En viktig grund för sådana kunskapsbaser är länkade data, tex så klarar Googles Knowledge Graph av att läsa in länkade data som JSON-LD eller inbäddat som RDFa i webbsidor. Man kompletterar också med existerande kunskapsbaser som alla är länkade data vänliga, tex Freebase, Wikipedia, CIA-factbook osv.

3. Interoperabilitet - lättare att utbyta och samköra data
-------------------------------------------
Interoperabilitet betyder i grunden att när två parter utbyter information så ska mottagarens agerande (i relation till informationen) stämma överens med avsändarens intention. Detta kräver någon form av överenskommelser i förväg kring hur informationen ska överföras och tolkas. Sådana överenskommelser kan vara specifika för två parter, eller etablerade i ett vidare sammanhang, tex i form av en standard.

En situation som ofta uppstår när man ska använda en given standard är att den bara täcker in en del av de behov man har. En naturlig reaktion är då att komplettera med byggstenar från andra standarder och eventuellt skapa nya konstruktioner för att nå bättre täckning av behoven. 

Det är i sådana situationer som Länkade data visar sin styrka genom att tillhandahålla en gemensam bas och en mängd mer eller mindre standardiserade byggstenar som kan kombineras på olika sätt. Basen består av ett gemensamt språk (RDF tillsammans med RDFS och OWL) som tillåter att man definierar byggstenar i form av klasser, egenskaper, vokabulärer osv.

Givet att länkade data tillåter oss att sätta samman vårat datauttryck utifrån en mängd byggstenar, vad får det för konsekvenser? Låt oss tänka på två olika former av data utbyte:

1. Data exponeras för en given mottagare.
2. Data exponeras för flera olika, delvis okända mottagare.

### Given mottagare
Om man man har en given mottagare kan man hävda att det enklaste är att i förväg komma överens om ett eget datauttryck, tex i XML eller JSON eller kanske definera en specifik Web Service. Men då tappar man fördelar som har med standardisering att göra:

* Någon annan har redan gjort de flesta misstagen och jämnat vägen
* Dokumentation existerar redan delvis
* Verktyg finns för att hantera datan
* Lösningen är skalbar då webben skalar
* Kunskap om relevanta datauttryck finns redan hos specialiserade aktörer
* Krävd kompetens är i större omfattning generell än specifik

### Flera olika och delvis okända mottagare
När mottagarna ökar i antal och ibland också är okända är det behändigt att kunna luta sig mot standarder i så stor uttsträckning som möjligt. Notera att olika mottagare ofta behöver olika information och kan därmed ignorera delar av datan som inte är relevanta för dem. Det kan också innebära att specialiserade aktörer redan förstår och har stöd för de delar av datan som de är intresserade av. (Förutsatt att avsändaren har valt att beskriva sin data med hjälp av relevanta och allmänt accepterade byggstenar.)

Alternativet med egna datauttryck är mindre tilltalande då det kräver en mer nogrann och omfattande egen dokumentation för att hålla risken för felaktig användning låg.

4. Återanvänd datauttryck - mindre jobb för den egna organisationen
----------------------------------------------
Som vi nu konstaterat tillåter länkade data oss både att definiera nya byggstenar, förfina existerande byggstenar och att återanvända redan existerande.

Nedan är ett exempel där byggstenar från tre olika källor används för att beskriva en bil och dess ägare (ursprunget av byggstenarna indikeras av de tre olika namnrymderna `rdf`, `dct` och `co` där co står för car ontology).

    http://example.com/myCar  rdf:type    co:Car ;
                              co:brand    co:Volvo ;
                              dct:title   "My cool car" .

Notera att vem som helst kan introducera nya byggstenar, men att det inte med automatik innebär att andra utöver de närmast sörjande kommer att återanvända dem. Det finns ingen central aktör som godkänner, sprider information och rekommenderar andra att återanvända introducerade byggstenar. Istället sker detta mer organiskt, ofta genom att man fyller ett behov som inte redan är löst, är tydlig i sin design och förklaring av byggstenarna och är framgångsrik i sin kommunikation med andra.

Det finns idag en vid flora av byggstenar (terminologier, vokabulärer) och att ge en mer täckande bild är klart utanför ramarna för detta kapitel och denna bok. Men vi kan iallafall nämna några av de idag allmänt etablerade och ofta använda (vi hoppar över RDF, RDFS, OWL och SKOS då de är på nivån av vokabulärdefinition snarare än en speciell vokabulär):

### Dublin Core Terms (DCT)
Introducerades ursprungligen för att beskriva digitala publikationer men används nu mera brett. Innehåller nyttigheter som `dct:title`, `dct:description`, `dct:created`, `dct:modified`, `dct:creator`, `dct:subject`, osv.
### Friend Of A Friend (FOAF)
Skapades för att beskriva personer och organisationer online, innehåller nyttigheter som: , `foaf:Person`, `foaf:givenName`,`foaf:familyName`,`foaf:knows`,`foaf:mbox`,`foaf:homepage`, osv.
### Semantically Interlinked Online Communities (SIOC)
Introducerade för att beskriva den aktivitet som finns på den sociala webben idag, tex siter, bloggar, forum, online konton, personer osv.
### Vocabulary of Interlinked Datasets (VoID)
Används för att beskriva egenskaper hos ett dataset, tex var det publiceras, av vem, vad det innehåller osv.

5. Kompetent datauttryck - inga fyrkantiga lådor i runda hål
---------------------

6. Öka kvalitén med länkar - positionera dina data och externalisera information
-----------------------
