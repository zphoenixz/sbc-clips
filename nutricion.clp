; Sat May 11 18:38:01 CEST 2019
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot Name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Vitaminas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nutrientes
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tipo+de+cocinado
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Peso
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Bebidas
		(type INSTANCE)
;+		(allowed-classes Bebida)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Cantidad
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot practica2_Class10033
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Ingredientes2
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Coccion
;+		(comment "Como se cocina el plato, al horno etc")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Properties
		(type INSTANCE)
;+		(allowed-classes Propiedades)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Calorias
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Ingredientes
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Ingrediente
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Properties
		(type INSTANCE)
;+		(allowed-classes Propiedades)
		(create-accessor read-write))
	(single-slot Vitaminas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Peso
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Calorias
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nutrientes
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Coccion
;+		(comment "Como se cocina el plato, al horno etc")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Frutas
	(is-a Ingrediente)
	(role concrete))

(defclass Verduras
	(is-a Ingrediente)
	(role concrete))

(defclass Pescado
	(is-a Ingrediente)
	(role concrete))

(defclass Huevo
	(is-a Ingrediente)
	(role concrete))

(defclass Carne
	(is-a Ingrediente)
	(role concrete))

(defclass Cereales
	(is-a Ingrediente)
	(role concrete))

(defclass Frutos+secos
	(is-a Ingrediente)
	(role concrete))

(defclass Lacteo
	(is-a Ingrediente)
	(role concrete))

(defclass Legumbre
	(is-a Ingrediente)
	(role concrete))

(defclass Mariscos
	(is-a Ingrediente)
	(role concrete))

(defclass Azucar
	(is-a Ingrediente)
	(role concrete))

(defclass Propiedades
	(is-a USER)
	(role concrete)
	(single-slot Name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Platos
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
        (visibility public)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Ingredientes
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Bebidas
		(type INSTANCE)
;+		(allowed-classes Bebida)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Desayuno
	(is-a Platos)
	(role concrete))

(defclass Comidas
	(is-a Platos)
	(role concrete))

(defclass Postres
	(is-a Platos)
	(role concrete))

(defclass Bebida
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Cantidad
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Ingredientes2
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Calorias
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Cliente
	(is-a USER)
	(role concrete)
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))


; Sat May 11 18:38:01 CEST 2019
; 
;+ (version "3.5")
;+ (build "Build 663")
(definstances instances 
    ([practica2_Class0] of  Propiedades

	(Name "Proteinas"))

([practica2_Class10000] of  Frutas

	(Calorias 62)
	(Nombre "Naranja")
	(Properties [practica2_Class10036]))

([practica2_Class10001] of  Frutas

	(Calorias 40)
	(Nombre "Mandarina")
	(Properties [practica2_Class10036]))

([practica2_Class10002] of  Bebida

	(Calorias 70)
	(Cantidad 100)
	(Ingredientes2 [practica2_Class10003])
	(Nombre "Zumo de piña"))

([practica2_Class10003] of  Frutas

	(Calorias 74)
	(Nombre "Pinia")
	(Peso 100)
	(Properties [practica2_Class10036])
	(Vitaminas 50))

([practica2_Class10007] of  Desayuno

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class10018])
	(Nombre "Manzana con agua"))

([practica2_Class10008] of  Cereales

	(Calorias 220)
	(Nombre "Pasta")
	(Peso 100)
	(Properties [practica2_Class10036])
	(Vitaminas 0))

([practica2_Class10010] of  Cereales

	(Calorias 204)
	(Nombre "Arroz")
	(Properties [practica2_Class10036]))

([practica2_Class10016] of  Bebida

	(Calorias 0)
	(Nombre "Agua"))

([practica2_Class10018] of  Frutas

	(Calorias 70)
	(Nombre "Manzana")
	(Properties [practica2_Class10036]))

([practica2_Class10019] of  Frutas

	(Calorias 105)
	(Nombre "Platano")
	(Properties [practica2_Class10036]))

([practica2_Class10036] of  Propiedades

	(Name "Hidratos de carbono"))

([practica2_Class2] of  Propiedades

	(Name "Grasas"))

([practica2_Class20000] of  Carne

	(Calorias 111)
	(Coccion "A la plancha")
	(Nombre "Filete de pollo a la plancha")
	(Properties [practica2_Class0]))

([practica2_Class20002] of  Frutas

	(Calorias 49)
	(Nombre "Fresas")
	(Properties [practica2_Class10036]))

([practica2_Class20003] of  Frutas

	(Calorias 96)
	(Nombre "Pera")
	(Properties [practica2_Class10036]))

([practica2_Class20004] of  Frutas

	(Calorias 46)
	(Nombre "Kiwi")
	(Properties [practica2_Class10036]))

([practica2_Class20005] of  Frutas

	(Calorias 55)
	(Nombre "Uvas")
	(Properties [practica2_Class10036]))

([practica2_Class20006] of  Frutas

	(Calorias 17)
	(Nombre "Limon")
	(Properties [practica2_Class10036]))

([practica2_Class20007] of  Frutas

	(Calorias 85)
	(Nombre "Mango")
	(Properties [practica2_Class10036]))

([practica2_Class20008] of  Frutas

	(Calorias 53)
	(Nombre "Melón")
	(Properties [practica2_Class10036]))

([practica2_Class20009] of  Frutas

	(Calorias 46)
	(Nombre "Sandia")
	(Properties [practica2_Class10036]))

([practica2_Class20010] of  Frutas

	(Calorias 76)
	(Nombre "Ciruela")
	(Properties [practica2_Class10036]))

([practica2_Class20011] of  Frutas

	(Calorias 38)
	(Nombre "Melocoton")
	(Properties [practica2_Class10036]))

([practica2_Class20012] of  Cereales

	(Calorias 147)
	(Nombre "Avena")
	(Properties [practica2_Class10036]))

([practica2_Class20013] of  Frutos+secos

	(Calorias 176)
	(Nombre "Avellanas")
	(Properties [practica2_Class2]))

([practica2_Class20014] of  Frutos+secos

	(Calorias 183)
	(Nombre "Nueces")
	(Properties [practica2_Class10036]))

([practica2_Class20015] of  Frutos+secos

	(Calorias 160)
	(Nombre "Almendras")
	(Properties [practica2_Class2]))

([practica2_Class20017] of  Frutos+secos

	(Calorias 159)
	(Nombre "Cacahuete"))

([practica2_Class30000] of  Cereales

	(Calorias 127)
	(Nombre "Galletas")
	(Properties [practica2_Class10036]))

([practica2_Class30001] of  Desayuno

	(Bebidas [practica2_Class40002])
	(Ingredientes [practica2_Class30000])
	(Nombre "Galletas y leche"))

([practica2_Class30002] of  Carne

	(Calorias 135)
	(Coccion "A la plancha")
	(Nombre "Filete de ternera a la plancha")
	(Properties [practica2_Class0]))

([practica2_Class30003] of  Carne

	(Calorias 136)
	(Coccion "A la plancha")
	(Nombre "Filete de cerdo a la plancha")
	(Properties [practica2_Class0]))

([practica2_Class30004] of  Carne

	(Calorias 110)
	(Coccion "Al horno")
	(Nombre "Ternera al horno")
	(Properties [practica2_Class0]))

([practica2_Class30005] of  Verduras

	(Calorias 84)
	(Nombre "Alcachofa")
	(Properties [practica2_Class10036]))

([practica2_Class30006] of  Verduras

	(Calorias 120)
	(Nombre "Berenjena")
	(Properties [practica2_Class10036]))

([practica2_Class30008] of  Verduras

	(Calorias 52)
	(Nombre "Zanahoria")
	(Properties [practica2_Class10036]))

([practica2_Class30009] of  Verduras

	(Calorias 35)
	(Nombre "Calabacín")
	(Properties [practica2_Class10036]))

([practica2_Class30010] of  Verduras

	(Calorias 20)
	(Nombre "Espinacas")
	(Properties [practica2_Class10036]))

([practica2_Class30011] of  Verduras

	(Calorias 11)
	(Nombre "Lechuga")
	(Properties [practica2_Class10036]))

([practica2_Class30012] of  Verduras

	(Calorias 32)
	(Nombre "Cebolla")
	(Properties [practica2_Class10036]))

([practica2_Class30014] of  Verduras

	(Calorias 140)
	(Nombre "Patata")
	(Properties [practica2_Class10036]))

([practica2_Class30015] of  Verduras

	(Calorias 25)
	(Nombre "Tomate")
	(Properties [practica2_Class10036]))

([practica2_Class30016] of  Bebida

	(Ingredientes2 [practica2_Class10000])
	(Nombre "Zumo de Naranja"))

([practica2_Class30017] of  Bebida

	(Ingredientes2 [practica2_Class20011])
	(Nombre "Zumo de melococtón"))

([practica2_Class30018] of  Frutos+secos

	(Calorias 155)
	(Nombre "Anacardos")
	(Properties [practica2_Class2]))

([practica2_Class30021] of  Frutos+secos

	(Calorias 125)
	(Nombre "Maiz frito")
	(Properties [practica2_Class10036]))

([practica2_Class30022] of  Lacteo

	(Calorias 72)
	(Nombre "Yogurt")
	(Properties [practica2_Class2]))

([practica2_Class30023] of  Lacteo

	(Calorias 120)
	(Nombre "Leche")
	(Properties [practica2_Class2]))

([practica2_Class30024] of  Lacteo

	(Calorias 84)
	(Nombre "Queso")
	(Properties [practica2_Class2]))

([practica2_Class30025] of  Lacteo

	(Calorias 16)
	(Nombre "Nata")
	(Properties [practica2_Class2]))

([practica2_Class30026] of  Lacteo

	(Calorias 102)
	(Nombre "Mantequilla")
	(Properties [practica2_Class2]))

([practica2_Class30027] of  Legumbre

	(Calorias 90)
	(Nombre "Garbanzos")
	(Properties [practica2_Class10036]))

([practica2_Class30028] of  Legumbre

	(Calorias 89)
	(Nombre "Lentejas")
	(Properties [practica2_Class10036]))

([practica2_Class30029] of  Legumbre

	(Calorias 195)
	(Nombre "Judias pintas")
	(Properties [practica2_Class10036]))

([practica2_Class30030] of  Legumbre

	(Calorias 105)
	(Nombre "Judias blancas")
	(Properties [practica2_Class10036]))

([practica2_Class30031] of  Legumbre

	(Calorias 62)
	(Nombre "Soja")
	(Properties [practica2_Class10036]))

([practica2_Class30032] of  Legumbre

	(Calorias 117)
	(Nombre "Guisantes")
	(Properties [practica2_Class10036]))

([practica2_Class40001] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class10001])
	(Nombre "Mandarina"))

([practica2_Class40002] of  Bebida

	(Ingredientes2 [practica2_Class30023])
	(Nombre "Leche"))

([practica2_Class40003] of  Desayuno

	(Bebidas [practica2_Class30016])
	(Ingredientes [practica2_Class10018])
	(Nombre "Manzana con zumo de naranja"))

([practica2_Class40004] of  Desayuno

	(Bebidas [practica2_Class10002])
	(Ingredientes [practica2_Class10000])
	(Nombre "Naranja con zumo de piña"))

