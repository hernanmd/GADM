catalog
catalogKeyClassesAndExample
	"Returns a paragraph or more describing the key classes of your project. You can use Pillar/Pier syntax to layout out the text i.e., ==Code== and - for bullet."
	^ '" To access to the whole World (as seen by GADM), evaluate "
GADMWorldTree root.
 
" Access country Lithuania "
GADMWorldTree @ ''Lithuania''.
 
" To acces the Part (<i>Partido</i>: spanish) where I am living:"
GADMWorldTree @ ''Argentina'' @ ''Buenos Aires'' @ ''La Plata''.
 
" You want to know which type of region is Los Angeles "
(GADMWorldTree @ ''United States'' @ ''California'' @ ''Los Angeles'') typeName " ''County'' "
 
" You wish to list all subregions in San Marino "
(GADMWorldTree @ ''San Marino'') nodeNames'