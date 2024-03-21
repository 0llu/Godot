extends Node

var eksamitulemused = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]

func _ready():
	palk(20, 20)
	palk(20, 50)
	keskmine(eksamitulemused)
	koik(eksamitulemused)
	hindamine(eksamitulemused)

func palk(tunnid, tasu):
	var palk = 0
	if tunnid > 40:
		palk = tunnid * tasu
	else:
		palk = 40 * tasu + (tunnid - 40) * 1.5 * tasu
	print(round(palk))

func keskmine(tulemused):
	var summa = 0
	for p in tulemused:
		summa += p
	var kokku = len(tulemused)
	var keskmine = summa / kokku
	print("keskmine tulemus: ", keskmine)

func koik(tulemused):
	print(", ".join([str(x) for x in tulemused]))

func hindamine(tulemused): # Parandatud: funktsiooni nimi on õigesti kirjutatud
	for i in tulemused:
		if i > 90:
			print(i,"p - ", 5)
		elif i > 75:
			print(i,"p - ", 4)
		elif i > 50:
			print(i,"p - ", 3)
		else:
			print(i,"p - ", 2)