([practica2_Class40005] of  Desayuno

	(Bebidas [practica2_Class30017])
	(Ingredientes [practica2_Class10000])
	(Nombre "Naranja con zumo de melocoton"))

([practica2_Class40006] of  Desayuno

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class10000])
	(Nombre "Naranja con agua"))

([practica2_Class40007] of  Desayuno

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class20011])
	(Nombre "Melocoton con agua"))

([practica2_Class40008] of  Desayuno

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class20007])
	(Nombre "Mango con agua"))

([practica2_Class40009] of  Desayuno

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class10001])
	(Nombre "Mandarina con agua"))

([practica2_Class40010] of  Desayuno

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30022]
		[practica2_Class60002])
	(Nombre "Yogurt con azucar y agua"))

([practica2_Class40011] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40036]
		[practica2_Class10018]
		[practica2_Class30012]
		[practica2_Class30008]
		[practica2_Class30026])
	(Nombre "Cerdo al horno con manzana"))

([practica2_Class40013] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40041]
		[practica2_Class30012]
		[practica2_Class30014]
		[practica2_Class30008])
	(Nombre "Estofado de cerdo con patatas y zanahoria"))

([practica2_Class40014] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40043]
		[practica2_Class30012]
		[practica2_Class30014]
		[practica2_Class30008])
	(Nombre "Estofado de pollo con patatas y zanahoria"))

([practica2_Class40015] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40042]
		[practica2_Class30012]
		[practica2_Class30014]
		[practica2_Class30008])
	(Nombre "Estofado de ternera con patatas y zanahoria"))

([practica2_Class40016] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30003]
		[practica2_Class30014])
	(Nombre "Filete de cerdo a la plancha con patatas"))

([practica2_Class40017] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40037]
		[practica2_Class20006]
		[practica2_Class30014]
		[practica2_Class30015])
	(Nombre "Pollo al horno"))

([practica2_Class40018] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30011]
		[practica2_Class20015]
		[practica2_Class30024])
	(Nombre "Ensalada con almendras"))

([practica2_Class40019] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30032]
		[practica2_Class30012]
		[practica2_Class30015]
		[practica2_Class30008])
	(Nombre "Guisantes en salsa"))

([practica2_Class40022] of  Pescado

	(Calorias 211)
	(Nombre "Bacalao")
	(Properties [practica2_Class2]))

([practica2_Class40023] of  Pescado

	(Calorias 143)
	(Nombre "Atun")
	(Properties [practica2_Class0]))

([practica2_Class40029] of  Pescado

	(Calorias 104)
	(Nombre "Lenguado")
	(Properties [practica2_Class0]))

([practica2_Class40030] of  Pescado

	(Calorias 125)
	(Nombre "Lubina")
	(Properties [practica2_Class0]))

([practica2_Class40031] of  Pescado

	(Calorias 97)
	(Nombre "Rape")
	(Properties [practica2_Class0]))

([practica2_Class40032] of  Pescado

	(Calorias 120)
	(Nombre "Rodaballo")
	(Properties [practica2_Class0]))

([practica2_Class40033] of  Pescado

	(Calorias 83)
	(Nombre "Salmon")
	(Properties [practica2_Class0]))

([practica2_Class40034] of  Pescado

	(Calorias 183)
	(Nombre "Sardina")
	(Properties [practica2_Class2]))

([practica2_Class40036] of  Carne

	(Calorias 139)
	(Coccion "Al horno")
	(Nombre "Cerdo al horno")
	(Properties [practica2_Class2]))

([practica2_Class40037] of  Carne

	(Calorias 237)
	(Coccion "Al horno")
	(Nombre "Pollo al horno")
	(Properties [practica2_Class2]))

([practica2_Class40038] of  Carne

	(Calorias 190)
	(Coccion "Frito")
	(Nombre "Filete de pollo frito")
	(Properties [practica2_Class2]))

([practica2_Class40039] of  Carne

	(Calorias 123)
	(Coccion "Frito")
	(Nombre "Filete de cerdo frito")
	(Properties [practica2_Class2]))

([practica2_Class40040] of  Carne

	(Calorias 206)
	(Coccion "Frito")
	(Nombre "Filete de ternera frito")
	(Properties [practica2_Class2]))

([practica2_Class40041] of  Carne

	(Calorias 271)
	(Coccion "Estofado")
	(Nombre "Estofado de cerdo")
	(Properties [practica2_Class2]))

([practica2_Class40042] of  Carne

	(Calorias 116)
	(Coccion "Estofado")
	(Nombre "Estofado de ternera")
	(Properties [practica2_Class2]))

([practica2_Class40043] of  Carne

	(Calorias 306)
	(Nombre "Estofado de pollo")
	(Properties [practica2_Class10036]))

([practica2_Class40044] of  Mariscos

	(Calorias 63)
	(Nombre "Almeja")
	(Properties [practica2_Class0]))

([practica2_Class40045] of  Mariscos

	(Calorias 73)
	(Nombre "Berberecho")
	(Properties [practica2_Class0]))

([practica2_Class40046] of  Mariscos

	(Calorias 75)
	(Nombre "Bogavante")
	(Properties [practica2_Class0]))

([practica2_Class40047] of  Mariscos

	(Calorias 92)
	(Nombre "Calamar")
	(Properties [practica2_Class0]))

([practica2_Class40051] of  Mariscos

	(Calorias 105)
	(Nombre "Gamba")
	(Properties [practica2_Class0]))

([practica2_Class40052] of  Mariscos

	(Calorias 175)
	(Nombre "Langostino")
	(Properties [practica2_Class2]))

([practica2_Class40053] of  Mariscos

	(Calorias 86)
	(Nombre "Mejillon")
	(Properties [practica2_Class0]))

([practica2_Class40055] of  Mariscos

	(Calorias 58)
	(Nombre "Ostras")
	(Properties [practica2_Class0]))

([practica2_Class40056] of  Mariscos

	(Calorias 82)
	(Nombre "Pulpo")
	(Properties [practica2_Class0]))

([practica2_Class40057] of  Mariscos

	(Calorias 79)
	(Nombre "Sepia")
	(Properties [practica2_Class0]))

([practica2_Class50002] of  Cliente

	(nombre "Cliente1"))

([practica2_Class50020] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30028]
		[practica2_Class10010]
		[practica2_Class30012]
		[practica2_Class30008])
	(Nombre "Lentejas con arroz"))

([practica2_Class50021] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40023]
		[practica2_Class30012]
		[practica2_Class30006]
		[practica2_Class60044]
		[practica2_Class60043]
		[practica2_Class30008])
	(Nombre "Atún con verduras"))

([practica2_Class50022] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40034]
		[practica2_Class30014])
	(Nombre "Sardina con patatas"))

([practica2_Class50023] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40022]
		[practica2_Class30012]
		[practica2_Class30015])
	(Nombre "Bacalao con tomate"))

([practica2_Class50024] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40033]
		[practica2_Class30014]
		[practica2_Class30012]
		[practica2_Class60043]
		[practica2_Class30015])
	(Nombre "Salmon al horno"))

([practica2_Class50026] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40031]
		[practica2_Class30012]
		[practica2_Class30014])
	(Nombre "Rape a la gallega"))

([practica2_Class50028] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class10008]
		[practica2_Class30015])
	(Nombre "Pasta con tomate"))

([practica2_Class50029] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30011]
		[practica2_Class30015]
		[practica2_Class60067]
		[practica2_Class60044]
		[practica2_Class60043]
		[practica2_Class30024])
	(Nombre "Ensalada griega con queso"))

([practica2_Class50030] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40047]
		[practica2_Class20006])
	(Nombre "Calamares con limon"))

([practica2_Class50031] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30027]
		[practica2_Class30012]
		[practica2_Class30014]
		[practica2_Class60044]
		[practica2_Class60043])
	(Nombre "Estofado de garbanzos con verduras"))

([practica2_Class50032] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40039]
		[practica2_Class30014])
	(Nombre "Filete de cerdo frito con patatas"))

([practica2_Class50033] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class10008]
		[practica2_Class30026])
	(Nombre "Pasta con mantequilla"))

([practica2_Class50034] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40056]
		[practica2_Class30014]
		[practica2_Class30012])
	(Nombre "Pulpo a la gallega"))

([practica2_Class60002] of  Azucar

	(Calorias 16)
	(Nombre "Cucharada de azucar")
	(Properties [practica2_Class10036]))

([practica2_Class60003] of  Huevo

	(Calorias 89)
	(Nombre "Huevo frito")
	(Properties [practica2_Class2]))

([practica2_Class60004] of  Desayuno

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30022]
		[practica2_Class60002])
	(Nombre "Yogurt sin azucar y agua"))

([practica2_Class60005] of  Cereales

	(Calorias 80)
	(Nombre "Pan")
	(Properties [practica2_Class10036]))

([practica2_Class60006] of  Cereales

	(Calorias 69)
	(Nombre "Pan integral")
	(Properties [practica2_Class10036]))

([practica2_Class60007] of  Desayuno

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class60005]
		[practica2_Class30026])
	(Nombre "Tostada de pan con mantequilla y agua"))

([practica2_Class60010] of  Desayuno

	(Bebidas [practica2_Class30016])
	(Ingredientes [practica2_Class30000])
	(Nombre "Galletas y zumo de naranja"))

([practica2_Class60011] of  Desayuno

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class20012]
		[practica2_Class30022])
	(Nombre "Copos de avena con yogur y agua"))

([practica2_Class60012] of  Desayuno

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class60006]
		[practica2_Class30024]
		[practica2_Class60013])
	(Nombre "Tostada de pan integral con queso y aguacate y agua"))

([practica2_Class60013] of  Frutas

	(Calorias 45)
	(Nombre "Aguacate")
	(Properties [practica2_Class2]))

([practica2_Class60014] of  Desayuno

	(Bebidas [practica2_Class30016])
	(Ingredientes
		[practica2_Class30024]
		[practica2_Class60013]
		[practica2_Class60006])
	(Nombre "Tostada de pan integral con queso y aguacate y zumo de naranja"))

([practica2_Class60015] of  Desayuno

	(Bebidas [practica2_Class10002])
	(Ingredientes
		[practica2_Class30024]
		[practica2_Class60013]
		[practica2_Class60006])
	(Nombre "Tostada de pan integral con queso y aguacate y zumo de piña"))

([practica2_Class60016] of  Desayuno

	(Bebidas [practica2_Class30017])
	(Ingredientes
		[practica2_Class30024]
		[practica2_Class60013]
		[practica2_Class60006])
	(Nombre "Tostada de pan integral con queso y aguacate y zumo de melocoton"))

([practica2_Class60017] of  Desayuno

	(Bebidas [practica2_Class30016])
	(Ingredientes
		[practica2_Class20012]
		[practica2_Class30022])
	(Nombre "Copos de avena con yogur y zumo de naranja"))

([practica2_Class60018] of  Desayuno

	(Bebidas [practica2_Class10002])
	(Ingredientes
		[practica2_Class20012]
		[practica2_Class30022])
	(Nombre "Copos de avena con yogur y zumo de piña"))

