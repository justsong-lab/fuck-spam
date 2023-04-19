from faker import Faker

fake = Faker()

with open('emails_passwords.txt', 'w') as f:
    for i in range(10000):
        email = fake.email()
        email = f'{email.split("@")[0]}@mail.scut.edu.cn'
        password = fake.password()
        f.write(f"{email},{password}\n")
