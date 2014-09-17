# Fallstudier
Nedan beskriver vi två fallstudier, länkade nobelpris och K-samsök, där länkade data har införts för att ge mervärde och ökad kvalitet. Därefter diskuterar vi ett fiktivt scenario för att visa på hur länkade data har potentialen att lösa breda samverkansproblem mellan en stor mängd organisationer.

## Fallstudie 1: Länkade nobelpris - att förstärka en webbplats med extern information
Nobel Media AB är en relativt liten organisation som bland annat förvaltar nobelprize.org, den officiella webbplatsen om nobelpris och nobelpristagare. Webbplatsen innehåller både lättillgänglig och fördjupande information i form av fakta, texter och bilder som går ända tillbaka till de första nobelprisen år 1901. För de senare åren finns också en hel del filmmaterial att ta del av.

Nobel Media lägger ner mycket tid och engagemang på att förmedla information kring nobelprisen, men det är i stort sett omöjligt att ge en komplett bild av sammanhanget. Varje nobelpris är resultaten av en eller flera forskares hängivna arbete under många år, till viss del synligjort genom artiklar i journaler och andra former av publikationer. Men mycket av denna berikande information finns dock tillgänglig i andra datakällor. Startpunkten för arbetet med länkade nobelpris är alltså observationen att dessa datakällor, iallafall de som är öppet tillgängliga, har potentialen att komplettera den information som nobelprize.org själv underhåller.

### Målsättningar
Under 2013 initierades ett projekt att skapa länkade nobelpris där de viktigaste målsättningarna var:

1. Berika webbplatsen med information från andra källor
2. Kvalitetsäkra den egna informationen
3. Ge andra tillgång till den underliggande informationen som förvaltas av nobelprize.org

### Arbete och resultat av att införa länkade nobelpris
En nödvändigt första steg innefattade att skapa länkade data uttryck kring nobelprisen. På grund av att den existerande databasen var väl organiserad blev arbetsinsatsen någorlunda okomplicerad. Som en del av arbetet identifierades lämpliga vokabulärer att återanvända. Det slutliga valet blev en kombination av DCTerms, FOAF och DBpedia ontology samt en komplementär vokabulär som utvecklades specifikt för länkade nobelpris. I denna process upptäcktes några smärre brister i kvalite i den existerande databasen som dock lätt kunde åtgärdas. Ett trevligt resultat är att utöver det existerande databasschemat finns nu också en väldokumenterad informationsmodell för nobelprize.org. Det vill säga, målsättningarna 2 och 3 uppnåddes med detta arbete.

I nästa steg skapades relationer (länkar) till andra datakällor. En semi-automatiskt angreppsätt valdes vilket innebar att en mindre mängd relationer skapades med automatik (några hundra) som därefter manuellt veriferades att de var korrekta. Dessa relationer var viktiga i sig men gav också effekten att nya relationer kunde etableras automatiskt genom att ställa frågor via SPARQL mot de datakällor det redan fanns länkar till. Effekten av detta är att de flesta nobelpristagare idag har relationer till DBpedia, Freebase, OpenLibrary, Yago, VIAF
och Umbel. Därtil finns ett pågående arbete med att förbinda nobelpristagarna med publikationer via LinkedLifeData och Bio2RDF som kommer ta lite mer tid att få komplett.

I ett tredje steg berikades webbsidor på nobelprize.org med sektioner som visade upp information om nobelpristagare från andra datakällor. Exakt vilken information som valdes att visas upp på sidorna var ett redaktionellt beslut som fattades baserat på relevans, täckning (hur ofta information fanns uttryckt) samt informationskvalite (hur bra de faktiska värdena var). För att nå den tillförlitlighet som behövs för nobelprize.org användes ett länkade data cache. På det sättet isolerades den kod som skrevs från att behöva ta hänsyn till den variation i tillförliglighet de andra datakällorna uppvisade.

I ett sista steg lades en länkade data browser till som ett komplement till de vanliga webbsidorna. Syftet med detta var att ge de besökare som är intresserade att gräva vidare i länkade nobelpris och relaterad information ett verktyg där de inte behöver vara begränsad av det redaktionella urvalet.

Resultatet av de två sista stegen innebar att den första målsättningen nåddes.

## Fallstudie 2: K-samsök - öka kvalitet och tillgängliget till vårat gemensamma kulturarv
K-samsök är en aggregator för Sveriges kulturarv som drivs av Riksantikvarieämbetet sedan 2009. Att K-samsök är en aggregator innebär att den samlar och tillgängliggör information från svenska museer och andra minnesinstitutioner. 

