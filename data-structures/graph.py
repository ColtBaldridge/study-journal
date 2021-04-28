

class Graph:

    class Vertex:
        def __init__(self):
            pass

    class Edge:
        def __init__(self, vertex1, vertex2):
            self.edge = [vertex1, vertex2]

    def __init__(self):
        self.vertices = []
        self.adjacency_matrix = [][]
    
    def