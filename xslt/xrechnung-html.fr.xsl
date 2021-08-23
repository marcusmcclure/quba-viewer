<!DOCTYPE HTML><html xmlns:i18n="https://github.com/ZUGFeRD/quba-viewer/blob/master/doc/xslt-i18n.md" xmlns:xr="urn:ce.eu:en16931:2017:xoev-de:kosit:standard:xrechnung-1" xmlns:xrv="http://www.example.org/XRechnung-Viewer" xmlns:xs="http://www.w3.org/2001/XMLSchema" lang="de">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta charset="UTF-8">
      <title>XRechnung</title>
      <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0">
      <style>


                    /* Grundformatierung ********************************************/

                    *,
                    *:after,
                    *:before
                    {
                    box-sizing: border-box;
                    -moz-box-sizing: border-box;
                    }

                    .clear:after
                    {
                    content: ".";
                    clear: both;
                    display: block;
                    visibility: hidden;
                    height: 0;
                    }

                    html,
                    body
                    {
                    height: 100%;
                    min-width: 320px;
                    margin: 0;
                    padding: 0;
                    color: #000;
                    font-size: 14px;
                    }

                    body
                    {
                    overflow-y: scroll;
                    background-color: rgba(4, 101, 161, 0.08);
                    }

                    h4
                    {
                    color: inherit;
                    font-size: inherit;
                    margin-bottom: 0.5rem;
                    }


                    /* Grundaufbau *************************************************/

                    .menue
                    {
                    position: relative;
                    z-index: 2000;
                    background-color: #000;
                    margin-bottom: 30px;
                    }

                    .innen
                    {
                    max-width: 1080px;
                    margin: 0 auto;
                    padding: 0 2%;
                    }


                    /* Formatierungen *************************************************/

                    .color2
                    {
                    color: rgba(0, 0, 0, 0.6);
                    }

                    .schwarz
                    {
                    color: #555 !important;
                    }

                    .normal
                    {
                    font-weight: normal;
                    }

                    .bold
                    {
                    font-weight: bold;
                    }

                    .abstandUnten
                    {
                    margin-bottom: 5px;
                    }

                    .abstandUntenKlein
                    {
                    margin-bottom: 10px;
                    }

                    .noPaddingTop
                    {
                    padding-top: 0 !important;
                    }

                    .ausrichtungRechts
                    {
                    text-align: right;
                    }


                    /* Menü ********************************************************/

                    button
                    {
                    position: relative;
                    font-family: serif;
                    padding-top: 15px;
                    padding-left: 0;
                    padding-right: 0;
                    margin-right: 2%;
                    }

                    .btnAktiv
                    {
                    font-size: 22px;
                    color: #ffb619;
                    height: 50px;
                    outline: none;
                    border: none;
                    background: none;
                    }

                    .btnAktiv:after
                    {
                    content: "";
                    display: block;
                    position: absolute;
                    top: 50px;
                    left: 50%;
                    z-index: 10;
                    font-size: 0;
                    line-height: 0;
                    height: 0;
                    padding: 0;
                    margin: 0;
                    transform: translateX(-50%);
                    border: 15px solid #000;
                    border-right-color: transparent;
                    border-bottom-color: transparent;
                    border-left-color: transparent;
                    }

                    .btnInaktiv,
                    .tab
                    {
                    font-size: 22px;
                    color: #fff;
                    height: 50px;
                    z-index: 0;
                    outline: none;
                    border: none;
                    background: none;
                    transition: color 0.3s ease;
                    }

                    .btnInaktiv:hover,
                    .tab:hover
                    {
                    color: #ffb619;
                    cursor: pointer;
                    }

                    .divHide
                    {
                    display: none;
                    }

                    /* Content *********************************************************************/

                    .inhalt
                    {
                    font-family: sans-serif;
                    margin-bottom: 30px;
                    }

                    .haftungausschluss
                    {
                    color: #000;
                    text-align: center;
                    padding: 7px;
                    margin-bottom: 30px;
                    width: 100%;
                    border: 1px solid #ffb619;
                    background-color: #fff;
                    }

                    .box
                    {
                    position: relative;
                    display: table-cell;
                    padding: 0;
                    border: 1px solid rgba(4, 101, 161, 0.2);
                    background-color: #fff;
                    }

                    .subBox
                    {
                    border-top: none;
                    width: 50%;
                    }

                    .subBox:last-child
                    {
                    border-left: none;
                    }

                    .first > .boxzeile > .subBox
                    {
                    border-top: 1px solid rgba(4, 101, 161, 0.2) !important;
                    }

                    .boxtitel
                    {
                    display: inline-block;
                    background-color: #0465A1;
                    padding: 7px 10px;
                    color: #fff;
                    font-weight: bold;
                    }

                    .boxBorderTop
                    {
                    border-top: none;
                    }

                    .boxBorderLeft
                    {
                    border-left: none;
                    }

                    .boxtitelSub
                    {
                    color: #000;
                    background-color: rgba(4, 101, 161, 0.1);
                    border-right: 1px solid rgba(4, 101, 161, 0.2);
                    border-bottom: 1px solid rgba(4, 101, 161, 0.2);
                    }

                    .boxinhalt
                    {
                    padding: 15px 20px;
                    }

                    .boxtabelle
                    {
                    display: table;
                    width: 100%;
                    }

                    .borderSpacing
                    {
                    border-spacing: 0 5px;
                    }

                    .boxabstandtop
                    {
                    margin-top: 30px;
                    }

                    .boxzeile
                    {
                    display: table-row;
                    }

                    .boxzeile .box:last-child
                    {
                    margin-bottom: 0;
                    }

                    .boxdaten
                    {
                    display: table-cell;
                    padding: 5px 0;
                    vertical-align: middle;
                    height: 38px;
                    /*
                    -ms-word-break: break-all;
                    word-break: break-all;
                    word-break: break-word;
                    -webkit-hyphens: auto;
                    -moz-hyphens: auto;
                    hyphens: auto;
                    */
                    }

                    .boxdaten.wert
                    {
                    padding: 5px 10px;
                    }

                    .boxcell
                    {
                    display: table-cell;
                    }

                    .boxdatenBlock
                    {
                    display: block;
                    padding: 3px 0;
                    /*
                    -ms-word-break: break-all;
                    word-break: break-all;
                    word-break: break-word;
                    -webkit-hyphens: auto;
                    -moz-hyphens: auto;
                    hyphens: auto;
                    */
                    }

                    .noBreak
                    {
                    -ms-word-break: keep-all;
                    word-break: keep-all;
                    word-break: keep-all;
                    -webkit-hyphens: none;
                    -moz-hyphens: none;
                    hyphens: none;
                    }

                    .boxabstand
                    {
                    display: table-cell;
                    width: 30px;
                    }

                    .legende
                    {
                    color: rgba(0, 0, 0, 0.6);
                    width: 170px;
                    font-size: 13px;
                    line-height: 16px;
                    padding-right: 5px;
                    }

                    .wert
                    {
                    background-color: rgba(4, 101, 161, 0.03);
                    }

                    .boxtabelleEinspaltig
                    {
                    width: 49%;
                    }

                    .boxtabelleZweispaltig,
                    .boxtabelleDreispaltig
                    {
                    width: 100%;
                    }

                    .box5050
                    {
                    width: 50%;
                    }

                    .boxEinspaltig
                    {
                    width: 100%;
                    }

                    .boxZweispaltig
                    {
                    width: 48.5%;
                    }

                    .boxSpalte1 {
                    width: 50%;
                    }

                    .boxSpalte2 {
                    width: 50%;
                    padding-left: 20px;
                    }

                    .paddingLeft {
                    padding-left: 0.1em;
                    }

                    .noPadding {
                    padding-top: 0 !important;
                    padding-bottom: 0 !important;
                    }

                    .rechnungsZeile
                    {
                    display: table-row;
                    }

                    .rechnungsZeile .boxdaten
                    {
                    height: auto;
                    }

                    .rechnungSp1
                    {
                    width: 65%;
                    font-size: 16px;
                    }

                    .rechnungSp2
                    {
                    width: 10%;
                    }

                    .rechnungSp3
                    {
                    width: 25%;
                    font-size: 16px;
                    text-align: right;
                    }

                    .detailSp1,
                    .detailSp2
                    {
                    width: 50%;
                    }

                    .detailSp2
                    {
                    text-align: right;
                    }

                    .line1Bottom
                    {
                    border-bottom: 1px solid #000;
                    }

                    .line1BottomLight
                    {
                    padding-bottom: 5px;
                    border-bottom: 1px solid #f0f0f0;
                    margin-bottom: 5px;
                    }

                    .line2Bottom
                    {
                    border-bottom: 2px solid #000;
                    }

                    .paddingTop
                    {
                    padding-top: 10px;
                    }

                    .paddingBottom
                    {
                    padding-bottom: 10px;
                    }

                    .grund
                    {
                    font-size: 16px;
                    display: block;
                    width: 100%;
                    padding: 0 20px 15px 20px;
                    }

                    .grundDetail
                    {
                    display: block;
                    width: 100%;
                    padding: 0 20px 15px 20px;
                    }

                    /* Übersichtformatierungen */
                    #uebersichtLastschrift.box,
                    #uebersichtUeberweisung.box
                    {
                    border-top: none;
                    }

                    #uebersichtUeberweisung.box
                    {
                    border-left: none;
                    }


                    /* Formatierungen Detailseite */

                    .detailsSpalte1,
                    .detailsSpalte2
                    {
                    width: 30%;
                    float: left;
                    font-size: 90%;
                    line-height: 115%;
                    margin-right: 5%;
                    }

                    .detailsSpalte3
                    {
                    width: 30%;
                    float: left;
                    font-size: 90%;
                    line-height: 115%;
                    }

                    .detailsSpalte1 .legende,
                    .detailsSpalte2 .legende,
                    .detailsSpalte3 .legende
                    {
                    width: 145px;
                    }

                    .titelPosition
                    {
                    font-size: 17px;
                    font-weight: bold;
                    }


                    /* Laufzettelformatierungen */
                    #laufzettelHistorie .boxtabelle:not(:nth-child(2))
                    {
                    border-top: 1px solid rgba(4, 101, 161, 0.2);
                    padding-top: 10px;
                    margin-top: 10px;
                    }


                    /* 1023px und kleiner ************************************************/

                    @media screen and (max-width : 1023px) {

                    .box
                    {
                    display: block;
                    width: 100%;
                    margin-bottom: 20px;
                    }

                    .boxabstandtop
                    {
                    margin-top: 15px;
                    }

                    .subBox:first-child
                    {
                    margin-bottom: 0 !important;
                    }

                    .subBox:last-child
                    {
                    border-left: 1px solid rgba(4, 101, 161, 0.2);
                    }

                    .first > .boxzeile > .subBox
                    {
                    border-top: none !important;
                    }

                    .first > .boxzeile > .subBox:first-child
                    {
                    border-top: 1px solid rgba(4, 101, 161, 0.2) !important;
                    }

                    .first > .boxzeile
                    {
                    margin-bottom: 0;
                    }

                    #uebersichtUeberweisung.box
                    {
                    border-left: 1px solid rgba(4, 101, 161, 0.2);
                    }

                    #uebersichtLastschrift.box
                    {
                    margin-bottom: 0;
                    }

                    .boxzeile
                    {
                    display: block;
                    margin-bottom: 5px;
                    }

                    .boxzeile:after
                    {
                    visibility: hidden;
                    display: block;
                    font-size: 0;
                    content: " ";
                    clear: both;
                    height: 0;
                    }

                    #details > .boxtabelle > .boxzeile
                    {
                    margin-bottom: 0px;
                    }

                    .boxcell
                    {
                    display: block;
                    }

                    .boxcell:last-child
                    {
                    margin-top: 20px;
                    }

                    .boxZweispaltig
                    {
                    width: 100%;
                    }

                    .legende
                    {
                    display: block;
                    float: left;
                    width: 170px;
                    padding: 5px 0;
                    height: auto;
                    }

                    .wert
                    {
                    display: block;
                    float: left;
                    width: calc(100% - 170px);
                    padding: 11px 10px !important;
                    line-height: 1.3;
                    min-height: 38px;
                    height: auto;
                    }

                    .boxdaten .legende
                    {
                    height: auto;
                    }

                    .rechnungsZeile .boxdaten
                    {
                    padding: 5px 0;
                    }

                    .boxabstand
                    {
                    display: none;
                    }

                    .boxtabelleEinspaltig {
                    width: 100%;
                    }

                    .boxSpalte1 {
                    display: block;
                    width: auto;
                    }

                    .boxSpalte2 {
                    display: block;
                    width: auto;
                    padding-left: 0px;
                    margin-top: 1.2rem;
                    }

                    .detailsSpalte1,
                    .detailsSpalte2,
                    .detailsSpalte3
                    {
                    width: 100%;
                    float: none;
                    padding-right: 0px;
                    }

                    .detailsSpalte2,
                    .detailsSpalte3
                    {
                    margin-top: 15px;
                    }

                    .detailsSpalte2,
                    .detailsSpalte3
                    {
                    margin-top: 10px;
                    }

                    .tableNumberAlignRight
                    {
                    display: block;
                    width: 130px;
                    text-align: right;
                    }
                    }


                    /* 800px und kleiner ************************************************/

                    @media screen and (max-width : 800px) {

                    button
                    {
                    padding-top: 10px;
                    }

                    .btnAktiv,
                    .btnInaktiv,
                    .tab
                    {
                    font-size: 20px;
                    height: 40px;
                    }

                    .btnAktiv:after
                    {
                    top: 40px;
                    }

                    .rechnungSp1
                    {
                    width: 55%;
                    font-size: 15px;
                    }

                    .rechnungSp2
                    {
                    width: 10%;
                    }

                    .rechnungSp3
                    {
                    width: 35%;
                    text-align: right;
                    font-size: 15px;
                    }

                    .grund
                    {
                    font-size: 15px;
                    }
                    }

                    /* 450px und kleiner ************************************************/

                    @media screen and (max-width : 450px)
                    {

                    html,
                    body
                    {
                    font-size: 12px;
                    }

                    .menue
                    {
                    margin-bottom: 20px;
                    }

                    button
                    {
                    padding-top: 5px;
                    }

                    .btnAktiv,
                    .btnInaktiv,
                    .tab
                    {
                    font-size: 17px;
                    height: 35px;
                    }

                    .btnAktiv:after
                    {
                    top: 35px;
                    }

                    .legende
                    {
                    font-size: 12px;
                    width: 100%;
                    }

                    .wert
                    {
                    font-size: 12px;
                    line-height: 1.3;
                    width: 100%;
                    margin-bottom: 10px
                    }

                    .boxzeile
                    {
                    margin-bottom: 0px
                    }

                    .boxdaten
                    {
                    height: auto;
                    }

                    .haftungausschluss
                    {
                    margin-bottom: 20px;
                    }

                    .boxinhalt
                    {
                    margin-top: 0px;
                    }

                    .boxabstandtop
                    {
                    margin-top: 20px;
                    }

                    .boxtitel
                    {
                    padding: 7px 8px;
                    }

                    .box
                    {
                    margin-bottom: 10px;
                    padding: 0;
                    }

                    .boxabstandtop
                    {
                    margin-top: 10px;
                    }

                    .boxdaten,
                    .boxdatenBlock
                    {
                    padding: 2px 0;
                    }

                    .rechnungSp1
                    {
                    width: 50%;
                    font-size: inherit;
                    }

                    .rechnungSp2
                    {
                    width: 15%;
                    }

                    .rechnungSp3
                    {
                    width: 35%;
                    font-size: inherit;
                    text-align: right;
                    }

                    .grund
                    {
                    font-size: inherit;
                    }

                    .titelPosition
                    {
                    font-size: 15px;
                    }

                    .abstandUnten
                    {
                    margin-bottom: 5px;
                    }

                    .detailsSpalte1,
                    .detailsSpalte2,
                    .detailsSpalte3
                    {
                    font-size: inherit;
                    line-height: inherit;
                    }
                    }

                    /* 380px und kleiner ************************************************/

                    @media screen and (max-width : 380px) {

                    html,
                    body
                    {
                    font-size: 11px;
                    line-height: 100%;
                    }

                    .btnAktiv,
                    .btnInaktiv,
                    .tab
                    {
                    font-size: 15px;
                    }

                    .boxdaten
                    .boxdatenBlock
                    {
                    padding: 2px 0;
                    }

                    .boxinhalt
                    {
                    margin-top: 0px;
                    }

                    .boxtitel
                    {
                    padding: 5px 7px;
                    }
                    }


                </style>
   </head>
   <body>
      <form>
         <div class="menue">
            <div class="innen"><button type="button" class="tab" id="menueUebersicht" onclick="show(this);">Aperçu</button><button type="button" class="tab" id="menueDetails" onclick="show(this);">Positionen</button><button type="button" class="tab" id="menueZusaetze" onclick="show(this)">Informationen</button><button type="button" class="tab" id="menueAnlagen" onclick="show(this)">Pièces jointes</button><button type="button" class="tab" id="menueLaufzettel" onclick="show(this)">Historique de traitement</button></div>
         </div>
      </form>
      <div class="inhalt">
         <div class="innen">
            <div id="uebersicht" class="divShow">
               <div class="haftungausschluss">Nous n'assumons aucune responsabilité quant à l'exactitude des données.</div>
               <div class="boxtabelle boxtabelleZweispaltig">
                  <div class="boxzeile">
                     <div id="uebersichtKaeufer" class="box boxZweispaltig">
                        <div id="BG-7" title="BG-7" class="boxtitel">Informations sur l'acheteur</div>
                        <div class="boxtabelle boxinhalt borderSpacing">
                           <div class="boxzeile">
                              <div class="boxdaten legende">:
                                 </div>
                              <div id="BT-10" title="BT-10" class="boxdaten wert">991-01484-64</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Nom:
                                 </div>
                              <div id="BT-44" title="BT-44" class="boxdaten wert">Franz Müller</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Rue / Numéro de maison:
                                 </div>
                              <div id="BT-50" title="BT-50" class="boxdaten wert">teststr.12</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Boîte postale:
                                 </div>
                              <div id="BT-51" title="BT-51" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Supplément d'adresse:
                                 </div>
                              <div id="BT-163" title="BT-163" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Code postal:
                                 </div>
                              <div id="BT-53" title="BT-53" class="boxdaten wert">55232</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Lieu:
                                 </div>
                              <div id="BT-52" title="BT-52" class="boxdaten wert">Entenhausen</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Région:
                                 </div>
                              <div id="BT-54" title="BT-54" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Pays:
                                 </div>
                              <div id="BT-55" title="BT-55" class="boxdaten wert">DE</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Identifiant:
                                 </div>
                              <div id="BT-46" title="BT-46" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Schéma de l'Identifiant:
                                 </div>
                              <div id="BT-46-scheme-id" title="BT-46-scheme-id" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Nom:
                                 </div>
                              <div id="BT-56" title="BT-56" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Téléphone:
                                 </div>
                              <div id="BT-57" title="BT-57" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Adresse électronique:
                                 </div>
                              <div id="BT-58" title="BT-58" class="boxdaten wert"></div>
                           </div>
                        </div>
                     </div>
                     <div class="boxabstand"></div>
                     <div id="uebersichtVerkaeufer" class="box boxZweispaltig">
                        <div id="BG-4" title="BG-4" class="boxtitel">Informations sur le vendeur</div>
                        <div class="boxtabelle boxinhalt borderSpacing">
                           <div class="boxzeile">
                              <div class="boxdaten legende"></div>
                              <div class="boxdaten wert" style="background-color: white;"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Nom de la société:
                                 </div>
                              <div id="BT-27" title="BT-27" class="boxdaten wert">Test company</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Rue / Numéro de maison:
                                 </div>
                              <div id="BT-35" title="BT-35" class="boxdaten wert">teststr</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Boîte postale:
                                 </div>
                              <div id="BT-36" title="BT-36" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Supplément d'adresse:
                                 </div>
                              <div id="BT-162" title="BT-162" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Code postal:
                                 </div>
                              <div id="BT-38" title="BT-38" class="boxdaten wert">55232</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Lieu:
                                 </div>
                              <div id="BT-37" title="BT-37" class="boxdaten wert">teststadt</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Région:
                                 </div>
                              <div id="BT-39" title="BT-39" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Code pays:
                                 </div>
                              <div id="BT-40" title="BT-40" class="boxdaten wert">DE</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Identifiant:
                                 </div>
                              <div id="BT-29" title="BT-29" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Schéma de l'Identifiant:
                                 </div>
                              <div id="BT-29-scheme-id" title="BT-29-scheme-id" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Nom:
                                 </div>
                              <div id="BT-41" title="BT-41" class="boxdaten wert">Hans Test</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Téléphone:
                                 </div>
                              <div id="BT-42" title="BT-42" class="boxdaten wert">+49123456789</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Adresse électronique:
                                 </div>
                              <div id="BT-43" title="BT-43" class="boxdaten wert">test@example.org</div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="boxtabelle boxabstandtop boxtabelleZweispaltig">
                  <div class="boxzeile">
                     <div id="uebersichtRechnungsinfo" class="box box1v2">
                        <div class="boxtitel">Détails de la facturation</div>
                        <div class="boxtabelle boxinhalt">
                           <div class="boxcell boxZweispaltig">
                              <div class="boxtabelle borderSpacing">
                                 <div class="boxzeile">
                                    <div class="boxdaten legende">Informations sur le vendeur:
                                       </div>
                                    <div id="BT-1" title="BT-1" class="boxdaten wert">123</div>
                                 </div>
                                 <div class="boxzeile">
                                    <div class="boxdaten legende">Date de facture:
                                       </div>
                                    <div id="BT-2" title="BT-2" class="boxdaten wert">22.11.2020</div>
                                 </div>
                                 <div class="boxzeile">
                                    <div class="boxdaten legende">Type de facture:
                                       </div>
                                    <div id="BT-3" title="BT-3" class="boxdaten wert">380</div>
                                 </div>
                                 <div class="boxzeile">
                                    <div class="boxdaten legende">Devise</div>
                                    <div id="BT-5" title="BT-5" class="boxdaten wert">EUR</div>
                                 </div>
                              </div>
                              <h4>Période de facturation:
                                 </h4>
                              <div class="boxtabelle borderSpacing">
                                 <div class="boxzeile">
                                    <div class="boxdaten legende">de:
                                       </div>
                                    <div id="BT-73" title="BT-73" class="boxdaten wert"></div>
                                 </div>
                                 <div class="boxzeile">
                                    <div class="boxdaten legende">jusqu'à:
                                       </div>
                                    <div id="BT-74" title="BT-74" class="boxdaten wert"></div>
                                 </div>
                              </div>
                           </div>
                           <div class="boxabstand"></div>
                           <div class="boxcell boxZweispaltig">
                              <div class="boxtabelle borderSpacing">
                                 <div class="boxzeile">
                                    <div class="boxdaten legende">Numéro du projet:
                                       </div>
                                    <div id="BT-11" title="BT-11" class="boxdaten wert"></div>
                                 </div>
                                 <div class="boxzeile">
                                    <div class="boxdaten legende">Numéro du contrat:
                                       </div>
                                    <div id="BT-12" title="BT-12" class="boxdaten wert"></div>
                                 </div>
                                 <div class="boxzeile">
                                    <div class="boxdaten legende">Numéro de commande:
                                       </div>
                                    <div id="BT-13" title="BT-13" class="boxdaten wert"></div>
                                 </div>
                                 <div class="boxzeile">
                                    <div class="boxdaten legende">Numéro de commande:
                                       </div>
                                    <div id="BT-14" title="BT-14" class="boxdaten wert"></div>
                                 </div>
                              </div>
                              <h4>Factures précédentes:
                                 </h4>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="boxtabelle boxabstandtop boxtabelleZweispaltig">
                  <div class="boxzeile">
                     <div id="uebersichtRechnungsuebersicht" class="box">
                        <div id="BG-22" title="BG-22" class="boxtitel">Montants totaux de la facture</div>
                        <div class="boxtabelle boxinhalt">
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1">Total de toutes les lignes</div>
                              <div class="boxdaten rechnungSp2 color2">netto</div>
                              <div id="BT-106" title="BT-106" class="boxdaten rechnungSp3">1,00</div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1">Total de remises</div>
                              <div class="boxdaten rechnungSp2 color2">netto</div>
                              <div id="BT-107" title="BT-107" class="boxdaten rechnungSp3">0,00</div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1 paddingBottom line1Bottom">Total de suppléments</div>
                              <div class="boxdaten rechnungSp2 paddingBottom line1Bottom color2">netto</div>
                              <div id="BT-108" title="BT-108" class="boxdaten rechnungSp3 paddingBottom line1Bottom">0,00</div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1 paddingTop">Grand total</div>
                              <div class="boxdaten rechnungSp2 paddingTop color2">netto</div>
                              <div id="BT-109" title="BT-109" class="boxdaten rechnungSp3 paddingTop">1,00</div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1">montant de la TVA</div>
                              <div class="boxdaten rechnungSp2 color2"></div>
                              <div id="BT-110" title="BT-110" class="boxdaten rechnungSp3"></div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1 paddingBottom line1Bottom">Montant total de TVA</div>
                              <div class="boxdaten rechnungSp2 paddingBottom line1Bottom color2"></div>
                              <div id="BT-111" title="BT-111" class="boxdaten rechnungSp3 paddingBottom line1Bottom">0,00</div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1 paddingTop">Grand total</div>
                              <div class="boxdaten rechnungSp2 paddingTop color2">brutto</div>
                              <div id="BT-112" title="BT-112" class="boxdaten rechnungSp3 paddingTop">1,00</div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1">Montant payé</div>
                              <div class="boxdaten rechnungSp2 color2">brutto</div>
                              <div id="BT-113" title="BT-113" class="boxdaten rechnungSp3">0,00</div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1 paddingBottom line2Bottom">Montant arrondi</div>
                              <div class="boxdaten rechnungSp2 paddingBottom line2Bottom color2">brutto</div>
                              <div id="BT-114" title="BT-114" class="boxdaten rechnungSp3 paddingBottom line2Bottom"></div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1 paddingTop bold">Montant dû</div>
                              <div class="boxdaten rechnungSp2 paddingTop color2">brutto</div>
                              <div id="BT-115" title="BT-115" class="boxdaten rechnungSp3 paddingTop bold">1,00</div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="boxtabelle boxabstandtop boxtabelleZweispaltig">
                  <div class="boxzeile">
                     <div id="uebersichtUmsatzsteuer" class="box">
                        <div id="BG-23" title="BG-23" class="boxtitel">Ventilation de la TVA au niveau de la facture</div>
                        <div class="boxtabelle boxinhalt">
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1 bold">Catégorie de TVA:
                                 <span id="BT-118" title="BT-118">Z</span></div>
                              <div class="boxdaten rechnungSp2"></div>
                              <div class="boxdaten rechnungSp3"></div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1">Grand total</div>
                              <div class="boxdaten rechnungSp2 color2">netto</div>
                              <div id="BT-116" title="BT-116" class="boxdaten rechnungSp3">1,00</div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1 line1Bottom">taux TVA</div>
                              <div class="boxdaten rechnungSp2 color2 line1Bottom"></div>
                              <div id="BT-119" title="BT-119" class="boxdaten rechnungSp3 line1Bottom">0.00%
                                 </div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten rechnungSp1">montant de la TVA</div>
                              <div class="boxdaten rechnungSp2 color2"></div>
                              <div id="BT-117" title="BT-117" class="boxdaten rechnungSp3 bold">0,00</div>
                           </div>
                        </div>
                        <div class="grund">
                           <div>Motif d'exemption:
                              <span id="BT-120" title="BT-120" class="bold"></span></div>
                           <div>Identifiant pour motif d'exemption:
                              <span id="BT-121" title="BT-121" class="bold"></span></div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="boxtabelle boxabstandtop boxtabelleZweispaltig"></div>
               <div class="boxtabelle boxabstandtop boxtabelleZweispaltig"></div>
               <div class="boxtabelle boxabstandtop boxtabelleZweispaltig first">
                  <div class="boxzeile">
                     <div id="uebersichtZahlungsinformationen" class="box subBox">
                        <div title="" class="boxtitel">Détails de paiement</div>
                        <div class="boxtabelle boxinhalt borderSpacing">
                           <div class="boxzeile">
                              <div class="boxdaten legende">Rabais; autres conditions de paiement:
                                 </div>
                              <div id="BT-20" title="BT-20" class="boxdaten wert">Zahlbar ohne Abzug bis 22.11.2020</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Date d'échéance:
                                 </div>
                              <div id="BT-9" title="BT-9" class="boxdaten wert">22.11.2020</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Code du moyen de paiement:
                                 </div>
                              <div id="BT-81" title="BT-81" class="boxdaten wert">42</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Moyens de paiement:
                                 </div>
                              <div id="BT-82" title="BT-82" class="boxdaten wert">Bank transfer</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Utilisation:
                                 </div>
                              <div id="BT-83" title="BT-83" class="boxdaten wert">123</div>
                           </div>
                        </div>
                     </div>
                     <div id="uebersichtCard" class="box subBox">
                        <div id="BG-18" title="BG-18" class="boxtitel boxtitelSub">Information de la carte</div>
                        <div class="boxtabelle boxinhalt borderSpacing">
                           <div class="boxzeile">
                              <div class="boxdaten legende">Numéro de carte:
                                 </div>
                              <div id="BT-87" title="BT-87" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Titulaire de la carte:
                                 </div>
                              <div id="BT-88" title="BT-88" class="boxdaten wert"></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="boxtabelle">
                  <div class="boxzeile">
                     <div id="uebersichtLastschrift" class="box subBox">
                        <div id="BG-19" title="BG-19" class="boxtitel boxtitelSub">Prélèvement automatique</div>
                        <div class="boxtabelle boxinhalt borderSpacing">
                           <div class="boxzeile">
                              <div class="boxdaten legende">Numéro de référence du mandat:
                                 </div>
                              <div id="BT-89" title="BT-89" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">IBAN:
                                 </div>
                              <div id="BT-91" title="BT-91" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Identifiant du créancier:
                                 </div>
                              <div id="BT-90" title="BT-90" class="boxdaten wert"></div>
                           </div>
                        </div>
                     </div>
                     <div id="uebersichtUeberweisung" class="box subBox">
                        <div id="BG-17" title="BG-17" class="boxtitel boxtitelSub">Transfert</div>
                        <div class="boxtabelle boxinhalt borderSpacing">
                           <div class="boxzeile">
                              <div class="boxdaten legende">Titulaire du compte:
                                 </div>
                              <div id="BT-85" title="BT-85" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">IBAN:
                                 </div>
                              <div id="BT-84" title="BT-84" class="boxdaten wert">DE12500105170648489890</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">BIC:
                                 </div>
                              <div id="BT-86" title="BT-86" class="boxdaten wert">COBADEFXXX</div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="boxtabelle boxabstandtop">
                  <div class="boxzeile"></div>
               </div>
            </div>
            <div id="details" class="divHide">
               <div class="haftungausschluss">Nous n'assumons aucune responsabilité quant à l'exactitude des données.</div>
               <div class="boxtabelle boxabstandtop boxtabelleZweispaltig first">
                  <div class="boxzeile">
                     <div class="box subBox">
                        <div id="BT-126" title="BT-126" class="boxtitel">Position1</div>
                        <div class="boxtabelle boxinhalt borderSpacing">
                           <div class="boxzeile">
                              <div class="boxdaten legende">Texte libre:
                                 </div>
                              <div id="BT-127" title="BT-127" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Identifiant d'objet:
                                 </div>
                              <div id="BT-128" title="BT-128" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Schéma de l'Identifiant objet:
                                 </div>
                              <div id="BT-128-scheme-id" title="BT-128-scheme-id" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Numéro de ligne de commande:
                                 </div>
                              <div id="BT-132" title="BT-132" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Information sur l'attribution de compte:
                                 </div>
                              <div id="BT-133" title="BT-133" class="boxdaten wert"></div>
                           </div>
                           <h4 id="BG-26" title="BG-26">Période de facturation:
                              </h4>
                           <div class="boxzeile">
                              <div class="boxdaten legende">de:
                                 </div>
                              <div id="BT-134" title="BT-134" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">jusqu'à:
                                 </div>
                              <div id="BT-135" title="BT-135" class="boxdaten wert"></div>
                           </div>
                        </div>
                     </div>
                     <div class="box subBox">
                        <div id="BG-29" title="BG-29" class="boxtitel boxtitelSub">Preiseinzelheiten</div>
                        <div class="boxtabelle boxinhalt">
                           <div class="rechnungsZeile">
                              <div class="boxdaten detailSp1 color2">Qantité</div>
                              <div id="BT-129" title="BT-129" class="boxdaten detailSp2">1.0000</div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten detailSp1 color2">Unité</div>
                              <div id="BT-130" title="BT-130" class="boxdaten detailSp2">C62</div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten detailSp1 line1Bottom color2">Prix unitaire net</div>
                              <div id="BT-146" title="BT-146" class="boxdaten detailSp2 line1Bottom">1,00</div>
                           </div>
                           <div class="rechnungsZeile">
                              <div class="boxdaten detailSp1 color2">Prix total net</div>
                              <div id="BT-131" title="BT-131" class="boxdaten detailSp2 bold">1,00</div>
                           </div>
                        </div>
                        <div class="boxtabelle boxinhalt noPaddingTop borderSpacing">
                           <div class="boxzeile">
                              <div class="boxdaten legende ">Remise nette:
                                 </div>
                              <div id="BT-147" title="BT-147" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende ">Prix catalogue (net):
                                 </div>
                              <div id="BT-148" title="BT-148" class="boxdaten wert">1,00</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende ">Nombre d'unités:
                                 </div>
                              <div id="BT-149" title="BT-149" class="boxdaten wert">1.0000</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende ">Code de l'unité de mesure:
                                 </div>
                              <div id="BT-150" title="BT-150" class="boxdaten wert">C62</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende ">TVA:
                                 </div>
                              <div id="BT-151" title="BT-151" class="boxdaten wert">Z</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende ">Pourcentage de TVA:
                                 </div>
                              <div id="BT-152" title="BT-152" class="boxdaten wert">0%
                                 </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="boxtabelle">
                  <div class="boxzeile">
                     <div class="box subBox">
                        <div id="BG-27" title="BG-27" class="boxtitel boxtitelSub">Allocations au niveau de la ligne de facture</div>
                     </div>
                     <div class="box subBox">
                        <div id="BG-28" title="BG-28" class="boxtitel boxtitelSub">Supplément au niveau de la ligne de facture</div>
                     </div>
                  </div>
               </div>
               <div class="boxtabelle">
                  <div class="boxzeile">
                     <div class="box subBox">
                        <div id="BG-31" title="BG-31" class="boxtitel boxtitelSub">Informations sur l'article</div>
                        <div class="boxtabelle boxinhalt ">
                           <div class="boxzeile">
                              <div class="boxcell boxZweispaltig">
                                 <div class="boxtabelle borderSpacing">
                                    <div class="boxzeile">
                                       <div class="boxdaten legende ">Nom:
                                          </div>
                                       <div id="BT-153" title="BT-153" class="boxdaten wert bold">Testprodukt</div>
                                    </div>
                                    <div class="boxzeile">
                                       <div class="boxdaten legende ">Description:
                                          </div>
                                       <div id="BT-154" title="BT-154" class="boxdaten wert"></div>
                                    </div>
                                    <div class="boxzeile">
                                       <div class="boxdaten legende ">Numéro d'article:
                                          </div>
                                       <div id="BT-155" title="BT-155" class="boxdaten wert"></div>
                                    </div>
                                    <div class="boxzeile">
                                       <div class="boxdaten legende ">Kunden-Material-Nr.:
                                          </div>
                                       <div id="BT-156" title="BT-156" class="boxdaten wert"></div>
                                    </div>
                                    <h4 id="BG-32" title="BG-32">Propriétés de l'article:
                                       </h4>
                                 </div>
                              </div>
                              <div class="boxabstand"></div>
                              <div class="boxcell boxZweispaltig">
                                 <div class="boxtabelle borderSpacing">
                                    <div class="boxzeile">
                                       <div class="boxdaten legende ">Identifiant article:
                                          </div>
                                       <div id="BT-157" title="BT-157" class="boxdaten wert"></div>
                                    </div>
                                    <div class="boxzeile">
                                       <div class="boxdaten legende ">Schéma de l'Identifiant article:
                                          </div>
                                       <div id="BT-157-scheme-id" title="BT-157-scheme-id" class="boxdaten wert"></div>
                                    </div>
                                    <div class="boxzeile">
                                       <div class="boxdaten legende ">Code de classification des articles:
                                          </div>
                                       <div id="BT-158" title="BT-158" class="boxdaten wert"></div>
                                    </div>
                                    <div class="boxzeile">
                                       <div class="boxdaten legende ">Identifiant pour la création du schéma:
                                          </div>
                                       <div id="BT-158-scheme-id" title="BT-158-scheme-id" class="boxdaten wert"></div>
                                    </div>
                                    <div class="boxzeile">
                                       <div class="boxdaten legende ">Version de création du schéma:
                                          </div>
                                       <div id="BT-158-scheme-version-id" title="BT-158-scheme-version-id" class="boxdaten wert"></div>
                                    </div>
                                    <div class="boxzeile">
                                       <div class="boxdaten legende ">Code du pays d'origine:
                                          </div>
                                       <div id="BT-159" title="BT-159" class="boxdaten wert"></div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div id="zusaetze" class="divHide">
               <div class="haftungausschluss">Nous n'assumons aucune responsabilité quant à l'exactitude des données.</div>
               <div class="boxtabelle boxtabelleZweispaltig">
                  <div class="boxzeile">
                     <div id="zusaetzeVerkaeufer" class="box boxZweispaltig">
                        <div id="BG-4" title="BG-4" class="boxtitel">Informations sur le vendeur</div>
                        <div class="boxtabelle boxinhalt borderSpacing">
                           <div class="boxzeile">
                              <div class="boxdaten legende">Nom commercial différent:
                                 </div>
                              <div id="BT-28" title="BT-28" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Région:
                                 </div>
                              <div id="BT-39" title="BT-39" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Adresse électronique:
                                 </div>
                              <div id="BT-34" title="BT-34" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Schéma de l'adresse électronique:
                                 </div>
                              <div id="BT-34-scheme-id" title="BT-34-scheme-id" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Numéro d'enregistrement:
                                 </div>
                              <div id="BT-30" title="BT-30" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Identifiant TVA:
                                 </div>
                              <div id="BT-31" title="BT-31" class="boxdaten wert">DE0815</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Numéro fiscale:
                                 </div>
                              <div id="BT-32" title="BT-32" class="boxdaten wert">DE4711</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Schéma du numéro fiscal:
                                 </div>
                              <div id="BT-32-scheme" title="BT-32-scheme" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Autres informations légales:
                                 </div>
                              <div id="BT-33" title="BT-33" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Code devise de la TVA:
                                 </div>
                              <div id="BT-6" title="BT-6" class="boxdaten wert"></div>
                           </div>
                        </div>
                     </div>
                     <div class="boxabstand"></div>
                  </div>
               </div>
               <div class="boxtabelle boxabstandtop boxtabelleZweispaltig">
                  <div class="boxzeile">
                     <div id="zusaetzeKaeufer" class="box boxZweispaltig">
                        <div id="BG-7" title="BG-7" class="boxtitel">Informations sur l'acheteur</div>
                        <div class="boxtabelle boxinhalt borderSpacing">
                           <div class="boxzeile">
                              <div class="boxdaten legende">Nom commercial différent:
                                 </div>
                              <div id="BT-45" title="BT-45" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Région:
                                 </div>
                              <div id="BT-54" title="BT-54" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Adresse électronique:
                                 </div>
                              <div id="BT-49" title="BT-49" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Schéma de l'adresse électronique:
                                 </div>
                              <div id="BT-49-scheme-id" title="BT-49-scheme-id" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Numéro d'enregistrement:
                                 </div>
                              <div id="BT-47" title="BT-47" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Schéma du numéro d'enregistrement:
                                 </div>
                              <div id="BT-47-scheme-id" title="BT-47-scheme-id" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Identifiant TVA:
                                 </div>
                              <div id="BT-48" title="BT-48" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Date de facturation de la TVA:
                                 </div>
                              <div id="BT-7" title="BT-7" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Code de date de règlement de la TVA:
                                 </div>
                              <div id="BT-8" title="BT-8" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Informations sur l'attribution de compte:
                                 </div>
                              <div id="BT-19" title="BT-19" class="boxdaten wert"></div>
                           </div>
                        </div>
                     </div>
                     <div class="boxabstand"></div>
                  </div>
               </div>
               <div class="boxtabelle boxabstandtop boxtabelleZweispaltig">
                  <div class="boxzeile">
                     <div id="zusaetzeVertrag" class="box boxZweispaltig">
                        <div class="boxtitel">Informations sur le contrat</div>
                        <div class="boxtabelle boxinhalt borderSpacing">
                           <div class="boxzeile">
                              <div class="boxdaten legende">Numéro d'attribution:
                                 </div>
                              <div id="BT-17" title="BT-17" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Identifiant de l'accusé de réception:
                                 </div>
                              <div id="BT-15" title="BT-15" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Identifiant du bordereau d'expédition:
                                 </div>
                              <div id="BT-16" title="BT-16" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Identifiant processus:
                                 </div>
                              <div id="BT-23" title="BT-23" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Identifiant spécification:
                                 </div>
                              <div id="BT-24" title="BT-24" class="boxdaten wert">urn:cen.eu:en16931:2017#compliant#urn:xoev-de:kosit:standard:xrechnung_1.2</div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Identifiant objet:
                                 </div>
                              <div id="BT-18" title="BT-18" class="boxdaten wert"></div>
                           </div>
                           <div class="boxzeile">
                              <div class="boxdaten legende">Schéma de l'Identifiant objet:
                                 </div>
                              <div id="BT-18-scheme-id" title="BT-18-scheme-id" class="boxdaten wert"></div>
                           </div>
                        </div>
                     </div>
                     <div class="boxabstand"></div>
                  </div>
               </div>
            </div>
            <div id="anlagen" class="divHide">
               <div class="haftungausschluss">Nous n'assumons aucune responsabilité quant à l'exactitude des données.</div>
               <div class="boxtabelle boxabstandtop">
                  <div class="boxzeile">
                     <div id="anlagenListe" class="box">
                        <div id="BG-24" title="BG-24" class="boxtitel">Documents justificatifs</div>
                     </div>
                  </div>
               </div>
            </div>
            <div id="laufzettel" class="divHide">
               <div class="boxtabelle boxabstandtop">
                  <div class="boxzeile">
                     <div id="laufzettelHistorie" class="box">
                        <div class="boxtitel">Historique de traitement</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </body><script>
                //

