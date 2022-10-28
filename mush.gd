extends Area2D


var main 

func _ready():
	main =get_tree().get_current_scene()
func _on_mush_body_entered(_body):
	$AnimationPlayer.play("hit")
	main.score = main.score +1
	main.get_node("HUD").update_score(main.score)
func _on_AnimationPlayer_animation_finished(_anim_name):
	queue_free()
