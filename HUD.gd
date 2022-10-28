extends CanvasLayer
func show_message(text):
	$MSG.text= text
	$MSG.show()
	$MsgTimer.start()
	
func update_score(score):
	$ScoreLabel.text=str(score)
	
	
	
func _on_MsgTimer_timeout():
	$MSG.hide()
	
	

