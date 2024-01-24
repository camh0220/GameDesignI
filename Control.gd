extends Control




func _on_button_pressed():
	$Label.text = "My favorite thing to do outside is swimming."


func _on_button_3_pressed():
	get_tree().quit()



func _on_button_2_pressed():
	$Label.text = ""