TODO

## Fiktivt scenario: Samarbete för krisberedskap

I en krissituation är det viktigt att ha tillgång till så mycket relevant information som möjligt. Det kan innefatta information om geografi, miljö, skyddsområden, brandskydd, sjukvård, fastigheter, demografi, beredskap, vatten och framförallt vad som är status kring olika insatser i den aktuella situationen. 

Det innebär att en mängd olika organisationer måste dela med sig av information som de förvaltar. Det kan innefatta kommuner, landsting, Lantmäteriet, Naturvårdsverket, Sjöfartsverket, vattenmyndigheterna, Samhällets alarmeringstjänst, Myndigheten för samhällskydd och beredskap, Civilförsvaret och naturligtvis det svenska försvaret. Listan går att göra längre och varierar beroende på situation.

### Krav på IT-system
För att IT-system som är inblandade i informationsförsöjning i krissituationer ska kunna vara effektiva finns en mängd saker att tänka på, tre av de viktigaste är:

1. IT-lösningar bör vara pålitliga även när de belastas hårt av olika parter, t.ex. får man betänka att såväl experter, media samt intresserade och drabbade medborgare söker information samtidigt. 
2. Informationen bör vara tillgänglig på ett ställe. Det är inte lämpligt att kräva av människor i en krissituation att de ska behöva gå in i flera olika system för att få ut den information de behöver då det är både tidsödande och skapar felskällor.
3. Informationen kring ting man vill ha information kring, t.ex. platser, fastigheter, organisationer, insatser osv. bör vara sammanställd, inte utspridd i många dokument, tabeller eller andra dataformat som minskar överskådligheten.

### Varför länkade data är en bra lösning

Det är enkelt att se hur kraven ovan löses naturligt med länkade data:

1. Länkade data bygger i grunden på webbens arkitektur. Detta innebär att det finns väl beprövade lösningar för att hantera skalbarhet och redundans. (*) 
2. Länkade data innebär att man använder ett enhetligt format för data. Detta gör att man utan problem kan samla ihop (cacha) data från olika källor i samma databas. Nya datakällor kan inkluderas vid behov utan att någon vidare utveckling behövs.
3. En av huvudpoängerna med länkade data är just att man länkar samman information. Information som är sammanlänkad är en bra grund för att skapa olika sammanställningar då det går att upptäcka vilka benämningar på ting som är samma, snarlika eller hör ihop på något sätt.

(*) Principerna bakom webbens arkitektur, som kallas REST, medför bland annat att det finns standardiserade sätt att cacha data. Detta ska jämföras med tjänstebaserade arkitekturer (SOA), som innebär att man introducerar flaskhalsar och en ökad komplexitet, och som innebär att det är betydligt svårare att hantera skalbarhet och redundans.

Varför just länkade data är en bra lösning för att kunna sammanställa information från olika källor är en intressant frågeställning som utvecklas nedan.

### Länkade data är bra på att hantera en stor mängd olika och oväntade sammanställningar

Om man vet i förväg vilka typ av kris som man förväntar sig kan man i lugn och ro inventera vilken information som behövs. Sedan får man se till att automatisera processen att hämta, formatera om, matcha identifierare, översätta relevanta vokabulärer och slutligen kombinera informationen på det sätt som efterfrågas. Man kan se det som att varje sammanställning av information blir en ny och separat vy över informationen.

Det finns dock tre huvudsakliga problem med detta angreppsätt:
1. Om mängden av olika potentiella kriser är stor så kan det innebära mycket jobb. 
2. Potentiellt kan det vara problematiskt att matcha information mellan olika datakällor. Detta gäller särskilt om ingen har gjort en ansats att harmonisera datauttrycken, t.ex. så kan vokabulärer vara inkompatibla vilket i värsta fall kan kräva manuell hantering. 
3. Förändringar i hur informationen uttrycks hos en eller flera datakällor kan kräva att mycket av nedlagt arbete behöver ses över eller göras om.

Med länkade data börjar man i någon mening i andra änden. Man fokuserar på informationen i sig och försöker se hur man kan få den att hänga ihop mellan organisationer. Det innebär att varje organisation bör se på sin information som en del i ett större pussel (en webb av data). Varje potentiell sammanställning av information bör därmed motsvaras av en kombination av ett eller flera faktiska samband mellan existerande informationbitar. Om en sammanställning av någon anledning inte går att genomföra utifrån en mängd länkade data beror det antingen på att nödvändig information faktiskt saknas, att någon inte har skapat länkar eller återanvänt vokabulärer som man ska när man definierar sina länkade data-uttryck.