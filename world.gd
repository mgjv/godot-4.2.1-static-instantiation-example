extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(1, 10):
		print("Adding Enemy %d" % i)
		var enemy = Enemy.new_enemy("Enemy %d" % i)
		add_child(enemy)
