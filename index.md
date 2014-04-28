# Introduktion till länkade data (LD)

## LD på 1 minut

Länkade data handlar i huvudsak om tre principer:

* enhetlig informationsmodell - data som påståenden om ting (RDF)
* addresserbarhet - låt varje ting ha en webbaddress där man kan hämta dess påståenden
* länka ihop - förbind ting med varandra genom relationer av olika slag

Dessa principer innebär:

* lättare att förstå och återanvända varandras data
* specialisera data genom att identifiera och länka till data som redan finns och fokusera på specifika och unika mervärden
* data blir bättre tillgänglig på webben och i sökmotorer
* tekniker för kunskapshantering blir lättare att använda

## Webben och Länkade data
Webben av idag har stor spridning och är i många fall det gemensamma kitt som binder samman aktörer över kulturella och språkliga gränser. Webben används ofta till både spridning och inhämtning av information samt till att bygga mer avancerade webbapplikationer. Trots denna vida användning är webben i grunden tämligen enkel och dess tekniska beståndsdelar innefattar i huvudsak:

* URI - ett enhetligt sätt att addressera olika informationsresurser (ofta webbsidor)
* HTTP - ett protokoll som används för att hämta och skicka information
* HTML - ett format för att presentera information och interagera
* Länkar - ett sätt att binda samman informationsresurser

Webben är trots sina vida användningsområden i huvudsak ett presentationsmedium för människor. Det innebär att webben, och framförallt HTML, oftast inte lämpar sig för att utbyta information mellan system.

För att utbyta information mellan system är istället det snarlika initiativet *Länkade data* ett bättre alternativ. Precis som webben bygger länkade data på användning av URI:er och HTTP, men istället för HTTP används *RDF*. I korthet kan man säga att RDF används för att uttrycka *påståenden* om *ting*, där ting är vad som helst som kan identifieras av en URI. Det är alltså inte bara webbsidor som identifieras av URI:er (webbaddresser) utan även fysiska föremål, historiska händelser, abstrakta begrepp osv. Det vill säga, vi kan ge URI:er även till ting som inte har en given digital representation. Sammanfattningsvis, länkade data innefattar i huvudsak följande tekniska beståndsdelar:

* URI - ett enhetligt sätt att addressera ting
* HTTP - ett protokoll som används för att hämta påståenden om ting via deras URI:er
* RDF - ett språk för att uttrycka påståenden om ting
* länkar - påståenden om relationer mellan ting

## LD - stjärnmodellen

I samband med öppna data och länkade öppna data använder man ofta en femstjärnig skala för att markera hur tillgänglig datan är:

<span style="visibility:hidden">★★★★</span>★ gör din information tillgänglig på Webben under en öppen licens<br>
<span style="visibility:hidden">★★★★★</span> (även svårbearbetade format som skannade dokument är ok)<br>
<span style="visibility:hidden">★★★</span>★★ gör informationen tillgänglig som strukturerad data<br>
<span style="visibility:hidden">★★★★★</span> (t. ex., Excel format istället för en bild av en tabell)<br>
<span style="visibility:hidden">★★</span>★★★ använd icke-proprietära format<br>
<span style="visibility:hidden">★★★★★</span> (t. ex., CSV istället för Excel)<br>
<span style="visibility:hidden">★</span>★★★★ använd URI:er för att identifiera ting,<br>
<span style="visibility:hidden">★★★★★</span> och RDF för att uttrycka påståenden om dem<br>
★★★★★ länka dina data till andras data, det ger sammanhang

Nedan beskrivs fördelar med stjärnnivåerna, notera att fördelar ackumuleras ju fler stjärnor man når.

### En stjärna - data tillgängligt digitalt
Om du lägger ut din data så att den är digitalt tillgänglig och det är tydligt att folk får använda datan
(i form av en licens) så får du alltid en stjärna.
Till exempel, om man redan har information tillgänglig på vanliga webbsidor och kompletterar hur informationen
får vidareanvändas är första stjärnan säkrad.

Det är ett stort steg att gå från att behöva explicit begära data från en organisation till att informationen
finns tillgänglig digitalt.

### Två stjärnor - öka datakvalitén
Att dela ut ett format där  data är tillgängligt på ett maskinprocessbart sätt utan att man behöver
använda någon form av riskfylld extraheringsprocess gör att andra kan förlita sig på datan i större utsträckning.
Insatsen för att använda datan i andra sammanhang har sjunkit betydligt och två stjärnor är säkrade.

### Tre stjärnor - öppna data
Med tre stjärnor minskar man behovet av investeringar i proprietär teknologi hos de som vidareutnyttjar datan.
Då man förlitar sig på öppna format som antingen är väldigt enkla (t ex CSV formatet) eller väl dokumenterade
skapar man förutsättningar för mer långsiktig hållbar data.
Man minskar även risken för felaktig bearbetning av information när proprietära format hanteras av tredje parts
mjukvara (särskilt när fullständig dokumentation om formatet saknas).

### Fyra stjärnor - enhetligt informationsuttryck och tydlig semantik
Med den fjärde stjärnan uppnås flera saker:

* Genom att man delat upp datan i ting som har globala identifierare, URI:er, möjliggör man för andra att
referera till den egna datan på ett sätt som är standardiserat och effektivt.
* Dataintegration med andra parter förenklas då det datauttryck man väljer inte är bundet till det egna datalagret.
Istället beskriver man sin data med hjälp av existerande termer, ofta anpassar och kombinera man en eller
flera existerande informationsmodeller efter egna behov. Detta innebär att när den egna datan ska vidareutnyttjas
kan andra parter redan ha kännedom eller till och med utvecklat stöd för att förstå delar av informationsmodellen.
* Den informationsmodell man utvecklat är med stor sannolikhet mer genomtänkt då den är en
vidareutveckling av tidigare informationsmodeller.
* Då datan uttrycks med RDF, ett standardiserat språk för hantera information så finns redan många
mjukvarubibliotek och tjänster som kan användas för att skapa, validera, lagra, maskinellt bearbeta,
kombinera, redigera och utforska datan med existerande frågespråk.

### Fem stjärnor - länkade öppna data
Den femte stjärnan ger flera ytterligare fördelar:

* Förtydliga din data genom att länka till väletablerade och väl uttänkta termer/begrepp
istället för att skapa egna eller skriva fritext.
* Använd data/begrepp/termer från andra datakällor direkt när behov uppstår utan att först behöva fokusera
på tekniska aspekter av dataintegration som import, konvertering och drift/underhåll.
* Effektiv använd länkning kan leda till att öka dataspecialisering då du kan fokusera på att underhålla de
delar av datan som är unik för din organisation och mindre med information som redan finns i andra datakällor.
* Länkar till andra datakällor ökar förtroendet för att din data är genomtänkt på ungefär
på samma sätt som referenser i artiklar visar på att informationen är förankrad i ett större sammanhang.
* Länkar ut ökar din datas synlighet då det blir en del av det större länkade data molnet vilket i ett
längre perspektiv kan leda till återanvändning i nya sammanhang, dvs i form av länkar in.

LD - en global rörelse
----------------------
