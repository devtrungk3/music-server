while True:
    name = input('Enter the name: ')
    name = name.replace(' ', '-')
    name = name.lower()
    print(name, end='.mp3')
    print()