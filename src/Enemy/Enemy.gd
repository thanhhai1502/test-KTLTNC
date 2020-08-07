extends KinematicBody2D


var bullet = preload("res://src/Bullet/BulletEnemy.tscn") 
var speed = 15


func _ready() -> void:
	set_process(true)
	set_physics_process(true)

	
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("bullet_Down"):
		var bulletInstance = bullet.instance()
		bulletInstance.position = Vector2(position.x, position.y + 40 )
		get_tree().get_root().add_child(bulletInstance)
	
func _physics_process(delta: float) -> void:
	move_and_collide(Vector2(0, speed*delta))

		
	


