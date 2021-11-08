extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2(-speed, -speed)


func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.normal)