([practica2_Class60019] of  Desayuno

	(Bebidas [practica2_Class30017])
	(Ingredientes
		[practica2_Class20012]
		[practica2_Class30022])
	(Nombre "Copos de avena con yogur y zumo de meloocoton"))

([practica2_Class60020] of  Desayuno

	(Bebidas [practica2_Class30017])
	(Ingredientes [practica2_Class30000])
	(Nombre "Galletas y zumo de melocoton"))

([practica2_Class60021] of  Desayuno

	(Bebidas [practica2_Class10002])
	(Ingredientes [practica2_Class30000])
	(Nombre "Galletas y zumo de piña"))

([practica2_Class60022] of  Desayuno

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class60005]
		[practica2_Class40023])
	(Nombre "Sandwich de atún y agua"))

([practica2_Class60023] of  Desayuno

	(Bebidas [practica2_Class30017])
	(Ingredientes
		[practica2_Class60005]
		[practica2_Class40023])
	(Nombre "Sandwich de atún y zumo de melocoton"))

([practica2_Class60024] of  Desayuno

	(Bebidas [practica2_Class10002])
	(Ingredientes
		[practica2_Class60005]
		[practica2_Class40023])
	(Nombre "Sandwich de atún y zumo de piña"))

([practica2_Class60025] of  Desayuno

	(Bebidas [practica2_Class30016])
	(Ingredientes
		[practica2_Class60005]
		[practica2_Class40023])
	(Nombre "Sandwich de atún y zumo de naranja"))

([practica2_Class60026] of  Bebida

	(Calorias 2)
	(Ingredientes2 [practica2_Class30023])
	(Nombre "Cafe"))

([practica2_Class60031] of  Desayuno

	(Bebidas [practica2_Class30016])
	(Ingredientes
		[practica2_Class60005]
		[practica2_Class30026])
	(Nombre "Tostada de pan con mantequilla y zumo de naranja"))

([practica2_Class60032] of  Desayuno

	(Bebidas [practica2_Class10002])
	(Ingredientes
		[practica2_Class60005]
		[practica2_Class30026])
	(Nombre "Tostada de pan con mantequilla y zumo de piña"))

([practica2_Class60033] of  Desayuno

	(Bebidas [practica2_Class30017])
	(Ingredientes
		[practica2_Class60005]
		[practica2_Class30026])
	(Nombre "Tostada de pan con mantequilla y zumo de melocoton"))

([practica2_Class60034] of  Desayuno

	(Bebidas [practica2_Class60026])
	(Ingredientes
		[practica2_Class30024]
		[practica2_Class60013]
		[practica2_Class60006])
	(Nombre "Tostada de pan integral con queso y aguacate y cafe sin azucar"))

([practica2_Class60035] of  Desayuno

	(Bebidas [practica2_Class60026])
	(Ingredientes
		[practica2_Class30024]
		[practica2_Class60013]
		[practica2_Class60006]
		[practica2_Class60002])
	(Nombre "Tostada de pan integral con queso y aguacate y cafe con azucar"))

([practica2_Class60036] of  Desayuno

	(Bebidas [practica2_Class60026])
	(Ingredientes [practica2_Class30000])
	(Nombre "Galletas y cafe sin azucar"))

([practica2_Class60037] of  Desayuno

	(Bebidas [practica2_Class60026])
	(Ingredientes
		[practica2_Class30000]
		[practica2_Class60002])
	(Nombre "Galletas y cafe con azucar"))

([practica2_Class60038] of  Desayuno

	(Bebidas [practica2_Class60026])
	(Ingredientes
		[practica2_Class60005]
		[practica2_Class30026])
	(Nombre "Tostada de pan con mantequilla y cafe sin azucar"))

([practica2_Class60039] of  Desayuno

	(Bebidas [practica2_Class60026])
	(Ingredientes
		[practica2_Class60005]
		[practica2_Class30026]
		[practica2_Class60002])
	(Nombre "Tostada de pan con mantequilla y cafe con azucar"))

([practica2_Class60041] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class10010]
		[practica2_Class40051]
		[practica2_Class30008]
		[practica2_Class30012]
		[practica2_Class60043])
	(Nombre "Arroz con gambas y verduras"))

([practica2_Class60042] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class10010]
		[practica2_Class20000])
	(Nombre "Arroz con pollo"))

([practica2_Class60043] of  Verduras

	(Calorias 24)
	(Nombre "Pimiento verde")
	(Properties [practica2_Class10036]))

([practica2_Class60044] of  Verduras

	(Calorias 31)
	(Nombre "Pimiento rojo")
	(Properties [practica2_Class10036]))

([practica2_Class60045] of  Verduras

	(Calorias 45)
	(Nombre "Pimiento amarillo")
	(Properties [practica2_Class10036]))

([practica2_Class60048] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class10010]
		[practica2_Class30002])
	(Nombre "Arroz con ternera"))

([practica2_Class60049] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class10010]
		[practica2_Class20000]
		[practica2_Class30012]
		[practica2_Class60043]
		[practica2_Class30008])
	(Nombre "Arroz con pollo y verduras"))

([practica2_Class60050] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class10010]
		[practica2_Class30002]
		[practica2_Class30012]
		[practica2_Class60043]
		[practica2_Class30008])
	(Nombre "Arroz con ternera y verduras"))

([practica2_Class60053] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class10010]
		[practica2_Class30015]
		[practica2_Class60055])
	(Nombre "Arroz a la cubana con tortilla"))

([practica2_Class60054] of  Huevo

	(Calorias 78)
	(Nombre "Huevo hervido")
	(Properties [practica2_Class2]))

([practica2_Class60055] of  Huevo

	(Calorias 93)
	(Nombre "Tortilla")
	(Properties [practica2_Class2]))

([practica2_Class60056] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class10010]
		[practica2_Class30015]
		[practica2_Class60003])
	(Nombre "Arroz a la cubana con huevo frito"))

([practica2_Class60057] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class10010]
		[practica2_Class40051]
		[practica2_Class40053]
		[practica2_Class30012]
		[practica2_Class40047]
		[practica2_Class30032]
		[practica2_Class60044])
	(Nombre "Paella de marisco"))

([practica2_Class60058] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class10010]
		[practica2_Class30012]
		[practica2_Class60060]
		[practica2_Class40043])
	(Nombre "Paella de pollo"))

([practica2_Class60059] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class10010]
		[practica2_Class30012]
		[practica2_Class30032]
		[practica2_Class60044]
		[practica2_Class60043]
		[practica2_Class30005])
	(Nombre "Paella de verduras"))

([practica2_Class60060] of  Verduras

	(Calorias 31)
	(Nombre "Judias verdes")
	(Properties [practica2_Class10036]))

([practica2_Class60061] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40022]
		[practica2_Class30012]
		[practica2_Class30023]
		[practica2_Class30032])
	(Nombre "Bacalao con guisantes"))

([practica2_Class60062] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40022]
		[practica2_Class30012]
		[practica2_Class30015]
		[practica2_Class30027])
	(Nombre "Bacalao con garbanzos"))

([practica2_Class60064] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30011]
		[practica2_Class30027]
		[practica2_Class40023]
		[practica2_Class60044]
		[practica2_Class30015]
		[practica2_Class60054])
	(Nombre "Ensalada de garbanzos"))

([practica2_Class60065] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40023]
		[practica2_Class60044]
		[practica2_Class60054]
		[practica2_Class30015]
		[practica2_Class30008])
	(Nombre "Ensalada de pasta"))

([practica2_Class60066] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30011]
		[practica2_Class40023]
		[practica2_Class30015])
	(Nombre "Ensalada mixta"))

([practica2_Class60067] of  Verduras

	(Calorias 16)
	(Nombre "Pepino")
	(Properties [practica2_Class10036]))

([practica2_Class70002] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class20011])
	(Nombre "Melocotón"))

([practica2_Class70003] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class10018])
	(Nombre "Manzana"))

([practica2_Class70004] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class10018])
	(Nombre "Manzana"))

([practica2_Class70005] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class20004])
	(Nombre "Kiwi"))

([practica2_Class70006] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class20007])
	(Nombre "Mango"))

([practica2_Class70007] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class20005])
	(Nombre "Uvas"))

([practica2_Class70008] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class10000])
	(Nombre "Naranja"))

([practica2_Class70009] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class20003])
	(Nombre "Pera"))

([practica2_Class70010] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class10019])
	(Nombre "Platano"))

([practica2_Class70011] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class10003])
	(Nombre "Piña"))

([practica2_Class70012] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class20002])
	(Nombre "Fresas"))

([practica2_Class70013] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class20008])
	(Nombre "Melon"))

([practica2_Class70014] of  Postres

	(Bebidas [practica2_Class10016])
	(Ingredientes [practica2_Class20009])
	(Nombre "Sandia"))

([practica2_Class70016] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40033]
		[practica2_Class30011]
		[practica2_Class30024]
		[practica2_Class20014])
	(Nombre "Ensalada de salmon y queso"))

([practica2_Class70017] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class10008]
		[practica2_Class30025]
		[practica2_Class30024])
	(Nombre "Pasta con nata"))

([practica2_Class70018] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30009]
		[practica2_Class30012]
		[practica2_Class60044]
		[practica2_Class60043]
		[practica2_Class30008]
		[practica2_Class10008]
		[practica2_Class30015])
	(Nombre "Pasta con verduras"))

([practica2_Class70019] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30015]
		[practica2_Class40023]
		[practica2_Class10008])
	(Nombre "Pasta con atun"))

([practica2_Class70020] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30012]
		[practica2_Class30014]
		[practica2_Class60055])
	(Nombre "Tortilla de patatas"))

([practica2_Class70021] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30009]
		[practica2_Class30012]
		[practica2_Class60044]
		[practica2_Class60043]
		[practica2_Class30008]
		[practica2_Class10008]
		[practica2_Class30015]
		[practica2_Class20000])
	(Nombre "Pasta con verduras y pollo"))

([practica2_Class70022] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30006]
		[practica2_Class30009]
		[practica2_Class30012]
		[practica2_Class60044]
		[practica2_Class60043]
		[practica2_Class60055])
	(Nombre "Tortilla de verduras"))

([practica2_Class70023] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30010]
		[practica2_Class60055])
	(Nombre "Tortilla de espinacas"))

([practica2_Class70024] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class60055]
		[practica2_Class40022]
		[practica2_Class60043]
		[practica2_Class30012])
	(Nombre "Tortilla de bacalao"))

([practica2_Class70025] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30012]
		[practica2_Class30014]
		[practica2_Class60043]
		[practica2_Class30015]
		[practica2_Class30008]
		[practica2_Class30030])
	(Nombre "Judias blancas estofadas"))

([practica2_Class70026] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30014]
		[practica2_Class60060])
	(Nombre "Judias verdes con patatas"))

([practica2_Class70027] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class30006]
		[practica2_Class20000]
		[practica2_Class30015]
		[practica2_Class30012]
		[practica2_Class30025]
		[practica2_Class30012]
		[practica2_Class60043]
		[practica2_Class30024])
	(Nombre "Berenjena rellena de carne"))

