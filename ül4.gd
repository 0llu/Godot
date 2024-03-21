extends Node2D

var players = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","
Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin",
"Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins",
"Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey",
"Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]

func _ready():
	print("mängijate arv", len(players))
	print("esimene: ", players [0])
	players.sort()
	var tyyp = players.find("Reyes",0)
	players.erase(tyyp)
	players.append("Peeter")
	var pikimnimePikkus = 0
	var pikimnimi = ""
	for i in players:
		if pikimnimePikkus<len(i):
			pikimnimePikkus = len(i)
			pikimnimi = i
			print("pikim nimi: ", pikimnimi)
		print(i)
		
	for i in range(5):
		players.gold+=randi() % 19
		print("Mägija kullakogus",)
