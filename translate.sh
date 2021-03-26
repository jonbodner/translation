#!/bin/zsh

if [ -z "$TRANSLATE_LANG" ]
then
      TRANSLATE_LANG=en
fi

curl -Gs \
 --data-urlencode "client=gtx" \
 --data-urlencode "sl=auto" \
 --data-urlencode "tl=$TRANSLATE_LANG" \
 --data-urlencode "dt=t" \
 --data-urlencode "q=$1"\
 https://translate.googleapis.com/translate_a/single \
 | jq -r '[.[0][] | .[0]] | join("")'

