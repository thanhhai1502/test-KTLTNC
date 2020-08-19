extends KinematicBody2D

var speed = 100


	
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_physics_process(true)
	
func _physics_process(delta: float) -> void:
	var collidedObject = move_and_collide(Vector2(0.0, speed * delta))
	if (collidedObject):
		collidedObject.get_collider()#.queue_free()
		queue_free()

		
