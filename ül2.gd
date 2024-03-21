#Hendri Olev Serman IT23
#21.03.2024

extends Node

# Kasutaja raha ja toote hind
var raha = 100
var toote_hind = 75

func _ready():
	# Kas saab osta toote või mitte ning kui ei saa, siis kui palju puudu jääb
	if raha >= toote_hind:
		print("Saad osta toote!")
	else:
		print("Sul jääb", toote_hind - raha, "ühikut raha puudu.")

	# Ristküliku pindala arvutamine ja kujundi tüübi kontrollimine
	var a = 4
	var b = 4
	var pindala = a * b

	if a == b:
		print("Ruut")
	elif a != b:
		print("Ristkülik")