/* Tab-Container aufbauen **************************************************/

var a = new Array("uebersicht", "details", "zusaetze", "anlagen", "laufzettel");
var b = new Array("menueUebersicht", "menueDetails", "menueZusaetze", "menueAnlagen", "menueLaufzettel");

function show(e) {
  var i = 0;
  var j = 1;
  for (var t = 0; t < b.length; t++) {
    if (b[t] === e.id) {
      i = t;
      if (i > 0) {
        j = 0;
      } else {
        j = i + 1;
      }
      break;
    }
  }
  e.setAttribute("class", "btnAktiv");
  for (var k = 0; k < b.length; k++) {
    if (k === i && (document.getElementById(a[k]) != null)) {
      document.getElementById(a[k]).style.display = "block";
      if (i === j)
      j = i + 1;
    } else {
      if (document.getElementById(a[k]) != null) {
        document.getElementById(a[j]).style.display = "none";
        document.getElementById(b[j]).setAttribute("class", "btnInaktiv");
        j += 1;
      }
    }
  }
}
window.onload = function () {
  document.getElementById(b[0]).setAttribute("class", "btnAktiv");
}

/* Eingebettete Binaerdaten runterladen   ************************************/


function base64_to_binary (data) {
  var chars = atob(data);
  var bytes = new Array(chars.length);
  for (var i = 0; i < chars.length; i++) {
    bytes[i] = chars.charCodeAt(i);
  }
  return new Uint8Array(bytes);
}

