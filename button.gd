extends Area3D

@export var indic:Node3D
@export var inv:Node3D

func activationindic(body: Node3D) -> void:
	indic.visible=true
	
func désinctivationindic(body: Node3D) -> void:
	indic.visible=false
