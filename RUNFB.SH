#!/bin/bash

# Daftar URL webhook
webhooks=(
  "https://trigger.macrodroid.com/32d918aa-efc3-4186-bf9d-8c20e6fe4380/Bukafb"
  "https://trigger.macrodroid.com/beadfc4b-1a16-4d2f-ad4b-e39ff7caea2f/Bukafb"
)

# Kirim permintaan serentak
for url in "${webhooks[@]}"
do
  echo "Triggering: $url"
  curl -s "$url" > /dev/null &
done

# Tunggu semua proses selesai
wait

echo "Semua webhook telah dipanggil secara paralel."