([practica2_Class70028] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40029]
		[practica2_Class30009]
		[practica2_Class30012]
		[practica2_Class60044]
		[practica2_Class30015]
		[practica2_Class30008])
	(Nombre "Lenguado al horno con verduras"))

([practica2_Class70029] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class20006]
		[practica2_Class30012]
		[practica2_Class30014])
	(Nombre "Lubina al horno con limon"))

([practica2_Class70030] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40032]
		[practica2_Class30014]
		[practica2_Class30012])
	(Nombre "Rodaballo al horno"))

([practica2_Class70031] of  Comidas

	(Bebidas [practica2_Class10016])
	(Ingredientes
		[practica2_Class40031]
		[practica2_Class30012]
		[practica2_Class40044]
		[practica2_Class40051])
	(Nombre "Rape con salsa de gambas y almejas"))

)


;;CLASES ==============================================================================================

  (defclass RecomendarComida;Recomendacion
    (is-a USER)
    (role concrete)
	(slot comida
    (type INSTANCE)
		(create-accessor read-write))
    (slot puntuacion
      (type INTEGER)
      (default 100)
      (create-accessor read-write))

	(slot calorias
      (type INTEGER)
      (default 600
	  )
      (create-accessor read-write))

    (multislot justificaciones
      (type STRING)
      (create-accessor read-write))
    (slot fallos
      (type INTEGER)
      (default 0)
      (create-accessor read-write))
  )

  (defclass RecomendarDesayuno
    (is-a USER)
    (role concrete)
    (slot desayuno;contenido
    (type INSTANCE)
		(create-accessor read-write))
    (slot puntuacion
      (type INTEGER)
      (default 100)
      (create-accessor read-write))

	(slot calorias
      (type INTEGER)
      (default 600)
      (create-accessor read-write))

    (multislot justificaciones
      (type STRING)
      (create-accessor read-write))
    (slot fallos
      (type INTEGER)
      (default 0)
      (create-accessor read-write))
  )
;;MODULES ==============================================================================================
(defmodule MAIN (export ?ALL))

(defmodule hacer_preguntas
    (import MAIN ?ALL)
    (export ?ALL)
)

(defmodule inferir_datos
    (import MAIN ?ALL)
    (import hacer_preguntas ?ALL)
    (export ?ALL)
)

(defmodule generar_respuestas
    (import MAIN ?ALL)
    (import hacer_preguntas ?ALL)
	(import inferir_datos ?ALL)
    (export ?ALL)
)

(defmodule presentar_respuestas
    (import MAIN ?ALL)
    (import hacer_preguntas ?ALL)
	(import inferir_datos ?ALL)
	(import generar_respuestas ?ALL)
    (export ?ALL)
)
;;FUNCTIONS ==============================================================================================
(deffunction MAIN::pregunta-general (?pregunta) 
	(format t "%s" ?pregunta) 
	(bind ?respuesta (read)) 
	?respuesta
)

;;; Funcion para hacer una pregunta con respuesta en un rango dado
(deffunction MAIN::pregunta-numerica (?pregunta ?rangini ?rangfi) 
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi) 
	(bind ?respuesta (read)) 
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do 
		(format t "�%s? [%d, %d] " ?pregunta ?rangini ?rangfi) 
		(bind ?respuesta (read)) 
	) 
	?respuesta
)

(deffunction MAIN::pregunta-lista (?pregunta $?valores_posibles) 
	(format t "%s" ?pregunta)  
	(bind ?resposta (readline))  
	(bind ?res (str-explode ?resposta))   
	?res
)

(deffunction MAIN::ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer)
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer)
          then (bind ?answer (lowcase ?answer))))
   ?answer)

(deffunction MAIN::si-o-no-p (?question)
  (bind ?response (ask-question ?question si no s n))
  (if (or (eq ?response si) (eq ?response s))
      then TRUE
      else FALSE))
	  


; (progn$ (?ser (send ?c get-Ingredientes))
; 		; (?nutriente (send ?ser get-Properties))
; 		(progn$ (?ser2 (send ?ser get-Properties))
; 			(bind ?nut (send ?ser2 get-Name) )	
; 			(if  (eq ?nut "Grasas") then
; 				; (printout t "22================================== " ?nut crlf)
; 				(bind ?found TRUE)
; 			)
; 		)
; 		(bind ?cals (+ ?cals (send ?ser get-Calorias)))
; 	)




;;;defmessage-handler para imprimir recomendaciones
(defmessage-handler MAIN::RecomendarComida imprimir_comida (?tipo ?postre)
 (printout t ?tipo crlf)
 (printout t "-------->: " (send ?self:comida get-Nombre) " :<--------"crlf)
;  (printout t (send ?self:comida imprimir))
(printout t  "-------->: Ingredientes"crlf)
(progn$ (?ser (send ?self:comida get-Ingredientes))
	(printout t "-> " (send ?ser get-Nombre) crlf)
)
(printout t  "-------->: Nutrientes"crlf)
(bind ?nut_aux "aux")
(progn$ (?ser (send ?self:comida get-Ingredientes))
	(progn$ (?ser2 (send ?ser get-Properties))
		(bind ?nut (send ?ser2 get-Name))	
		(if  (neq ?nut ?nut_aux) then
			(printout t "-> " ?nut crlf)
			(bind ?nut_aux ?nut)
		)
	)
)
(printout t  "-------->: Postre:  " ?postre crlf)
(printout t  "-------->: Calorias: " ?self:calorias crlf)

 (format t "Nivel de recomendacion: %d %n" ?self:puntuacion)
 (printout t "Justificacion de la eleccion: " crlf)
(progn$ (?curr-just ?self:justificaciones)
	 (printout t ?curr-just crlf)
)
 (printout t "-----------------------------------" crlf)
)

(defmessage-handler MAIN::RecomendarDesayuno imprimir_desayuno(?tipo)
 (printout t ?tipo crlf)
 (printout t "-------->: " (send ?self:desayuno get-Nombre) " :<--------"crlf)
;  (printout t (send ?self:comida imprimir))
(printout t  "-------->: Ingredientes"crlf)
(bind ?beb (send ?self:desayuno get-Bebidas))
(printout t "-> " (send ?beb get-Nombre) crlf)
(progn$ (?ser (send ?self:desayuno get-Ingredientes))
	(printout t "-> " (send ?ser get-Nombre) crlf)
)
(printout t  "-------->: Nutrientes"crlf)
(bind ?nut_aux "aux")
(progn$ (?ser (send ?self:desayuno get-Ingredientes))
	(progn$ (?ser2 (send ?ser get-Properties))
		(bind ?nut (send ?ser2 get-Name))	
		(if  (neq ?nut ?nut_aux) then
			(printout t "-> " ?nut crlf)
			(bind ?nut_aux ?nut)
		)
	)
)
(printout t  "-------->: Calorias: " ?self:calorias crlf)
; (printout t "-> " (send ?beb get-Nombre) crlf)
 (format t "Nivel de recomendacion: %d %n" ?self:puntuacion)
 (printout t "Justificacion de la eleccion: " crlf)
	 (progn$ (?curr-just ?self:justificaciones)
	 (printout t ?curr-just crlf)
 )
 (printout t "-----------------------------------" crlf)
)

;;TEMPLATES ==============================================================================================

(deftemplate MAIN::Usuario
	(slot nombre (type STRING))
; 	(slot edad (type INTEGER)(default -1))
; 	;tipologia del solicitante: familia,pareja o gruppo
; 	(slot tipo (type SYMBOL)(default desconocido))
;   (slot tam_familia_grupo (type INTEGER)(default -1))
; 	(slot posee_vehiculo (type SYMBOL)(default desconocido))
; 	;;coordenadas
; 	(slot coorX (type INTEGER) (default -1))
; 	(slot coorY (type INTEGER) (default -1))
)


(deftemplate MAIN::lista-rec-desordenada-comidas
	(multislot recomendaciones1 (type INSTANCE))
)

(deftemplate MAIN::lista-rec-desordenada-desayunos
	(multislot recomendaciones2 (type INSTANCE))
)

;;;Template para una lista de recomendaciones ordenada por puntuacion
(deftemplate MAIN::lista-rec-ordenada-comidas
	(multislot recomendaciones1 (type INSTANCE))
)

(deftemplate MAIN::lista-rec-ordenada-desayunos
	(multislot recomendaciones2 (type INSTANCE))
)

;;;Template para las recomendaciones que forman parte del grupo poco recomendables
(deftemplate MAIN::Comidas_Recomendables
	(multislot recomendaciones1 (type INSTANCE))
)

(deftemplate MAIN::Desayunos_Recomendables
	(multislot recomendaciones2 (type INSTANCE))
)

; ;;;Template para las recomendaciones que forman parte del grupo recomendables
; (deftemplate MAIN::Recomendables
; 	(multislot recomendaciones (type INSTANCE))
; )

; ;;;Template para las recomendaciones que forman parte del grupo altamente recomendables
; (deftemplate MAIN::Altamente_Recomendables
; 	(multislot recomendaciones (type INSTANCE))
; )
; (deftemplate MAIN::lista-dias
; 	(multislot dias (type INSTANCE))
; )

;;REGLAS MAIN ==============================================================================================
(defrule MAIN::comienzo "regla inicial"
	(initial-fact)
	=>
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "-------- Sistema de Recomendacion de Nutricion Semanal -------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)

	(assert (nuevo_cliente))		
)

(defrule MAIN::analisis_inicial "regla para calcular IMC y TMB del Cliente"
    (nuevo_cliente)
    =>
    (bind ?name (pregunta-general "Nombre: "))
	(bind ?qsexo (pregunta-general "(1)Mujer - (2)Hombre: "))
	(switch ?qsexo
		(case 2 then (bind ?c1 655.1)(bind ?c2 9.6)(bind ?c3 1.85)(bind ?c4 -4.68))
		(case 1 then (bind ?c1 66.47)(bind ?c2 13.75)(bind ?c3 5)(bind ?c4 -6.76))
		(default (bind ?c1 655.1)(bind ?c2 9.6)(bind ?c3 1.85)(bind ?c4 -4.68))	
	)
	(bind ?peso (pregunta-general "Peso [Kg]: "))
	(bind ?estat (pregunta-general "Estatura [cm]: "))
	(bind ?edad (pregunta-general "Edad [anios]: "))
	(if (< ?edad 65) 
		then
			(assert (mas-65 No))
		else
			(assert (mas-65 Si))
	)

	(bind ?qactv (pregunta-general "Nivel de Actividad||(1)Sedentario|(2)Ligera|(3)Moderada|(4)Intensa||"))
	(switch ?qactv
		(case 1 then (bind ?actv 1.2))
		(case 2 then (bind ?actv 1.375))
		(case 3 then (bind ?actv 1.55))
		(case 4 then (bind ?actv 1.725))
		(default (bind ?actv 1.375))
	)

	(bind ?basal (+ ?c1 (* ?peso ?c2) (* ?estat ?c3) (* ?edad ?c4)))
	;TASA METABOLICA BASAL
	(bind ?TMB (* ?basal ?actv))
	;INDICE DE MASA CORPORAL
	(bind ?IMC (/ ?peso (* (/ ?estat 100.0) (/ ?estat 100.0) )))

	(if (< ?IMC 20.0) 
		then 
		;Esta por debajo de lo normal, entonces necesita mas calorias (SUBIR DE PESO)
			(bind ?calorias (* ?TMB 1.15))
			(assert (debe_subir_de_peso))
			; (printout t ?calorias) 
			(assert (obes No))
	else (if (> ?IMC 25.0) 
		then
		;Esta por encima de lo normal, entonces necesita menos calorias (BAJAR DE PESO)
			(bind ?calorias (* ?TMB 0.85)) 
			(assert (debe_bajar_de_peso))
			; (printout t ?calorias) 
			(assert (obes Si))
		)
	else (if (and(>= ?IMC 20.0) (<= ?IMC 25.0))
		then
		;Esta en lo normal, entonces necesita mantenemos las calorias TMB (MANTENER DE PESO)
			(bind ?calorias (* ?TMB 1.0)) 
			(assert (debe_mantener_peso))
			(assert (obes No))
		(printout t ?calorias) 
		)		  
	)

    (assert (calorias_cliente ?calorias))  
	(focus hacer_preguntas)	  
    (assert (Usuario (nombre ?name)))  
)

