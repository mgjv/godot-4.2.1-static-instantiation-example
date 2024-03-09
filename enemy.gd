class_name Enemy
extends CharacterBody2D

var health: int

static func new_enemy(health := 50) -> Enemy:
	# Unfortunately, we cannot use a preload at the moment. 
	# I think this is a bug in Godot, because there is some circularity
	# created by a preload that it doesn't seem to deal with well
	var my_scene: PackedScene = load("res://enemy.tscn")
	var new_enemy: Enemy = my_scene.instantiate()
	new_enemy.health = health
	return new_enemy

