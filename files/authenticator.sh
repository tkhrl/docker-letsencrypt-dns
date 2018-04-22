#!/bin/sh
set -e

lexicon $LEXICON_PROVIDER $LEXICON_PROVIDER_OPTIONS create $CERTBOT_DOMAIN TXT --name="_acme-challenge.$CERTBOT_DOMAIN." --content="$CERTBOT_VALIDATION"

sleep ${LEXICON_SLEEP_TIME:-30}
