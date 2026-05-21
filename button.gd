extends Area3D

@export var indic:Node3D
@export var inv:Node3D

func activationindic(body: Node3D) -> void:
	indic.visible=true
	
	
func désinctivationindic(body: Node3D) -> void:
	indic.visible=false

func _process(delta: float) -> void:
	if indic.visible:
		if Input.is_action_just_pressed("Pickup"):
			var node:Node3D=get_parent()
			node.reparent(inv)
			node.scale=Vector3(0.2,0.2,0.2)
			node.position=Vector3(0,inv.get_child_count()*0.3,0)
			process_mode=Node.PROCESS_MODE_DISABLED
