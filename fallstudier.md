# Fallstudier

## Fallstudie 1: Sammarbete för krisberedskap

I en krissituation är det viktigt att ha tillgång till så mycket relevant information som möjligt. Det kan innefatta information om geografi, miljö, skyddsområden, brandskydd, sjukvård, fastigheter, demografi, beredskap, vatten och framförallt vad som är status kring olika insatser i den aktuella situation. 

Det innebär att en mängd olika organisationer måste dela med sig av information som de fövaltar, det kan innefatta kommuner, landsting, lantmäteriet, naturvårdsverket, sjöfartsverket, vattenmyndigheterna, samhällets alarmeringstjänst, myndigheten för samhällskydd och beredskap, civilförsvaret och naturligtvis det svenska försvaret, listan går att göra längre och varierar beroende på situation.

### Krav på IT-system
För IT-system som är inblandade i informationsförsöjning i krissituationer ska kunna ge en effektiv informationshantering finns flera saker att tänka på:

1. IT-lösningar bör vara pålitliga även när de belastas hårt av olika parter, tex får man betänka att såval experter, media samt intresserade och drabbade medborgare söker information samtidigt. 
2. Informationen bör vara tillgänglig på ett ställe, det är inte lämpligt att kräva av människor i en krissituation att de ska behöva gå in i flera olika system för att få ut den information de behöver då det är både tidsödande och skapar felskällor.
3. Informationen kring ting man vill ha information kring, tex platser, fastigheter, organisationer, insatser osv bör vara sammaställd, inte utspridd i många dokument, tabeller eller andra dataformat som minskar överskådligheten.


### Varför Länkade data är en bra lösning

Det är enkelt att se hur kraven ovan löses naturligt med länkade data:

1. Länkade data bygger i grunden på webbens arkitektur, detta innebär att det finns väl beprövade lösningar för att hantera skalbarhet och redundans. (*) 
2. Länkade data innebär att man använder ett enhetligt format för data. Detta gör att man utan problem kan samla ihop (cacha) data från olika källor i samma databas. Nya datakällor kan inkluderas vid behov utan att någon vidare utveckling behövs.
3. En av huvudpoängerna med länkade data är just att man länkar samman information. Information som är sammanlänkad är en bra grund för att skapa olika sammanställningar då det går att upptäcka vilka benämningar på ting som är samma, snarlika eller hör ihop på något sätt.

(*) Principerna bakom webbens arkitektur, som kallas REST, medför bland annat att det finns standardiserade sätt att cacha data. Detta ska jämföras med tjänstebaserade arkitekturer (SOA) som innebär att man introducerar flaskhalsar och en ökad komplexitet som innebär att det är betydligt svårare att hantera skalbarhet och redundans.

Varför just länkade data är en bra lösning för att kunna sammanställa information från olika är ett intressant problem som är värt att utvecklas en aning.

### Länkade data är bra på att hantera en stor mängd olika och oväntade sammanställningar

Om man vet i förväg vilka typ av kris som man förväntar sig kan man i lugn och ro inventera vilken information som behövs. Sen får man se till att automatisera processen att hämta, formatera om, matcha identifierare, översätta relevanta vokabulärer och slutligen kombinera informationen på det sätt som efterfrågas. Man kan se det som att varje sammanställning av information blir en ny och separat vy på informationen.

Det finns dock tre huvudsakliga problem med detta angreppsätt:
1. Om mängden av olika potentiella kriser är stor så kan det innebära mycket jobb
2. Potentiellt kan det vara problematiskt att matcha information mellan olika datakällor. Detta gäller särskilt om ingen har gjort en ansats att harmonisera datauttrycken, tex så kan vokabulärer vara inkompatibla vilket i värsta fall kan kräva manuell hantering. 
3. Förändringar i hur informationen uttrycks hos en eller flera datakällor kan kräva att mycket av nedlagt arbete behöver ses över eller göras om.

Med länkade data börjar man i någon mening i andra änden. Man fokuserar på informationen i sig och försöker se hur man kan få den att hänga ihop mellan organisationer. Det innebär att varje organisation bör se på sin information som en del i ett större pussel (en web av data). Varje potentiell sammanställning av information bör därmed motsvaras av en kombination av ett eller flera faktiska samband mellan existerande informationbitar. Och om en sammanställning av någon anledning inte går att genomföra utifrån en mängd länkade data beror det antingen på att nödvändig information faktiskt saknas eller att någon inte har skapat länkar eller återanvänt vokabulärer som man ska när man definierar sina länkade data uttryck.

## Fallstudie 2: Nobel Media - förstärka den egna webbplatsen


//TODO Matthias issue 13