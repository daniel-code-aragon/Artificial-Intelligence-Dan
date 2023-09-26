(deftemplate edad
	15 80
	(
		(joven (15 1) (25 1) (30 0))
		(adulto (25 0) (30 1) (55 1) (60 0))
		(anciano (55 0) (60 1) (80 1))
	)
)


(deftemplate ppto
	5 100
	(
		(bajo (5 1) (15 1) (20 0))
		(alto (15 0) (25 1) (100 1))
	)
)

(deftemplate calidad
	0 10
	(
		(baja (0 1) (2 1) (3 0))
		(media (2 0) (3 1) (5 1) (6 0))
		(alta (5 0) (6 1) (7 1)(8 0))
		(muy_alta (7 0) (8 1) (10 1))
	)
)





(defrule regla_1
	(edad joven)
	(ppto bajo)
=>
	(assert (calidad baja))
)

(defrule regla_2
	(edad joven)
	(ppto alto)
=>
	(assert (calidad media))
)

(defrule regla_3
	(edad adulto)
	(ppto bajo)
=>
	(assert (calidad media))
)

(defrule regla_4
	(edad adulto)
	(ppto alto)
=>
	(assert (calidad muy_alta))
)

(defrule regla_5
	(edad anciano)
	(ppto bajo)
=>
	(assert (calidad media))
)

(defrule regla_6
	(edad anciano)
	(ppto alto)
=>
	(assert (calidad alta))
)


