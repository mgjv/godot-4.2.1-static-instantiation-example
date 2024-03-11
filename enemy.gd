class_name Enemy
extends CharacterBody2D

var health: int

static func new_enemy(health := 50) -> Enemy:
	# Change `load` on the next line to `preload` to trigger the problem
	var my_scene: PackedScene = load("res://enemy.tscn")
	var new_enemy: Enemy = my_scene.instantiate()
	new_enemy.health = health
	return new_enemy

