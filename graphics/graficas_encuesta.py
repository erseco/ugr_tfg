#!/usr/bin/env python

import wget

url = 'http://www.futurecrew.com/skaven/song_files/mp3/razorback.mp3'
filename = wget.download(url, bar=bar_thermometer)



#wget https://docs.google.com/spreadsheets/d/1_PtOspuoQBiH88XS8LP_UetWCnzsBH69m84pvzbAK1A/pubchart?oid=118303342\&format=image -O periodicidad.png

# Agregar el identificador de la grafica publicada via google spreadsheets
#charts=(
#     '118303342'
#     '1162341390'
#     '1231693317'
#     '250258310'
#     '851439341'
#     '281145366'
#     '2134572136'
#   )
#
#
#for i in "${charts[@]}"
#do
#    echo $i
#    wget https://docs.google.com/spreadsheets/d/1_PtOspuoQBiH88XS8LP_UetWCnzsBH69m84pvzbAK1A/pubchart?oid=$i\&format=image -O graph_$i.png
#
#done
