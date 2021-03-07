from abc import ABCMeta,abstractmethod  

class BBB:
    def __init__(self):
        pass

class AAA(BBB):
    def __init__(self,val):
        self.a1 = val

    def getA1(self):
        return self.a1

    def setA1(self,val):
        self.a1 = val

    @abstractmethod
    def abstractA1(self):
        pass

    @staticmethod
    def staticA1():
        pass

    @classmethod
    def classA1(cls):
        pass

if __name__ == "__main__":
    a = AAA(5)
    print(a.getA1())
    print(a.setA1(2))
    print(a.getA1())