;;REGLAS HACER PREGUNTAS =======================================================================================
 (defrule hacer_preguntas::diabetes
 	(nuevo_cliente)	
 	=>
   (if (si-o-no-p "Tiene usted diabetes? (s/n): ")
 	then
 	  (assert (diabetes Si))
 	else
 	  (assert (diabetes No))
   )
)

(defrule hacer_preguntas::colesterol-alto
 (nuevo_cliente)
	=>
  (if (si-o-no-p "Tiene usted el colesterol alto? (s/n): ")
	then
	  (assert (colesterol-alto Si))
	else
	  (assert (colesterol-alto No))
  )
)

(defrule hacer_preguntas::intolerancia-lactosa
 (nuevo_cliente)
	=>
  (if (si-o-no-p "Tiene usted el intolerancia a la lactosa? (s/n): ")
	then
	  (assert (intolerancia-lactosa Si))
	else
	  (assert (intolerancia-lactosa No))
	  (assert (restringir-lactosa No))
  )
)

(defrule hacer_preguntas::intolerancia-lactosa-restriccion
  (nuevo_cliente)
  (intolerancia-lactosa ?resp)
  (test (eq Si ?resp))
=>
  (printout t crlf)
  (printout t    "Quiere quitar platos con lactosa totalmente? " crlf)
  (printout t    "si pone no, tendra pocos platos con lactosa  " crlf)
  (if (si-o-no-p "como gustito semanal ================ (s/n): ")
	then
	  (assert (restringir-lactosa Si))
	else
	  (assert (restringir-lactosa No))
  )
)

(defrule hacer_preguntas::alergia-gluten
 (nuevo_cliente)
=>
	(if (si-o-no-p "Tiene usted alergia al gluten? (s/n): ")
	then
	  (assert (alergia-gluten Si))
	else
	  (assert (alergia-gluten No))
	  (assert (restringir-gluten No))
  )
)

(defrule hacer_preguntas::alergia-gluten-restriccion
  (nuevo_cliente)
  (alergia-gluten ?resp)
  (test (eq Si ?resp))
=>
  (printout t crlf)
  (printout t    "Quiere quitar platos con gluten totalmente?" crlf)
  (printout t    "si pone no, tendra pocos platos con gluten " crlf)
  (if (si-o-no-p "como gustito semanal =============== (s/n):")
	then
	  (assert (restringir-gluten Si))
	else
	  (assert (restringir-gluten No))
  )
)

(defrule hacer_preguntas::consume-carne-granja
 	(nuevo_cliente)
	=>
	(printout t crlf)
	(printout t "Que tanto le gusta la carne de animales de granja ?" crlf)
	(printout t "----------------------------(Ternera, Puerco, Aves)" crlf)
	(bind ?carne_granja (pregunta-general "(1)Mucho - (2)Poco - (3)No comsumo: "))
	(if (= ?carne_granja 1) 
		then 
		(assert (carne-granja Mucho))
	else (if(= ?carne_granja 2)
		then
		(assert (carne-granja Poco))
		)
	else (if(= ?carne_granja 3)
		then
		(assert (carne-granja Nada))
		)
	)
)

(defrule hacer_preguntas::consume-pescado
 (nuevo_cliente)
	=>
	(printout t crlf)
	(printout t "Que tanto le gusta el pescado ?-----------------" crlf)
	(printout t "(Cualquier ser vivo vertebrado que vive en agua)" crlf)
	(bind ?carne_granja (pregunta-general "(1)Mucho - (2)Poco - (3)No comsumo: "))
	(if (= ?carne_granja 1) 
		then 
		(assert (carne-pescado Mucho))
	else (if(= ?carne_granja 2)
		then
		(assert (carne-pescado Poco))
		)
	else (if(= ?carne_granja 3)
		then
		(assert (carne-pescado Nada))
		)
	)
)

(defrule hacer_preguntas::consume-mariscos
 (nuevo_cliente)
 
	=>
	(printout t crlf)
	(printout t "Que tanto le gustan los mariscos ?-----------------" crlf)
	(printout t "(Cualquier ser vivo invertebrado que vive en agua)" crlf)
	(bind ?carne_granja (pregunta-general "(1)Mucho - (2)Poco - (3)No comsumo: "))
	(if (= ?carne_granja 1) 
		then 
		(assert (carne-marisco Mucho))
	else (if(= ?carne_granja 2)
		then
		(assert (carne-marisco Poco))
		)
	else (if(= ?carne_granja 3)
		then
		(assert (carne-marisco Nada))
		)
	)
)

(defrule hacer_preguntas::finPreguntasAbstaccionDatos "regla para pasar al modulo siguiente"
      (declare (salience -10))
      => 
	  (printout t crlf)
	  (printout t "Modulos: "crlf)
	  (printout t "Restricciones y Preferencias almacenadas" crlf)
      (focus inferir_datos)   
)
;;REGLAS INFERIR DATOS =======================================================================================

(defrule inferir_datos::inicio
	(declare (salience 10))
	=>
	(printout t "...Procesando datos..." crlf)
)

(defrule inferir_datos::anadir-comidas "se anaden las comidas y desayuno a la clase auxiliar"
	(declare (salience 10))
	?com<-(object (is-a Comidas))
	=> 
	(make-instance (gensym) of RecomendarComida (comida ?com))
)

(defrule inferir_datos::anadir-desayunos "se anaden las comidas y desayuno a la clase auxiliar"
	(declare (salience 10))
	?des<-(object (is-a Desayuno))
	=>
	; (assert (fin_fil))
	(make-instance (gensym) of RecomendarDesayuno (desayuno ?des))
)
;;====================================================================================================================
(defrule inferir_datos::fact_comida_diabetes "COMIDAS:: si el cliente tiene diabetes activar quitar azucar"
	(declare (salience 10))
	(object (is-a RecomendarComida)(comida ?c))
	(diabetes ?resp)
	; (test (eq Si ?resp))
	=>
	(assert (com_elimina_azucar (send ?c get-Nombre) ?resp))
)

(defrule inferir_datos::fact_desayuno_diabetes "DESAYUNO:: si el cliente tiene diabetes activar quitar azucar"
	(declare (salience 10))
	(object (is-a RecomendarDesayuno)(desayuno ?c))
	(diabetes ?resp)
	; (test (eq Si ?resp))
	=>
	(assert (des_elimina_azucar (send ?c get-Nombre) ?resp))
)
;;===>
(defrule inferir_datos::fact_comida_grasa "COMIDAS:: si el cliente tiene problemas del corazon activar quitar grasas"
	(declare (salience 10))
	(object (is-a RecomendarComida)(comida ?c))
	(colesterol-alto ?resp)
	; (test (eq Si ?resp))
	=>
	(assert (com_elimina_grasas (send ?c get-Nombre) ?resp))
)

(defrule inferir_datos::fact_desayuno_grasa "DESAYUNO:: si el cliente tiene problemas del corazon activar quitar grasas"
	(declare (salience 10))
	(object (is-a RecomendarDesayuno)(desayuno ?c))
	(colesterol-alto ?resp)
	; (test (eq Si ?resp))
	=>
	(assert (des_elimina_grasas (send ?c get-Nombre) ?resp))
)
;;===>
(defrule inferir_datos::fact_comida_lactosa "COMIDAS:: si el cliente es intolerante a la lactosa activar puntuar bajo"
	(declare (salience 10))
	(object (is-a RecomendarComida)(comida ?c))
	(intolerancia-lactosa ?resp1)
	(restringir-lactosa ?resp2)
	(test (eq Si ?resp1))
	=>
	(assert (com_puntua_lactosa (send ?c get-Nombre) ?resp2))
)

(defrule inferir_datos::fact_desayuno_lactosa "DESAYUNO:: si el cliente es intolerante a la lactosa activar puntuar bajo"
	(declare (salience 10))
	(object (is-a RecomendarDesayuno)(desayuno ?c))
	(intolerancia-lactosa ?resp1)
	(restringir-lactosa ?resp2)
	(test (eq Si ?resp1))
	=>
	(assert (des_puntua_lactosa (send ?c get-Nombre) ?resp2))
)
;;===>
(defrule inferir_datos::fact_comida_gluten "COMIDAS:: si el cliente al gluten activar puntuar bajo"
	(declare (salience 10))
	(object (is-a RecomendarComida)(comida ?c))
	(alergia-gluten ?resp1)
	(restringir-gluten ?resp2)
	(test (eq Si ?resp1))
	=>
	(assert (com_puntua_gluten (send ?c get-Nombre) ?resp2))
)

(defrule inferir_datos::fact_desayuno_gluten "DESAYUNO:: si el cliente es alergico al gluten activar puntuar bajo"
	(declare (salience 10))
	(object (is-a RecomendarDesayuno)(desayuno ?c))
	(alergia-gluten ?resp1)
	(restringir-gluten ?resp2)
	(test (eq Si ?resp1))
	=>
	(assert (des_puntua_gluten (send ?c get-Nombre) ?resp2))
)
;;===>
(defrule inferir_datos::fact_comida_granja "COMIDAS:: recoger la valoracion de carne de granja"
	(declare (salience 10))
	(object (is-a RecomendarComida)(comida ?c))
	(carne-granja ?resp)
	(test (or (eq Mucho ?resp) (eq Poco ?resp) (eq Nada ?resp)))
	=>
	(assert (com_puntua_granja (send ?c get-Nombre)))
)

(defrule inferir_datos::fact_comida_pescado "COMIDAS:: recoger la valoracion de carne de pescado"
	(declare (salience 10))
	(object (is-a RecomendarComida)(comida ?c))
	(carne-pescado ?resp)
	(test (or (eq Mucho ?resp) (eq Poco ?resp) (eq Nada ?resp)))
	=>
	(assert (com_puntua_pescado (send ?c get-Nombre)))
)

(defrule inferir_datos::fact_comida_marisco "COMIDAS:: recoger la valoracion de carne de marisco"
	(declare (salience 10))
	(object (is-a RecomendarComida)(comida ?c))
	(carne-marisco ?resp)
	(test (or (eq Mucho ?resp) (eq Poco ?resp) (eq Nada ?resp)))
	=>
	(assert (com_puntua_marisco (send ?c get-Nombre)))
)

