from attribute import Attribute
from comment import Comment
from os import getcwd
from os import system
from pathlib import Path

def main():

    # src = Path(getcwd(), 'default-values.txt')
    # dst = Path(getcwd(), 'AUTOGEN.md')

    writer = open('AUTOGEN.md', 'w')
    writer.write('# Default Values\n\n')
    with open('default-values.txt', 'r') as reader:
        for line in reader.readlines():  
            attribute = Attribute(line)
            description = Comment(line)

            entry = f'* `{attribute.name}` - {description.text}\n'

            writer.write(entry)

    writer.close()
    system('code AUTOGEN.md')
    
    
if __name__ == '__main__':
    main()