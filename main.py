import requests
import random
from tqdm import tqdm
from faker import Faker

url = 'https://yiyi77.fun/post.php'

headers = {
    'authority': 'yiyi77.fun',
    'accept': 'application/json, text/javascript, */*; q=0.01',
    'accept-language': 'en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7',
    'content-type': 'application/x-www-form-urlencoded; charset=UTF-8',
    'cookie': 'PHPSESSID=84a56d7utrgnmuii93uo4uvn67; user_recoding=isalien',
    'origin': 'https://yiyi77.fun',
    'referer': 'https://yiyi77.fun/',
    'sec-ch-ua': '"Chromium";v="112", "Google Chrome";v="112", "Not:A-Brand";v="99"',
    'sec-ch-ua-mobile': '?0',
    'sec-ch-ua-platform': '"Windows"',
    'sec-fetch-dest': 'empty',
    'sec-fetch-mode': 'cors',
    'sec-fetch-site': 'same-origin',
    'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',
    'x-requested-with': 'XMLHttpRequest'
}

def fuck():
    fake = Faker(locale='zh_CN')
    for i in tqdm(range(10000)):
        email = fake.email()
        email = f'{email.split("@")[0]}@mail.scut.edu.cn'
        form_data = {'mail': email, 'pass': fake.password()}
        requests.post(url, headers=headers, data=form_data)


count = 0

def main():
    global count
    if count > 10:
        return
    try:
        fuck()
    except:
        count += 1
        main()


main()
