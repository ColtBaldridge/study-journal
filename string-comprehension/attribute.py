class Attribute:

    def __init__(self, code):
        self.name = self.__get__name(code)

    def __get__name(self, code):
        return  code[1:self.__find_close_quote(code)]

    def __find_close_quote(self, code):
        for index in range(1, len(code)):
            if self.__is_quotation_mark(code[index]):
                return index

    def __is_quotation_mark(self, char):
        return char in ('\'', '\"')