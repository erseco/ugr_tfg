#!/bin/bash



#wget https://docs.google.com/spreadsheets/d/1_PtOspuoQBiH88XS8LP_UetWCnzsBH69m84pvzbAK1A/pubchart?oid=118303342\&format=image -O periodicidad.png

# Agregar el identificador de la grafica publicada via google spreadsheets
charts=(
     '118303342'
     '1162341390'
     '1231693317'
     '250258310'
     '851439341'
     '281145366'
     '2134572136'
     '1578859180'
     '1564000539'
     '1434557534'
     '585209756'
     '1465138426'
     '628130943'
     '1368830506'
     '1506978204'
     '491850727'
     '64116547'
     '539847528'
     '947565933'
     '1065218091'
     '1769269166'
     '156837955'
     '115966961'
     '894102513'
     '96502019'
     '1837311233'
     '185097457'
     '883332632'
     '410117830'
     '839754412'
     '1158955473'
     '500629786'
     '698081852'
     '410352310'
     '1908027447'
     '281979086'
     '1008551877'
     '1323349533'
   )


for i in "${charts[@]}"
do
    echo $i
    wget https://docs.google.com/spreadsheets/d/1_PtOspuoQBiH88XS8LP_UetWCnzsBH69m84pvzbAK1A/pubchart?oid=$i\&format=image -O graph_$i.png

done