(defrule inferir_datos::fact_comida_calorias "COMIDAS:: comidas de acuerdo a las calorias"
	(declare (salience 10))
	(object (is-a RecomendarComida)(comida ?c))
	(calorias_cliente ?resp)
	=>
	(assert (com_puntua_calorias (send ?c get-Nombre) ?resp))
)
(defrule inferir_datos::fact_desayuno_calorias "DESAYUNO:: desayuno de acuerdo a las calorias"
	(declare (salience 10))
	(object (is-a RecomendarDesayuno)(desayuno ?c))
	(calorias_cliente ?resp)
	=>
	(assert (des_puntua_calorias (send ?c get-Nombre) ?resp))
)
;;===>
;;====================================================================================================================
; ;;;Regla quitar puntuacion a los platos que contienen azucar y eliminarlos 
; (defrule inferir_datos::penalizar-comida-calorias "COMIDAS::comidas de acuerdo a calorias del cliente"
; 	?com<-(object (is-a RecomendarComida) (comida ?c)(puntuacion ?p) (justificaciones $?j) (fallos ?fe))
; 	?f<-(com_puntua_calorias ?id ?resp)
; 	(test (eq ?id (send ?c get-Nombre)))
; 	=>
; 	(bind ?found FALSE)
; 	(progn$ (?ser (send ?c get-Ingredientes))
; 		(if  (eq (class ?ser) Azucar) then
; 			(bind ?found TRUE)
; 		)
; 	)
; 	(if ?found
; 		then
; 			(if (eq ?resp Si)
; 				then
; 				(printout t "(del) Comida eliminada, contiene azucar. "(send ?c get-Nombre) crlf)
; 				(send ?com delete)
; 				else
; 				(printout t "- Comida castigada, contiene azucar. "(send ?c get-Nombre) crlf)
; 				(send ?com put-justificaciones $?j "- Contiene azucar como ingrediente")
; 				(send ?com put-puntuacion (- ?p 15) )
; 				(send ?com put-fallos (+ ?fe 1))
; 			)
; 		else
; 			; (printout t "plato favorecido, no intolerante a la lactosa. "(send ?c get-Nombre) crlf)
; 			(send ?com put-justificaciones $?j "+ No contiene azucar como ingrediente")
; 			(send ?com put-puntuacion (+ ?p 5) )
; 	)
; 	(retract ?f)
; )




;;;Regla quitar puntuacion a los platos que contienen azucar y eliminarlos 
(defrule inferir_datos::penalizar-comida-azucar "COMIDAS::si el cliente tienes diabetes elimina, si no esta se penaliza"
	?com<-(object (is-a RecomendarComida) (comida ?c)(puntuacion ?p) (justificaciones $?j) (fallos ?fe))
	?f<-(com_elimina_azucar ?id ?resp)
	(test (eq ?id (send ?c get-Nombre)))
	=>
	(bind ?found FALSE)
	(progn$ (?ser (send ?c get-Ingredientes))
		(if  (eq (class ?ser) Azucar) then
			(bind ?found TRUE)
		)
	)
	(if ?found
		then
			(if (eq ?resp Si)
				then
				(printout t "(del) Comida eliminada, contiene azucar. "(send ?c get-Nombre) crlf)
				(send ?com delete)
				else
				(printout t "- Comida castigada, contiene azucar. "(send ?c get-Nombre) crlf)
				(send ?com put-justificaciones $?j "- Contiene azucar como ingrediente")
				(send ?com put-puntuacion (- ?p 15) )
				(send ?com put-fallos (+ ?fe 1))
			)
		else
			; (printout t "plato favorecido, no intolerante a la lactosa. "(send ?c get-Nombre) crlf)
			(send ?com put-justificaciones $?j "+ No contiene azucar como ingrediente")
			(send ?com put-puntuacion (+ ?p 5) )
	)
	(retract ?f)
)

(defrule inferir_datos::penalizar-desayuno-azucar "DESAYUNO::si el cliente tienes diabetes elimina, si no esta se penaliza"
	?com<-(object (is-a RecomendarDesayuno) (desayuno ?c)(puntuacion ?p) (justificaciones $?j) (fallos ?fe))
	?f<-(des_elimina_azucar ?id ?resp)
	(test (eq ?id (send ?c get-Nombre)))
	=>
	(bind ?found FALSE)
	(progn$ (?ser (send ?c get-Ingredientes))
		(if  (eq (class ?ser) Azucar) then
			(bind ?found TRUE)
			; (printout t (send ?c get-Nombre) "+Desayuno Ingredientes=======" (class ?ser) crlf)
		)
	)
	(bind ?var1 (send ?c get-Bebidas))
	
	(if (not(eq(send ?var1 get-Nombre) "Agua")) then
		(bind ?var2 (send ?var1 get-Ingredientes2))
		(if  (eq (class ?var2) Azucar) then
			(bind ?found TRUE)
			; (printout t (send ?c get-Nombre) "+Comida Bebidas============"  (class ?var2) crlf)
		)
	)

	(if ?found
		then
			(if (eq ?resp Si)
				then
				(printout t "(del) Desayuno eliminado, contiene azucar. "(send ?c get-Nombre) crlf)
				(send ?com delete)
				else
				(printout t "- Desayuno castigado, contiene azucar "(send ?c get-Nombre) crlf)
				(send ?com put-justificaciones $?j "- Contiene azucar como ingrediente")
				(send ?com put-puntuacion (- ?p 15) )
				(send ?com put-fallos (+ ?fe 1))
			)
		else
			; (printout t "plato favorecido, no intolerante a la lactosa. "(send ?c get-Nombre) crlf)
			(send ?com put-justificaciones $?j "+ No contiene azucar como ingrediente")
			(send ?com put-puntuacion (+ ?p 5) )
	)
	(retract ?f)
)

;;;Regla quitar puntuacion a los platos que contienen grasas y eliminarlos 
(defrule inferir_datos::penalizar-comida-grasa "COMIDAS::si el cliente tiene colesterol alto elimina grasa, si no esta se penaliza"
	?com<-(object (is-a RecomendarComida) (comida ?c)(puntuacion ?p) (justificaciones $?j) (fallos ?fe))
	?f<-(com_elimina_grasas ?id ?resp)
	(calorias_cliente ?calorias)
	(test (eq ?id (send ?c get-Nombre)))
	=>
	(bind ?found FALSE)
	(bind ?cals 0)
	(progn$ (?ser (send ?c get-Ingredientes))
		; (?nutriente (send ?ser get-Properties))
		(progn$ (?ser2 (send ?ser get-Properties))
			(bind ?nut (send ?ser2 get-Name) )	
			(if  (eq ?nut "Grasas") then
				; (printout t "22================================== " ?nut crlf)
				(bind ?found TRUE)
			)
		)
		(bind ?cals (+ ?cals (send ?ser get-Calorias)))
	)
	(if ?found
		then
			(if (eq ?resp Si)
				then
				; (printout t "(del) Comida eliminada, contiene ingredientes con Grasas. "(send ?c get-Nombre) crlf)
				; (send ?com delete)
				(printout t "- Comida castigada severamente, contiene ingredientes con Grasas."(send ?c get-Nombre) crlf)
				(send ?com put-justificaciones $?j "- Contiene ingredientes con Grasas")
				(send ?com put-puntuacion (- ?p 25) )
				(send ?com put-fallos (+ ?fe 1))
				else
				(printout t "- Comida castigada, contiene ingredientes con Grasas. "(send ?c get-Nombre) crlf)
				(send ?com put-justificaciones $?j "- Contiene ingredientes con Grasas")
				(send ?com put-puntuacion (- ?p 15) )
				(send ?com put-fallos (+ ?fe 1))
			)
		else
			; (printout t "plato favorecido, no intolerante a la lactosa. "(send ?c get-Nombre) crlf)
			(send ?com put-justificaciones $?j "+ No contiene ingredientes con Grasas")
			(send ?com put-puntuacion (+ ?p 5) )
	)

	(bind ?cals (* ?cals 2.5))
	(send ?com put-calorias ?cals )

	(if (> ?cals (* ?calorias 0.35))
	then
		(printout t "(del) comida sobrepasa calorias 35% (" (* ?calorias 0.35) " cals) para comida ."(send ?c get-Nombre) crlf)
		(send ?com delete)
	)


	(retract ?f)
)

(defrule inferir_datos::penalizar-desayuno-grasa "DESAYUNO::si el cliente tiene colesterol alto elimina grasa, si no esta se penaliza"
	?com<-(object (is-a RecomendarDesayuno) (desayuno ?c)(puntuacion ?p) (justificaciones $?j) (fallos ?fe))
	?f<-(des_elimina_grasas ?id ?resp)
	(calorias_cliente ?calorias)
	(test (eq ?id (send ?c get-Nombre)))
	=>
	(bind ?found FALSE)
	(bind ?cals 0)
	(progn$ (?ser (send ?c get-Ingredientes))
		; (?nutriente (send ?ser get-Properties))
		(progn$ (?ser2 (send ?ser get-Properties))
			(bind ?nut (send ?ser2 get-Name) )	
			(if  (eq ?nut "Grasas") then
				; (printout t "22================================== " ?nut crlf)
				(bind ?found TRUE)
			)
		)
		(bind ?cals (+ ?cals (send ?ser get-Calorias)))
	)
	(bind ?var1 (send ?c get-Bebidas))
	
	(if (not(eq(send ?var1 get-Nombre) "Agua")) then
		(bind ?var2 (send ?var1 get-Ingredientes2))

		(progn$ (?ser2 (send ?var2 get-Properties))
			(bind ?nut (send ?ser2 get-Name) )	
			(if  (eq ?nut "Grasas") then
				; (printout t "22================================== " ?nut crlf)
				(bind ?found TRUE)
			)
		)
		(bind ?cals (+ ?cals (send ?var2 get-Calorias)))
	)

	(if ?found
		then
			(if (eq ?resp Si)
				then

				; (printout t "(del) Desayuno eliminado, contiene ingredientes con Grasas. "(send ?c get-Nombre) crlf)
				; (send ?com delete)
				(printout t "- Desayuno castigado severamente, contiene ingredientes con Grasas."(send ?c get-Nombre) crlf)
				(send ?com put-justificaciones $?j "- Contiene ingredientes con Grasas")
				(send ?com put-puntuacion (- ?p 25) )
				(send ?com put-fallos (+ ?fe 1))
				else
				(printout t "- Desayuno castigado, contiene azucar "(send ?c get-Nombre) crlf)
				(send ?com put-justificaciones $?j "- Contiene ingredientes con Grasas")
				(send ?com put-puntuacion (- ?p 15) )
				(send ?com put-fallos (+ ?fe 1))
			)
		else
			; (printout t "plato favorecido, no intolerante a la lactosa. "(send ?c get-Nombre) crlf)
			(send ?com put-justificaciones $?j "+ No contiene ingredientes con Grasas")
			(send ?com put-puntuacion (+ ?p 5) )
	)
	(bind ?cals (* ?cals 2.5))
	(send ?com put-calorias ?cals )
	(if (> ?cals (* ?calorias 0.3))
		then
		(printout t "(del) Desayuno sobrepasa calorias 30% (" (* ?calorias 0.30) " cals) para desayuno ."(send ?c get-Nombre) crlf)
		(send ?com delete)
	)
	(retract ?f)
)

