extends KinematicBody2D

var bullet = preload("res://src/Bullet/Bullet.tscn") 
var speed = 450



func _ready() -> void:
	set_process(true)
	set_physics_process(true)
	
		
		
# warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_just_pressed("fire"):
		var bulletInstance = bullet.instance()
		bulletInstance.position = Vector2(position.x, position.y -10 )
		get_tree().get_root().add_child(bulletInstance)
	
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_left"):
# warning-ignore:return_value_discarded
		move_and_collide(Vector2(-speed * delta, 0.0))
	if Input.is_action_pressed("ui_right"):
# warning-ignore:return_value_discarded
		move_and_collide(Vector2(speed * delta, 0.0))
	if Input.is_action_pressed("ui_up"):
# warning-ignore:return_value_discarded
		move_and_collide(Vector2(0.0,-speed * delta))
	if Input.is_action_pressed("ui_down"):
# warning-ignore:return_value_discarded
		move_and_collide(Vector2(0.0,speed * delta))


func _on_Area2D_body_entered(body: Node) -> void:
	died()

func died() -> void:
	queue_free()
	PlayerData.deaths += 1





