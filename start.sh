#!/bin/bash

correct_token="abc123XYZ"

# token file se token padho
if [ -f .token ]; then
    user_token=$(cat .token)
else
    echo "❌ .token file missing!"
    exit 1
fi

if [ "$user_token" == "$correct_token" ]; then
    echo "✅ Token verified! Script running..."
    # Yaha se real code chalao
    echo "Hello, your code is running!"
else
    echo "❌ Invalid token! Access denied."
    exit 1
fi