;;;Regla quitar puntuacion a los platos que contienen lactosa 
(defrule inferir_datos::penalizar-comida-lactosa "COMIDAS::si el cliente es intolerante a la LACTOSA, esta se penaliza"
	?com<-(object (is-a RecomendarComida) (comida ?c)(puntuacion ?p) (justificaciones $?j) (fallos ?fe))
	?f<-(com_puntua_lactosa ?id ?resp)
	; (restringir-lactosa ?resp)
	(test (eq ?id (send ?c get-Nombre)))
	=>
	(bind ?found FALSE)
	(progn$ (?ser (send ?c get-Ingredientes))
		(if  (eq (class ?ser) Lacteo) then
			(bind ?found TRUE)
		)
	)
	(if ?found
		then
			(if (eq ?resp Si)
				then
				(printout t "(del) Comida eliminada, totalmente intolerante a la lactosa. "(send ?c get-Nombre) crlf)
				(send ?com delete)
				else
				(printout t "- Comida castigada, intolerante a la lactosa. "(send ?c get-Nombre) crlf)
				(send ?com put-justificaciones $?j "- Contiene productos basados en Lactosa")
				(send ?com put-puntuacion (- ?p 30) )
				(send ?com put-fallos (+ ?fe 1))
			)
		else
			; (printout t "plato favorecido, no intolerante a la lactosa. "(send ?c get-Nombre) crlf)
			(send ?com put-justificaciones $?j "+ No contiene productos con lactosa")
			(send ?com put-puntuacion (+ ?p 5) )
	)
	(retract ?f)
)

(defrule inferir_datos::penalizar-desayuno-lactosa "DESAYUNO::si el cliente es intolerante a la LACTOSA, esta se penaliza"
	?com<-(object (is-a RecomendarDesayuno) (desayuno ?c)(puntuacion ?p) (justificaciones $?j) (fallos ?fe))
	?f<-(des_puntua_lactosa ?id ?resp)
	(test (eq ?id (send ?c get-Nombre)))
	=>
	(bind ?found FALSE)
	(progn$ (?ser (send ?c get-Ingredientes))
		(if  (eq (class ?ser) Lacteo) then
			(bind ?found TRUE)
			; (printout t (send ?c get-Nombre) "+Desayuno Ingredientes=======" (class ?ser) crlf)
		)
	)
	(bind ?var1 (send ?c get-Bebidas))
	
	(if (not(eq(send ?var1 get-Nombre) "Agua")) then
		(bind ?var2 (send ?var1 get-Ingredientes2))
		(if  (eq (class ?var2) Lacteo) then
			(bind ?found TRUE)
			; (printout t (send ?c get-Nombre) "+Comida Bebidas============"  (class ?var2) crlf)
		)
	)

	(if ?found
		then
			(if (eq ?resp Si)
				then
				(printout t "(del) Desayuno eliminado, totalmente intolerante a la lactosa. "(send ?c get-Nombre) crlf)
				(send ?com delete)
				else
				(printout t "- Desayuno castigado, intolerante a la lactosa. "(send ?c get-Nombre) crlf)
				(send ?com put-justificaciones $?j "- Contiene productos basados en Lactosa")
				(send ?com put-puntuacion (- ?p 30) )
				(send ?com put-fallos (+ ?fe 1))
			)
		else
			; (printout t "plato favorecido, no intolerante a la lactosa. "(send ?c get-Nombre) crlf)
			(send ?com put-justificaciones $?j "+ Desayuno no contiene productos con lactosa")
			(send ?com put-puntuacion (+ ?p 5) )
	)
	(retract ?f)
)

;;;Regla quitar puntuacion a los platos que contienen gluten 
(defrule inferir_datos::penalizar-comida-gluten "COMIDAS::si el cliente es alergico al GLUTEN, esta se penaliza"
	?com<-(object (is-a RecomendarComida) (comida ?c)(puntuacion ?p) (justificaciones $?j) (fallos ?fe))
	?f<-(com_puntua_gluten ?id ?resp)
	(test (eq ?id (send ?c get-Nombre)))
	=>
	(bind ?found FALSE)
	(progn$ (?ser (send ?c get-Ingredientes))
		(if  (eq (class ?ser) Cereales) then
			(bind ?found TRUE)
			; (printout t (send ?c get-Nombre) "+Comida Ingredientes=======" (class ?ser) crlf)
		)
	)
	(if ?found
		then
			(if (eq ?resp Si)
				then
				(printout t "(del) Comida eliminada, totalmente alergico al gluten. "(send ?c get-Nombre) crlf)
				(send ?com delete)
				else
				(printout t "- Comida castigada, alergico al gluten. "(send ?c get-Nombre) crlf)
				(send ?com put-justificaciones $?j "- Contiene productos basados en Gluten")
				(send ?com put-puntuacion (- ?p 30) )
				(send ?com put-fallos (+ ?fe 1))
			)
		else
			; (printout t "plato favorecido, no intolerante a la lactosa. "(send ?c get-Nombre) crlf)
			(send ?com put-justificaciones $?j "+ No contiene productos con Gluten")
			(send ?com put-puntuacion (+ ?p 5) )
	)
	(retract ?f)
)

(defrule inferir_datos::penalizar-desayuno-gluten "DESAYUNO::si el cliente es alergico al GLUTEN, esta se penaliza"
	?com<-(object (is-a RecomendarDesayuno) (desayuno ?c)(puntuacion ?p) (justificaciones $?j) (fallos ?fe))
	?f<-(des_puntua_gluten ?id ?resp)
	(test (eq ?id (send ?c get-Nombre)))
	=>
	(bind ?found FALSE)
	(progn$ (?ser (send ?c get-Ingredientes))
		(if  (eq (class ?ser) Cereales) then
			(bind ?found TRUE)
			; (printout t (send ?c get-Nombre) "+Desayuno Ingredientes=======" (class ?ser) crlf)
		)
	)
	(if ?found
		then
			(if (eq ?resp Si)
				then
				(printout t "(del) Desayuno eliminado, totalmente alergico al gluten. "(send ?c get-Nombre) crlf)
				(send ?com delete)
				else
				(printout t "- Desayuno castigado, alergico al gluten. "(send ?c get-Nombre) crlf)
				(send ?com put-justificaciones $?j "- Contiene productos basados en Gluten")
				(send ?com put-puntuacion (- ?p 30) )
				(send ?com put-fallos (+ ?fe 1))
			)
		else
			; (printout t "plato favorecido, no intolerante a la lactosa. "(send ?c get-Nombre) crlf)
			(send ?com put-justificaciones $?j "+ No contiene productos con Gluten")
			(send ?com put-puntuacion (+ ?p 5) )
	)
	(retract ?f)
)


;;;Regla que elimina los platos que contienen carne si el usuario no la consume
;;; si le gusta poco le disminuye la puntuacion nada mas
(defrule inferir_datos::filtra_carne_granja "Se eliminan comidas con carne de granja"
	?com<-(object (is-a RecomendarComida) (comida ?c)(puntuacion ?p) (justificaciones $?j) (fallos ?fe))
	?f<-(com_puntua_granja ?id)
	(carne-granja ?resp)
	(test (eq ?id (send ?c get-Nombre)))
	=>
	(bind ?found FALSE)
	(progn$ (?ser (send ?c get-Ingredientes))
		(if  (eq (class ?ser) Carne) then
			(bind ?found TRUE)
			; (printout t (send ?c get-Nombre) "+Comida Ingredientes=======" (class ?ser) crlf)
		)
	)

	(if ?found then
		(if (eq ?resp Mucho) then
			(send ?com put-justificaciones $?j "+ Le gusta mucho la Carne de granja.")
			(send ?com put-puntuacion (+ ?p 10))
		else(if (eq ?resp Poco) then
			(send ?com put-justificaciones $?j "- Le gusta poco la Carne de granja.")
			(send ?com put-puntuacion (- ?p 10))
			(send ?com put-fallos (+ ?fe 1))
			)
		else (if (eq ?resp Nada) then
			(printout t "(del) Plato eliminado, no consume carne de granja: "(send ?c get-Nombre) crlf)
			(send ?com delete)
			)
		)		
	)
	(retract ?f)
)

(defrule inferir_datos::filtra_carne_pescado "Se eliminan comidas con carnde de pescado"
	?com<-(object (is-a RecomendarComida) (comida ?c)(puntuacion ?p) (justificaciones $?j) (fallos ?fe))
	?f<-(com_puntua_pescado ?id)
	(carne-pescado ?resp)
	(test (eq ?id (send ?c get-Nombre)))
	=>
	(bind ?found FALSE)
	(progn$ (?ser (send ?c get-Ingredientes))
		(if  (eq (class ?ser) Pescado) then
			(bind ?found TRUE)
			; (printout t (send ?c get-Nombre) "+Comida Ingredientes=======" (class ?ser) crlf)
		)
	)

	(if ?found then
		(if (eq ?resp Mucho) then
			(send ?com put-justificaciones $?j "+ Le gusta mucho la Carne de pescado.")
			(send ?com put-puntuacion (+ ?p 10))
		else(if (eq ?resp Poco) then
			(send ?com put-justificaciones $?j "- Le gusta poco la Carne de pescado.")
			(send ?com put-puntuacion (- ?p 10))
			(send ?com put-fallos (+ ?fe 1))
			)
		else (if (eq ?resp Nada) then
			(printout t "(del) Plato eliminado, no consume carne de pescado: "(send ?c get-Nombre) crlf)
			(send ?com delete)
			)
		)		
	)
	(retract ?f)
)

(defrule inferir_datos::filtra_carne_marisco "Se eliminan comidas con carne de marisco"
	?com<-(object (is-a RecomendarComida) (comida ?c)(puntuacion ?p) (justificaciones $?j) (fallos ?fe))
	?f<-(com_puntua_marisco ?id)
	(carne-marisco ?resp)
	(test (eq ?id (send ?c get-Nombre)))
	=>
	(bind ?found FALSE)
	(progn$ (?ser (send ?c get-Ingredientes))
		(if  (eq (class ?ser) Mariscos) then
			(bind ?found TRUE)
			; (printout t (send ?c get-Nombre) "+Comida Ingredientes=======" (class ?ser) crlf)
		)
	)

	(if ?found then
		(if (eq ?resp Mucho) then
			(send ?com put-justificaciones $?j "+ Le gusta mucho los Mariscos.")
			(send ?com put-puntuacion (+ ?p 10))
		else(if (eq ?resp Poco) then
			(send ?com put-justificaciones $?j "- Le gusta poco los Mariscos.")
			(send ?com put-puntuacion (- ?p 10))
			(send ?com put-fallos (+ ?fe 1))
			)
		else (if (eq ?resp Nada) then
			(printout t "(del) Plato eliminado, no consume Mariscos: "(send ?c get-Nombre) crlf)
			(send ?com delete)
			)
		)		
	)
	(retract ?f)
)
;;====================================================================================================================

