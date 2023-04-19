#!/bin/bash

# 从标准输入中读取邮箱和密码
read -r email_password

# 使用 awk 命令将邮箱和密码分别存入两个变量中
email=$(echo "$email_password" | awk '{print $1}')
password=$(echo "$email_password" | awk '{print $2}')

# 使用 curl 命令发送 POST 请求
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
  --data-raw "mail=$email&pass=$password" \
  --compressed > /dev/null 2>&1