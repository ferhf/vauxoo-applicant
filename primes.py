"""
Modulo para verificar si un número es primo.
"""

class prime_class(object):
    """
    Clase que verifica si un número es primo o no, retorna boolean.
    """

    def is_prime(self, num_int):
        """
        Método que recibe número entero y verifica si es número primo o no, retorna boolean.
        Se verifica revisando el residuo de todas las divisiones de num_int entre cada número
        desde 2 hasta num_int, si es que alguna de esas divisiones tiene como residuo cero, 
        significa que no es primo, si termina el ciclo y nunca obtuvo una división con residuo 
        cero (división exacta) entonces num_int es primo.
        Se revisa que sea mayor a cero y en el caso de que sea 1, por defecto manda False.
        """        
        es_primo = True

        if num_int > 1:

            cont = 2

            while cont != num_int:

                if num_int % cont == 0:
                    es_primo = False
                    break
                
                cont += 1

            # your primes code here
            return es_primo
        elif num_int == 1:
            es_primo = False
        else:
            print('El número no es positivo mayor a cero.')
            es_primo = False




