import requests
import random
from tqdm import tqdm
from faker import Faker


def main():
    fake = Faker(locale='zh_CN')
    for i in tqdm(range(10000)):
        email = fake.email()
        email = f'{email.split("@")[0]}@mail.scut.edu.cn'
        form_data = {'attr_26': email, 'attr_27': fake.password()}
        res = requests.post(
            "https://mail.jpbsxbp.cn/index.php?m=home&c=Lists&a=gbook_submit&lang=cn", data=form_data)


main()
