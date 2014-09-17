# Teknikplattformar

I listorna nedan ingår plattformar som ett eller flera företag erbjuder kommersiell support för, men det listas även plattformar eller lösningar utan kommersiell support. Det senare förutsätter intern kompetens för att lösa problem som eventuellt kommer att visa sig under utveckling och drift.

Om möjligt och lämpligt så består beskrivningen av varje teknisk plattform av följande delar:

* kort beskrivning,
* aktivitetsgrad (kommersiell support, aktiv community, osv),
* användning och kunder,
* licens.

Plattformarna är grupperade under de lösningskategorier som introducerades i kapitlet [kom igång](komigang.html) samt under en extra gruppering _egen lösning_ där man bygger mer själv och återanvänder endast ett triple store.

1. [Utvidga plattformen](#utvidga)
2. [Lager ovanpå plattform](#lager)
3. [Molntjänst ovanpå plattformen](#plattform-moln)
4. [Ny plattform internt](#byta)
5. [Ny plattform i molnet](#moln)
6. [Egen lösning baserat på lämplig triple store](#egen)

## <a name="utvidga"></a>Utvidga plattformen

### Semantic SharePoint

Semantic SP är en integration av PoolParty (se nedan) med Microsoft SharePoint. Semantic SharePoint fokuserar på kontrollerade vokabulär och textanalys för att extrahera semantisk information ur ostrukturerade data (text).

Företaget [Semantic Web Company](http://www.semantic-web.at) erbjuder licenser och hostning samt kommersiell support till plattformen som är proprietär.

Länk: [http://www.semantic-sharepoint.com](http://www.semantic-sharepoint.com)

### Egen lösning genom att jobba med mallar

Utöver en plattform som kan integreras med t.ex. Microsoft SharePoint är det möjligt att bygga mallar (t.ex. ASP i en Microsoft-miljö) som exponerar en databas (eller delar av den) som länkade data. Detta angrepssätt är tekniskt inte särskilt avancerat och kan leda till snabba resultat, men medför en förvaltningsoverhead eftersom man inte bygger på ett ramverk som underlättar framtida anpassningar. Den osäkra skalbarheten kan riskera framtidssäkerheten av en satsning på denna lösning.

## <a name="lager"></a>Lager ovanpå plattformen

### PoolParty Semantic Suite

PoolParty är i första hand en thesaurus manager, med features såsom textanalys och harvesting av länkade data. Textanalysen är baserad på "Natural Language Processing", dvs extrahering av semantiska entiteter ur text. PoolParty verkar inte ha stöd för svenska. Textanalysen går att kombinera med thesauri som är framtagna i PoolParty.
Företaget Semantic Web Company erbjuder licenser och hostning samt kommersiell support till plattformen som är proprietär.
PoolParty används inom myndigheter, utgivare/förlag, energi- och finanssektorn.

Länk: [http://www.poolparty.biz](http://www.poolparty.biz)

### OpenLink Virtuoso med Sponger

OpenLink Virtuoso är en s.k. "universal storage engine", dvs ett backend-system som stöder relationella databaser men också triple stores. Med hjälp av Sponger-modulen kan Virtuoso importera data från många olika källor (dvs "legacy data").
Företaget OpenLink utvecklar Virtuoso och erbjuder kommersiell support. Det finns även en Open Source-edition utan support.
Virtuoso används i många olika projekt som backend, bl a av DBpedia och PoolParty.

Länk: [http://virtuoso.openlinksw.com](http://virtuoso.openlinksw.com)

### fluidOps platform

fluidOps är en molnplattform med fokus på "Big Data" som även har stöd för länkade data. Produkten "Information Workbench" är en integrationsplattform för semantisk länkning, samarbete och business intelligence.
Företaget fluid Operations utvecklar plattformen och erbjuder molntjänster såväl som kommersiell support.

Länk: [http://www.fluidops.com](http://www.fluidops.com)

### Redlink

Redlink är en plattform för semantisk berikning och länkade data som bygger på ett flertal Open Source projekt (Apache Solr, Marmotta och Stanbol). Produkten är inte särskilt väldefinierad eftersom företaget Redlink, som erbjuder kommersiell support, befinner sig i uppstartsfasen.

Länk: [http://redlink.co](http://redlink.co)

### COEUS

COES är ett backend-ramverk för att bygga applikationer i semantiska webben. Ramverket är utvecklat av ett universitet och är Open Source. Kommersiell support erbjuds inte av universitetet.

Länk: [http://bioinformatics.ua.pt/coeus/](http://bioinformatics.ua.pt/coeus/)

### GNOSS

GNOSS är en plattform för att bygga sociala nätverk med dynamisk publicering av innehåll i en länkade data-miljö.
Företaget RIAM I+L Lab erbjuder kommersiell support och molntjänster. Mjukvaran är inte Open Source.
Plattformen används huvudsakligen inom kulturarvssektorn på den iberiska halvön.

Länk: [http://www.gnoss.com](http://www.gnoss.com)


## <a name="plattform-moln"></a>Molntjänst ovanpå plattformen

### Dydra

Dydra är en grafdatabas i molnet med stöd för RDF och SPARQL. Plattformen är i "closed beta" och det är oklart när och om produkten kommer att släppas för produktivt bruk för allmänheten.

Länk: [http://dydra.com](http://dydra.com)

### LODify

LODify är en molntjänst som underlättar att publicera länkade öppna data. LODify stöder automatisk omvandling av existerande datakällor, men även manuell datapublicering, t.ex. för att komplettera och kvalitetssäkra data. LODifys importmoduler klarar av att importera data i olika format och från olika källor.
Företaget MetaSolutions utvecklar LODify och erbjuder kommersiell support. LODify är Open Source.

Länk: [http://lodify.com](http://lodify.com)

### Swirrl PublishMyData

PublishMyData är en molntjänst och datapubliceringsplattform för länkade data. Det är möjligt att importera och länka data för vidare bearbetning och spridning.
Företaget Swirrl erbjuder molntjänsten och kommersiell support. PublishMyData finns även som Open Source community edition.

Länk: [http://www.swirrl.com/publishmydata](http://www.swirrl.com/publishmydata)

## <a name="byta"></a>Ny plattform internt

### Callimachus Enterprise

Callimachus Enterprise är en applikationsserver för länkade data. Mjukvaran har stöd för hantering och skapande av länkade data och kommer med en utvecklingsmiljö.

Företaget [3RoundStones](http://3roundstones.com) erbjuder kommersiell support och står även för den aktiva utvecklingen av plattformen som i huvudsak är Open Source. Callimachus erbjuds även som molntjänst.

Exempel på områden där Callimachus används är inom myndigheter, utgivare/förlag, vård och forskning.

Länk: [http://3roundstones.com/products/managed-services-for-commercial/](http://3roundstones.com/products/managed-services-for-commercial/)

### EntryScape

EntryScape är en samarbetsplattform driven av länkade data. Plattformen har stöd för att fritt konfigurera eller återanvända formulär för att skapa och hantera interoperabla metadata.

Företaget [MetaSolutions](http://metasolutions.se) erbjuder kommersiell support och driver utvecklingen av EntryScape som är Open Source. EntryScape erbjuds även som molntjänst.

EntryScape används idag inom forskning, undervisning, vård och även helt öppet utan särskilt fokusområde.

Länk: [http://entryscape.com](http://entryscape.com)

### Graphity

Graphity är en plattform för publicering av länkade data, med särskilt fokus på deklarativ webbutveckling. Mjukvaran är Open Source och företaget Graphity erbjuder kommersiell support kring plattformen.

Länk: [http://graphityhq.com](http://graphityhq.com)

### Open Anzo

Open Anzo är en RDF databas med en tjänsteorienterad semantisk middleware plattform. Plattformen är Open Source, men det finns inget företag som erbjuder kommersiell support. Aktiviteten i utvecklingscommunityn har legat nere sedan 2011. Därmed bedömer vi det som osannolikt att det skulle gå att få support i dagsläget.

Länk: [http://www.openanzo.org](http://www.openanzo.org)

## <a name="moln"></a>Ny plattform i molnet

### Callimachus Enterprise

Callimachus är Open Source men erbjuds även som "hosted" lösning. Se "Callimachus Enterprise" ovan för en beskrivning.

### EntryScape

EntryScape är Open Source men erbjuds även som molntjänst med SLA. Se "EntryScape" ovan för en beskrivning.

## <a name="egen"></a>Egen lösning baserad på lämplig triple store

Om ingen existerande lösning ska återanvändas så finns möjligheten att bygga en egen lösning som bygger på ett backend-system för att spara RDF-data, ett s.k. triple store. De flesta triple stores är tillgängliga under en Open Source licens och har fullt stöd för alla relevanta W3C-standarder och är därmed i praktiken utbytbara. Precis som med relationella databaser ligger skillnaden mellan triple stores i tekniska detaljer. Man kan skilja mellan triple stores med och utan kommersiell support.

Etablerade triples stores med kommersiell support är:

* Franz Inc. AllegroGraph, [http://www.franz.com/agraph/allegrograph/](http://www.franz.com/agraph/allegrograph/)
* Ontotext OWLIM, [http://www.ontotext.com/owlim](http://www.ontotext.com/owlim)
* OpenLink Virtuoso, [http://virtuoso.openlinksw.com](http://virtuoso.openlinksw.com)

Triple stores utan kommersiell support är:

* Apache Jena, [http://jena.apache.org/](http://jena.apache.org/)
* Mulgara Semantic Store, [http://www.mulgara.org/](http://www.mulgara.org/)
* Systap Bigdata, [http://www.systap.com/bigdata.htm](http://www.systap.com/bigdata.htm)
* OpenRDF Sesame, [http://www.openrdf.org/](http://www.openrdf.org/)
* Garlik 4store, [http://4store.org/](http://4store.org/)