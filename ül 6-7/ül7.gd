extends Node

# Import RandomNumberGenerator moodul
var rng = RandomNumberGenerator.new()

# Defineerime mängu algseisud
var vaenlase_elud = 100
var salv = 5
var skoor = 0
var lasud = 0

# Funktsioon, mis käivitatakse siis, kui skript laetakse
func _ready():
	pass

# Iga kaadri ajal kutsutav funktsioon
func _process(delta):
	if Input.is_action_just_pressed("laadimine"):
		laadi_relv()
	if Input.is_action_just_released("tulistamine"):
		tulista()
	$pilt/score.text = "Score: %s" %skoor
	$pilt/kuulid.text = "Ammo: %s" %salv
	$pilt/elud.text = "Lives: %s" %vaenlase_elud 

# Funktsioon relva laadimiseks
func laadi_relv():
	$pilt/pewpew.text = "Laadimine"
	print("Relva laadimine!")
	salv = 5
	print("Relv on laetud!")
	print("Salves on:", salv, "kuuli!")

# Funktsioon tulistamiseks
func tulista():
	# Genereerime juhusliku pihtasaamise
	var pihtas = bool(rng.randi_range(0, 1))
	# Genereerime juhusliku kahju
	var dmg = rng.randi_range(8, 12)

	if salv >= 1:
		$pilt/pewpew.text = "Pew Pew"
		print("pew pew")
		salv -= 1
		lasud += 1
		print("Salves:", salv)
		if pihtas:
			vaenlase_elud -= dmg
			skoor += 1
			print("Pihtas lastud -", dmg, "elud:", vaenlase_elud)
		else:
			print("Mööda lastud - 0 elud:", vaenlase_elud)
		
		if vaenlase_elud <= 0:
			mang_labi()
		print("--------")
	else:
		print("Sul on salv tühi! Vajuta *R* et laadida!")
		print("--------")

# Funktsioon mängu lõpetamiseks
func mang_labi():
	$pilt/gameover.text = "GAME OVER!"
	print("Game Over!")
	print("Score:", skoor)
	print("Laskude arv:", lasud)
	var efektiivsus = skoor / lasud * 100 if lasud > 0 else 0
	print("Efektiivsus:", efektiivsus, "%")
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()
