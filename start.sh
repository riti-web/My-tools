#!/bin/bash

correct_token="abc123XYZ"

if [ -f .token ]; then
    user_token=$(cat .token)
else
    echo "❌ .token file missing!"
    exit 1
fi

if [ "$user_token" == "$correct_token" ]; then
    echo "✅ Token verified! Running scripts..."

    # helper.sh ko source karna
    source ./helper.sh

    # helper function call
    say_hello

    # scripts/script1.sh ko run karna
    bash scripts/script1.sh

    # scripts/script2.sh ko bhi run karna
    bash scripts/script2.sh

else
    echo "❌ Invalid token! Access denied."
    exit 1
fi
