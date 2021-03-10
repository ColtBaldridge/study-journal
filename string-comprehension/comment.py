class Comment:
    def __init__(self, code):
        '''Comments are defined the slice of a string after the #'''
        self.text = self.__get_comment(code)

    def __get_comment(self, code):
        '''
        If there is a comment, return a slice beginning after the #.
        Otherwise return None.
        '''
        if self.__has_comment(code):
            return code[self.__get_start_of_comment(code):]
        else:
            return '\n'

    def __has_comment(self, code):
        '''Return True if string code contains at least one '#'.'''
        return '#' in code

    def __get_start_of_comment(self, code):
        '''Return the first index after the first #.'''
        return self.__get_hash_index(code) + 1

    def __get_hash_index(self, code):
        '''Find the first instance of # within the code.'''
        for index in range(len(code)):
            if self.__check_for_hash(index, code):
                return index

    def __check_for_hash(self, index, code):
        '''Return `index` if the data at `code[index]` is a #.'''
        if self.__is_hash_character(code[index]):
            return True

    def __is_hash_character(self, char):
        '''Compare the value of `char` against #.'''
        return char == '#'

# Demonstrate the code sucessrully parses a line of code.
def main():
    pass


if __name__ == '__main__':
    main()