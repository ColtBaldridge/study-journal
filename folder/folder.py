from pathlib import Path
from queue import Queue
# from shutil import move2
from shutil import rmtree


class Folder:

    def __init__(self, name):
        self.name = name
        self.path = Path(f'{name}')

        self.__create_folder()

    def __create_folder(self):
        if not self.path.exists():
            self.__create_path(self.name)
    
    def __create_path(self, child, parent=None):
        if parent is None:
            Path(child).mkdir()
        else:
            Path(f'{parent}/{child}').mkdir()

def main():
    staging = Folder('staging-area')
    archive = Folder('archive')

    # Populate Archive with yearly entries
    for year in range(1990, 2022):
        parent = archive.name
        child = str(year)
        Path(f'{parent}/{child}').mkdir()


if __name__ == '__main__':
    main()