#!/bin/bash

echo "🐉 Enter WhatsApp number with country code (e.g., 919812345678):"
read number

echo "✏️ Enter optional message (press Enter to skip):"
read message

# Encode message (replace spaces with %20)
encoded_msg=$(echo "$message" | sed 's/ /%20/g')

if [ -z "$message" ]; then
    link="https://wa.me/$number"
else
    link="https://wa.me/$number?text=$encoded_msg"
fi

output="whatsapp_${number}.png"

qrencode -o "$output" "$link"

echo ""
echo "✅ QR code generated: $output"
echo "📱 Scan it to open chat: $link"