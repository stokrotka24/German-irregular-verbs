import mariadb
import sys
import random
import pyinputplus as pyip
from colorama import Fore

try:
    conn = mariadb.connect(
        user='german_connector',
        password='connector',
        host='localhost')
except mariadb.Error as e:
    print(f'Error connecting to MariaDB Platform: {e}')
    sys.exit(1)

cur = conn.cursor()
verbs = []
cur.execute('SELECT * FROM german_learning.irregular_verbs')
result = cur.fetchall()

for row in result:
    row = list(row)
    row.append(False)
    verbs.append(row)

length = len(verbs)

print(Fore.LIGHTBLUE_EX + f'Number of available words: {length}')
num_verbs = pyip.inputNum('Enter how many words do you want to repeat: ', min=1, max=length)
verbs = random.sample(verbs, num_verbs)
print()

turn = 1
while True:
    print(Fore.LIGHTBLUE_EX + 'Turn no.' + str(turn))
    input(Fore.RESET + 'Press Enter to begin turn... ')
    print()
    random.shuffle(verbs)

    for verb in verbs:
        print(Fore.LIGHTMAGENTA_EX + verb[3])
        print(Fore.RESET, end='')

        first_form = pyip.inputStr('1st form: ', blockRegexes=[r'[A-Z]+'])
        second_form = pyip.inputStr('2nd form: ', blockRegexes=[r'[A-Z]+'])
        third_form = pyip.inputStr('3rd form: ', blockRegexes=[r'[A-Z]+'])

        if "(sein)" in verb[2] and "(sein)" not in third_form:
            third_form = "(sein) " + third_form

        if first_form == verb[0] and second_form == verb[1] and third_form == verb[2]:
            print(Fore.LIGHTGREEN_EX + 'Correct')
            verb[4] = True
        else:
            print(Fore.RED + 'Mistake')
            print('Correct answer: ' + str(tuple(verb[0:3])))

        input(Fore.RESET + 'Press Enter to continue... ')
        print()

    tmp_verbs = []
    for verb in verbs:
        if not verb[4]:
            tmp_verbs.append(verb)
    if not tmp_verbs:
        break
    else:
        verbs = tmp_verbs
        turn += 1

print(Fore.LIGHTBLUE_EX + f'You needed {turn} turn(s) to learn all words.\nBye bye!')
conn.close()
sys.exit()
