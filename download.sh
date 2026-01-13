#!/bin/bash
# لینک فایل از نسخه وب تلگرام
URL="https://t.me/s/rahgozar94725_ip"

# پیدا کردن آخرین لینک فایل ehi در صفحه
FILE_URL=$(curl -s $URL | grep -oP 'https://t.me/rahgozar94725_ip/[0-9]+\?single|https://t.me/rahgozar94725_ip/[0-9]+' | tail -n 1)

# نمایش لینک برای اطمینان
echo "Target Post: $FILE_URL"

# استفاده از یک سرویس واسط برای دانلود مستقیم از تلگرام
# نکته: تلگرام اجازه دانلود مستقیم به ربات ساده را نمی‌دهد، 
# ما از طریق این دستور سعی می‌کنیم فایل را بیرون بکشیم.
curl -L "https://t.me/rahgozar94725_ip/324" -o config_file.ehi
