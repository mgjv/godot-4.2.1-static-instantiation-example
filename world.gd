extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(1, 10):
		print("Adding Enemy %d" % i)
		var enemy = Enemy.new_enemy()
		add_child(enemy)
		enemy.position.x = randf_range(60, 1152 - 60)
		enemy.position.y = randf_range(60, 648 - 60)
