#!/bin/bash

function get_ttf_links () {
    cd fonts

    # Download font files
    cat fonts.css | sed '/src: url/!d' | sed 's/  src: url(//;s/) .*//' > links.txt
    while read LINK; do
        # echo "Downloading $LINK"
        wget -q -N $LINK
    done <links.txt

    # Replace links in fonts.css for local names
    ls | sed '/ttf$/!d' > links.txt
    while read NAME; do
        # echo "File name $NAME"
        cat fonts.css | sed "s/(.*$NAME/(.\/$NAME/">tmp.css
        mv tmp.css fonts.css
    done <links.txt

    rm links.txt
}

function edit_bootstrap {
    cat bootstrap.css | sed 's/https:\/\/fonts.googleapis.com.*display=swap/.\/fonts\/fonts.css/'>tmp
    mv tmp bootstrap.css
    cat bootstrap.min.css | sed 's/https:\/\/fonts.googleapis.com.*display=swap/.\/fonts\/fonts.css/'>tmp
    mv tmp bootstrap.min.css
    cat _bootswatch.scss | sed 's/https:\/\/fonts.googleapis.com.*display=swap/.\/fonts\/fonts.css/'>tmp
    mv tmp _bootswatch.scss
}

function get_fonts_css () {
    cd $BW_PATH/dist/$1
    # CUR_PATH=`pwd`
    # echo "CUR_PATH $CUR_PATH"
    URL=`cat bootstrap.css | grep fonts.googleapis.com | sed 's/@import url("//;s/");//'`

    echo "FONT URL = "$URL

    if [ "$URL" != "" ]
    then
        mkdir -p fonts
        wget -q -O fonts/fonts.css $URL

        edit_bootstrap
        get_ttf_links
    fi
}

BW_PATH=$1
echo "Downloading google fonts for bootswatch, path: $BW_PATH"
cd $BW_PATH/dist

ALLDIR=`ls`
# echo "LS: $ALLDIR"

for DIR in $ALLDIR; do
    echo "THEME = "$DIR
    get_fonts_css $DIR
done