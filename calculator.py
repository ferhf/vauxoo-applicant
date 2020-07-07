"""
Módulo para realizar cálculos de suma.
"""


class calculator_class(object):
    """
    Clase para realizar cálculos básicos.
    """

    def sum(self, num_list):
        """
        Método para realizar suma. Se recibe una lista de números.
        Se verifica que el parámetro recibido sea una lista, 
        si es así, se realiza la suma de cada de uno de los elementos.  
        """
        suma = 0

        if type(num_list) is list:
            
            for num in num_list:
                suma += num
                    
        return suma
