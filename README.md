# OPA Fun Policy
I was trying to search for a list of Christmas markets in Berlin with some criteria in mind. While thinking about it, I thought to give a try automating my criteria list using [Open Policy Agent](https://www.openpolicyagent.org/docs/latest/) policies :) To be able to execute this fun task, I had to find data of Christmas market list in Berlin where I could apply OPA policies. Luckily I found the data exposed via API [here](https://daten.berlin.de/datensaetze/berliner-weihnachtsm%C3%A4rkte) :) 

## Policies

I translated my two key requirements into OPA rules ( rego ) -

1. Can travel a Christmas market only if its not closed before 24th December 2023 :)
2.  Can travel a Chtistmas market only if its location has been provided

Policy code can be found here [policy](./policy)

## Policy result :)

I was so happy to see that it really worked as expected :) I could easily filter out plenty of Christmas markets which did not follow my criteria rules. If you want to see the results, you can also have a look at the OPA playground results.

Example result based on my run today -

``` json
{
    "can_visit_after": "2023-12-24",
    "deny": [
        "christmas visit policy failed: Can't visit Berlin Christmas market '25. \"etwas anderer\" Weihnachtsmarkt' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market '25. Alt-Kaulsdorfer Weihnachtsmarkt' since it closes before 2023-12-09",
        "christmas visit policy failed: Can't visit Berlin Christmas market '28. Weihnachtsmarkt auf Lehmanns Bauernhof' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market '28. Weihnachtsmarkt auf Lehmanns Bauernhof' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market '45. Lichtenrader Lichtermarkt' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Advent im Park' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Advent im Park' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Advent- und Kunstmarkt' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Advent- und Kunstmarkt' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Advent- und Kunstmarkt' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Adventsbasar: „Wo Vorfreude lebt, wird Weihnachten ein Fest“' since it closes before 2023-12-02",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Adventsmarkt Hermannswerder (Potsdam)' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Adventsmarkt auf der Domäne Dahlem' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Adventsmarkt auf der Domäne Dahlem' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Adventsmarkt der Domäne Dahlem' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Alt-Buckower Adventsmarkt' since it closes before 2023-12-02",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Christmas Klimbim' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Das Weihnachtshaus in der Villa Donnersmarck' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Der ganz besondere Weihnachtsmarkt in St. George’s Anglican Church\n“A Very British Christmas”' since it closes before 2023-12-09",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Feuriger Advent' since it closes before 2023-12-01",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Grunewalder Weihnachtsmarkt' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Heissa Holzmarkt' since it closes before 2023-12-23",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Hennigsdorfer Weihnachtsmarkt' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Historische Weihnacht' since it closes before 2023-12-22",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Holy Shit Shopping' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Italian Street Food Festival - Christmas Klimbim Edition' since it closes before 2023-12-12",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Kleiner Weihnachtsmarkt vor dem Forum Steglitz' since it closes before 2023-01-04",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Kunsthandwerklicher Advent am Karl-August-Platz' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Kunsthandwerklicher Advent am Karl-August-Platz' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Kunsthandwerklicher Weihnachtsmarkt Frohnau' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Kunsthandwerklicher Weihnachtsmarkt vor dem Bröhan-Museum' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Lucia Weihnachtsmarkt in der Kulturbrauerei 2023' since it closes before 2023-12-22",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Marienfelder Weihnachtsmarkt des TSV Marienfelde 1890 e. V.' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Naughty Winter Market - Christmas Klimbim Edition' since it closes before 2023-12-04",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Neuzeller Märchenadventsmarkt' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Nikolausmarkt der Beschäftigungs- und Bildungsträger im Rathaus Charlottenburg' since it closes before 2023-11-29",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Nowkoelln Advents Flowmarkt' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'PLATZ für KUNST - Kunsthandwerklicher Weihnachtsmarkt Mexikoplatz' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'PLATZ für KUNST - Kunsthandwerklicher Weihnachtsmarkt Mexikoplatz' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'PLATZ für KUNST - Kunsthandwerklicher Weihnachtsmarkt Mexikoplatz' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Rudower Weihnachtsmeile' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Spandauer Weihnachtsmarkt - Spandau Markt' since it closes before 2023-12-23",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Traditioneller Adventsmarkt im Evangelischen Johannesstift' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Umwelt- und Weihnachtsmarkt 2021 in der Sophienstraße' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Umwelt- und Weihnachtsmarkt in der Sophienstraße' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Umwelt- und Weihnachtsmarkt in der Sophienstraße' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'WaldWeihnacht Eberswalde' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachstsmarkt Stadt Storkow' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnacht \"to go\" im Kranoldkiez' since it closes before 2023-12-16",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachten in Westend' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachtsbasar der Schwedischen Kirche' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachtsmarkt \"Lichterglanz im Tannenwald\" in den Späth'schen Baumschulen' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachtsmarkt \"Lichterglanz im Tannenwald\" in den Späth'schen Baumschulen' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachtsmarkt \"Lichterglanz im Tannenwald\" in den Späth'schen Baumschulen' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachtsmarkt Hallen am Borsigturm' since it closes before 2023-12-22",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachtsmarkt Karlshorst' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachtsmarkt Treptow Am Treptower  Park' since it closes before 2023-12-23",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachtsmarkt am Tempelhofer Hafen' since it closes before 2023-12-22",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachtsmarkt auf dem Schlossplatz Köpenick 2023' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachtsmarkt auf der Dicken Linda' since it closes before 2023-12-16",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachtsmarkt in Linde' since it closes before 2023-12-09",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachtsmarkt in der Fußgängerzone Wilmersdorfer Straße' since it closes before 2023-12-23",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Weihnachtsmarkt' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Winterzauber im Advent' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Winterzauber im Advent' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Winterzauber im Advent' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Ökoadventsmarkt am Kollwitzplatz' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Ökoadventsmarkt am Kollwitzplatz' since it closes before 2023-12-10",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Ökoadventsmarkt am Kollwitzplatz' since it closes before 2023-12-17",
        "christmas visit policy failed: Can't visit Berlin Christmas market 'Ökumenischer Adventsbasar im Pfarrgarten' since it closes before 2023-12-03",
        "christmas visit policy failed: Can't visit Berlin Christmas market Kleiner Weihnachtsmarkt vor dem Forum Steglitz without location specified"
    ]
}
```
## How can you test yourself ?

If you want to easily test the code, follow below steps and have fun :) 
1. click on [Opa Playground link](https://play.openpolicyagent.org/p/DFtqpTlyXO)
2. Get JSON data from API response of [this source](https://daten.berlin.de/datensaetze/berliner-weihnachtsm%C3%A4rkte)
3. Paste the API data into "INPUT" block of the playground link ( top right section)
4. Click on blue "Evaluate" button on the playground.
5. Have fun ;)