function downloadData (element_id) {
  var data_element = document.getElementById(element_id);
  var mimetype = data_element.getAttribute('mimeType');
  var filename = data_element.getAttribute('filename');
  var text = data_element.innerHTML;
  var binary = base64_to_binary(text);
  var blob = new Blob([binary], {
    type: mimetype, size: binary.length
  });

  if (window.navigator && window.navigator.msSaveOrOpenBlob) {
    // IE
    window.navigator.msSaveOrOpenBlob(blob, filename);
  } else {
    // Non-IE
    var url = window.URL.createObjectURL(blob);
    window.open(url);
  }
}


/* Polyfill IE atob/btoa   ************************************/

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define([], function () {
      factory(root);
    });
  } else factory(root);
  // node.js has always supported base64 conversions, while browsers that support
  // web workers support base64 too, but you may never know.
})(typeof exports !== "undefined" ? exports: this, function (root) {
  if (root.atob) {
    // Some browsers' implementation of atob doesn't support whitespaces
    // in the encoded string (notably, IE). This wraps the native atob
    // in a function that strips the whitespaces.
    // The original function can be retrieved in atob.original
    try {
      root.atob(" ");
    }
    catch (e) {
      root.atob = (function (atob) {
        var func = function (string) {
          return atob(String(string).replace(/[\t\n\f\r ]+/g, ""));
        };
        func.original = atob;
        return func;
      })(root.atob);
    }
    return;
  }

  // base64 character set, plus padding character (=)
  var b64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
  // Regular expression to check formal correctness of base64 encoded strings
  b64re = /^(?:[A-Za-z\d+\/]{4})*?(?:[A-Za-z\d+\/]{2}(?:==)?|[A-Za-z\d+\/]{3}=?)?$/;

  root.btoa = function (string) {
    string = String(string);
    var bitmap, a, b, c,
    result = "", i = 0,
    rest = string.length % 3; // To determine the final padding

    for (; i < string.length;) {
      if ((a = string.charCodeAt(i++)) > 255 || (b = string.charCodeAt(i++)) > 255 || (c = string.charCodeAt(i++)) > 255)
      throw new TypeError("Failed to execute 'btoa' on 'Window': The string to be encoded contains characters outside of the Latin1 range.");

      bitmap = (a << 16) | (b << 8) | c;
      result += b64.charAt(bitmap >> 18 & 63) + b64.charAt(bitmap >> 12 & 63) + b64.charAt(bitmap >> 6 & 63) + b64.charAt(bitmap & 63);
    }

    // If there's need of padding, replace the last 'A's with equal signs
    return rest ? result.slice(0, rest - 3) + "===".substring(rest): result;
  };

  root.atob = function (string) {
    // atob can work with strings with whitespaces, even inside the encoded part,
    // but only \t, \n, \f, \r and ' ', which can be stripped.
    string = String(string).replace(/[\t\n\f\r ]+/g, "");
    if (! b64re.test(string))
    throw new TypeError("Failed to execute 'atob' on 'Window': The string to be decoded is not correctly encoded.");

    // Adding the padding if missing, for semplicity
    string += "==".slice(2 - (string.length & 3));
    var bitmap, result = "", r1, r2, i = 0;
    for (; i < string.length;) {
      bitmap = b64.indexOf(string.charAt(i++)) << 18 | b64.indexOf(string.charAt(i++)) << 12 | (r1 = b64.indexOf(string.charAt(i++))) << 6 | (r2 = b64.indexOf(string.charAt(i++)));

      result += r1 === 64 ? String.fromCharCode(bitmap >> 16 & 255): r2 === 64 ? String.fromCharCode(bitmap >> 16 & 255, bitmap >> 8 & 255): String.fromCharCode(bitmap >> 16 & 255, bitmap >> 8 & 255, bitmap & 255);
    }
    return result;
  };
});
//

            </script></html>