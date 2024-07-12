Eine Karte fuer eTrex10
Es werden Fahradwege und Fahradfernwege angezeigt.
Dazu Städte, Orte und Stadteile

Benötigte Software
* mkmap
* zip

Benötigte Daten
export-osm von https://overpass-turbo.eu/
````
/*
This shows the cycleway and cycleroute network.
*/
[out:json];
(
 // query part for: “cycleway=*”
  // sharrow 
  //relation["cycleway"="shared_lane"]({{bbox}} ) ;
  // CONVENTIONAL BICYCLE LANE
  // lane on both sides of the street 
  //relation["cycleway"="lane"]({{bbox}});  
  // lane on either side 
  //relation["cycleway:left"]({{bbox}});
  //relation["cycleway:right"]({{bbox}});  
  // dedicated bikeways
  //relation["highway"="cycleway"]({{bbox}});
  //relation["bicycle"="designated"]({{bbox}});  
  // addition *route
  relation["route"="bicycle"]({{bbox}});
 //Cities, towns, villages
  node [place~"(city|town|village|suburb|hamlet)"]   ({{bbox}});
);
out body;
>;
out skel qt;
````

Reihenfolge der Aufrufe
* ./MyZipStyle.sh
* ./MyConvert.sh
* ./MyRename.sh
* 