(defrule inferir_datos::genera_solucion "cambia de modulo"
	(declare (salience -10))
	=>
	(printout t "...Generando solucion..." crlf)
	(focus generar_respuestas)
)


;;REGLAS GENERAR RESPUESTAS	 =======================================================================================

(defrule generar_respuestas::crea-lista-recomendaciones "Se crea una lista de recomendaciones para ordenarlas"
	
    (not (lista-rec-desordenada-comidas))
	(not (lista-rec-desordenada-desayunos))
	=>
	(assert (lista-rec-desordenada-comidas))
	(assert (lista-rec-desordenada-desayunos))
)

;;Funcion que obtiene la recomendacion con mas puntuacion de una lista de recomendaciones
(deffunction max_punt ($?comidas_rec)
	(bind ?max -1)
	(bind ?melement nil)
	(progn$ (?cur_recomend $?comidas_rec)
		(bind ?cur_punt (send ?cur_recomend get-puntuacion))
		(if (> ?cur_punt ?max)
			then
			(bind ?max ?cur_punt)
			(bind ?melement ?cur_recomend)
			)
	)
	?melement
)

;;;Regla que añade recomendaciones a una lista desordenada de recomendaciones
(defrule generar_respuestas::crea-lista-desordenada-comidas "Anade una recomendacion a la lista de recomendaciones"
		(declare (salience 10))
        ?rec1 <- (object (is-a RecomendarComida))
		?hecho1 <- (lista-rec-desordenada-comidas (recomendaciones1 $?lista1))
		(test (not (member$ ?rec1 $?lista1)))
			=>
		(modify ?hecho1 (recomendaciones1 $?lista1 ?rec1))
)
(defrule generar_respuestas::crea-lista-desordenada-desayunos "Anade una recomendacion a la lista de recomendaciones"
		(declare (salience 10))
		?rec2 <- (object (is-a RecomendarDesayuno))
		?hecho2 <- (lista-rec-desordenada-desayunos (recomendaciones2 $?lista2))
		(test (not (member$ ?rec2 $?lista2)))
			=>
		(modify ?hecho2 (recomendaciones2 $?lista2 ?rec2))
)


;;;Regla que crea una lista ordenada de recomendaciones en funcion de la puntuacion de cada recomendacion de mayor a menor
(defrule generar_respuestas::crea-lista-ordenada-comidas "Se crea una lista ordenada de contenido"
	(not (lista-rec-ordenada-comidas))
	(lista-rec-desordenada-comidas (recomendaciones1 $?lista))
	=>
	(bind $?resultado (create$ ))
	(while (not (eq (length$ $?lista) 0))  do
		(bind ?curr-rec (max_punt $?lista))
		(bind $?lista (delete-member$ $?lista ?curr-rec))
		(bind $?resultado (insert$ $?resultado (+ (length$ $?resultado) 1) ?curr-rec))
	)
	(assert (lista-rec-ordenada-comidas (recomendaciones1 $?resultado)))
)

(defrule generar_respuestas::crea-lista-ordenada-desayunos "Se crea una lista ordenada de contenido"
	(not (lista-rec-ordenada-desayunos))
	(lista-rec-desordenada-desayunos (recomendaciones2 $?lista))
	=>
	(bind $?resultado (create$ ))
	(while (not (eq (length$ $?lista) 0))  do
		(bind ?curr-rec (max_punt $?lista))
		(bind $?lista (delete-member$ $?lista ?curr-rec))
		(bind $?resultado (insert$ $?resultado (+ (length$ $?resultado) 1) ?curr-rec))
	)
	(assert (lista-rec-ordenada-desayunos (recomendaciones2 $?resultado)))
)

(defrule generar_respuestas::separa-listas-comidas "separa las listas"
    (not (solucion_final_com))
    (lista-rec-ordenada-comidas(recomendaciones1 $?lista))
    =>
    (bind $?com (create$ ))
    ; (bind $?norm (create$ ))
    ; (bind $?mucho (create$ ))
    (bind ?i 1)
	(while (<= ?i 14 ) do; <---------------------------------------------- FILTRO 14 COMIDAS SEMANA
		(bind ?j 1)
		(while (<= ?j (length$ $?lista )) do
			; (bind $?mucho (insert$ $?mucho (+ (length$ $?mucho) 1) ?rec))
			; (bind $?norm (insert$ $?norm (+ (length$ $?norm) 1) ?rec))
			(bind ?rec (nth$ ?j $?lista ))
			(bind $?com (insert$ $?com (+ (length$ $?com) 1) ?rec))
			(bind ?i (+ ?i 1))
			(bind ?j (+ ?j 1))
			(if (= ?i 15)
				then
				(break)
			)

			; (if (and (<= 120 (send ?rec get-puntuacion) ) (eq 0 (send ?rec get-fallos))) then
			; 	(bind $?mucho (insert$ $?mucho (+ (length$ $?mucho) 1) ?rec))
			; 	else
			; 		(if (eq 0 (send ?rec get-fallos))then
			; 			(bind $?norm (insert$ $?norm (+ (length$ $?norm) 1) ?rec))
			; 			else
			; 				(if (>=  2 (send ?rec get-fallos) ) then
			; 					(bind $?poco (insert$ $?poco (+ (length$ $?poco) 1) ?rec))
			; 					else
			; 						(printout t "Vivienda eliminada por tener demasiados fallos" crlf)
			; 					)
			; 		)
			; )
    	)	
    )
    (assert (solucion_final_com))
    (assert (Comidas_Recomendables (recomendaciones1 $?com)))
    ; (assert (Recomendables (recomendaciones $?norm)))
    ; (assert (Altamente_Recomendables (recomendaciones $?mucho)))
)

(defrule generar_respuestas::separa-listas-desayunos "separa las listas"
    (not (solucion_final_des))
    (lista-rec-ordenada-desayunos(recomendaciones2 $?lista))
    =>
    (bind $?des (create$ ))
    (bind ?i 1)
    
	(while (<= ?i 7 ) do; <---------------------------------------------- FILTRO 14 COMIDAS SEMANA
		(bind ?j 1)
		(while (<= ?j (length$ $?lista )) do
			; (bind $?mucho (insert$ $?mucho (+ (length$ $?mucho) 1) ?rec))
			; (bind $?norm (insert$ $?norm (+ (length$ $?norm) 1) ?rec))
			(bind ?rec (nth$ ?j $?lista ))
			(bind $?des (insert$ $?des (+ (length$ $?des) 1) ?rec))
			(bind ?i (+ ?i 1))
			(bind ?j (+ ?j 1))
			(if (= ?i 8)
				then
				(break)
			)
		)	
    )

    (assert (solucion_final_des))
    (assert (Desayunos_Recomendables (recomendaciones2 $?des)))
)

(defrule generar_respuestas::generar_postres
	
	(solucion_final_des)
	(solucion_final_com)
        =>
	(bind $?des (create$ ))
    ; (bind ?i 1)
	(do-for-all-instances ((?p1 Postres)) TRUE
	;   (and (= ?p1:age ?p2:age ?p3:age)
	;     (> (str-compare ?p1 ?p2) 0)
	;     (> (str-compare ?p2 ?p3) 0))
		(bind $?des (insert$ $?des (+ (length$ $?des) 1) ?p1:Nombre))
		; (printout t (nth$ ?i $?des) crlf)
		; (bind ?i (+ ?i 1))
	)



	(assert (postres $?des))
    (assert (solucion_final))
)

(defrule generar_respuestas::muestra_resultado
	
    (declare (salience -10))
	(solucion_final)
        =>
    (focus presentar_respuestas)
)

;;REGLAS PRESENTAR RESPUESTAS =======================================================================================
; (deffunction random-slot ( ?li )
; 	(bind ?li (create$ ?li))
; 	(bind ?max (length ?li))
; 	(bind ?r (random 1 ?max))
; 	(bind ?ins (nth$ ?r ?li))
; 	(return ?ins)
; )

(defrule presentar_respuestas::muestra
	(Comidas_Recomendables (recomendaciones1 $?com))
	(Desayunos_Recomendables (recomendaciones2 $?des))
	(Usuario (nombre ?nombre))
	(postres $?pos)
	(not (final))
		=>
	(bind ?max (length $?pos))
	

	(printout t "********************************************************************" crlf)
	(format   t "Este es el menu semanal que se adapta a tus necesidades, %s" ?nombre )
	(printout t "Tu menu esta de acuerdo a tus calorias necesarias diariamente. " ?nombre )
	(printout t "********************************************************************" crlf)


	(printout t "LUNES ********************************************************** " crlf)
	(printout t (send (nth$ 1  $?des) imprimir_desayuno "Desayuno ==================================================== "))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 1  $?com) imprimir_comida   "Comida ====================================================== "?ins))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 2  $?com) imprimir_comida   "Cena ======================================================== "?ins))
	(printout t crlf)

	(printout t "MARTES ********************************************************* " crlf)
	(printout t (send (nth$ 2  $?des) imprimir_desayuno "Desayuno ==================================================== "))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 3  $?com) imprimir_comida   "Comida ====================================================== "?ins))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 4  $?com) imprimir_comida   "Cena ======================================================== "?ins))
	(printout t crlf)

	(printout t "MIERCOLES ****************************************************** " crlf)
	(printout t (send (nth$ 3  $?des) imprimir_desayuno "Desayuno ==================================================== "))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 5  $?com) imprimir_comida   "Comida ====================================================== "?ins))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 6  $?com) imprimir_comida   "Cena ======================================================== "?ins))
	(printout t crlf)

	(printout t "JUEVES ********************************************************* " crlf)
	(printout t (send (nth$ 4  $?des) imprimir_desayuno "Desayuno ==================================================== "))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 7  $?com) imprimir_comida   "Comida ====================================================== "?ins))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 8  $?com) imprimir_comida   "Cena ======================================================== "?ins))
	(printout t crlf)

	(printout t "VIERNES ******************************************************** " crlf)
	(printout t (send (nth$ 5  $?des) imprimir_desayuno "Desayuno ==================================================== "))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 9  $?com) imprimir_comida   "Comida ====================================================== "?ins))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 10  $?com) imprimir_comida  "Cena ======================================================== "?ins))
	(printout t crlf)

	(printout t "SABADO ********************************************************* " crlf)
	(printout t (send (nth$ 6  $?des) imprimir_desayuno "Desayuno ==================================================== "))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 11  $?com) imprimir_comida  "Comida ====================================================== "?ins))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 12  $?com) imprimir_comida  "Cena ======================================================== "?ins))
	(printout t crlf)

	(printout t "DOMINGO ******************************************************** " crlf)
	(printout t (send (nth$ 7  $?des) imprimir_desayuno "Desayuno ==================================================== "))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 13  $?com) imprimir_comida  "Comida ====================================================== "?ins))
	(bind ?r (random 1 ?max))(bind ?ins (nth$ ?r $?pos))
	(printout t (send (nth$ 14  $?com) imprimir_comida  "Cena ======================================================== "?ins))
	(printout t crlf)

	(assert (final))
)
