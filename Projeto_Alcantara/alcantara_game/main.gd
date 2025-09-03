extends Node

var health =100


func _ready():
	$Label.text =  "This is a Label"
	$Label.modulate = Color.GREEN
	$Dead.text = "" # tem que começar vazio.

func _input(event):
	if event.is_action_pressed("my_action"):
		$Label.modulate = Color.RED
		health -=20
		if health <= 0:
			health=0

		#Atualiza a vid a aqui:
		$Hit.text = "Health: %d" % health
		$Label.modulate =Color.RED

	#Verificar se morreu: 
		if health ==0:
			$Dead.text ="You are Dead."
			$Dead.modulate =Color.BLUE 
		
		
	if event.is_action_released("my_action"):
		$Label.modulate = Color.GREEN
	
