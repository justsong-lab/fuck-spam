import requests
import random
from tqdm import tqdm
from faker import Faker


def fuck():
    fake = Faker(locale='zh_CN')
    for i in tqdm(range(10000)):
        email = fake.email()
        email = f'{email.split("@")[0]}@mail.scut.edu.cn'
        form_data = {'user': email, 'pass': fake.password()}
        res = requests.post(
            "http://mail.admin-owa.email/app/tem.php?act=reg", data=form_data)


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
