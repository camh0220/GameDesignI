extends Control






func _on_button_pressed():
	pass # Replace with function body.
	$Label.text = "I like to swim during my free time."


func _on_button_2_pressed():
	$Label.text = ""



func _on_button_3_pressed():
	get_tree().quit()
