#!/bin/bash
mkdir public_html
# echo "<html><body>" > public_html/index.html
echo "<h1>Ugadai chislo</h1>" > public_html/index.html
# echo "<br><a href=\"1.html\">Start</a></body></html>" >> public_html/index.html

numm=$((RANDOM % 100 + 1))
for ((i=1; i<=100; i++))
do
        echo "<a href=\"$i.html\">$i</a>" >> public_html/index.html

        if [ $i -eq $numm ]
                then
                        echo "<h1>Vi ugadali</h1>" >> public_html/$i.html
                else
                        if [ $i -gt $numm ]
                        then
                                echo "<h1>chislo bolshe</h1>" >> public_html/$i.html
                        else
                                echo "<h1>chislo menshe</h1>" >> public_html/$i.html
                fi
        fi

        echo "<br>" >> public_html/$i.html

        for ((j=1; j<=100; j++))
        do
                echo "<a href=\"$j.html\">$j</a>" >> public_html/$i.html
        done

        echo "<br><br><a href=\"index.html\">home</a>" >> public_html/$i.html
done
