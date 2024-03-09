class_name EnemyP
extends CharacterBody2D

var health: int
var speed: float
var label: String

static func new_enemy(name: String, speed := 50.0, health := 100) -> EnemyP:
	# Unfortunately, we cannot use a preload at the moment. 
	# I think this is a bug in Godot, because there is some circularity
	# created by a preload that it doesn't seem to deal with well
	var my_scene: PackedScene = load("res://enemy.tscn")
	var new_enemy: EnemyP = my_scene.instantiate()
	new_enemy.health = health
	new_enemy.speed = speed
	new_enemy.label = name
	return new_enemy

func _ready():
	%Label.text = label
	position.x = randf_range(25, 1200)
	position.y = randf_range(25, 800)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
