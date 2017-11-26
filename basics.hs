{-
	
	- This file contains basic functions for Haskell. 
	- The functionality is very basic, nonetheless, it's 
	  fundamental.
	- http://fileadmin.cs.lth.se/cs/education/edan40/twodozenlessons/twodznq.pdf
-}

--duplicar un número
doble x = 2 * x
--cuadruplicar
cuad x = doble (double x)


-- clases
data Dia = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo 
			deriving (Enum, Eq, Show, Ord)

semana = enumFromTo Lunes Viernes

-- funciones populares: 
-- 1) factorial
factorial n = case n of
	0 -> 1
	n | n > 0 -> n * factorial (n - 1)
	otherwise -> error "negative number"




factorial' 0 = 1
factorial' n | n > 0 = n * factorial' (n - 1)
factorial' _ = error "negative number"











