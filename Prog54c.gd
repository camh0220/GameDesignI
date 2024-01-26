extends Control



func _on_button_pressed():
	var num1 = int($LineEdit.text)
	var rad = num1 / 2
	var circum = 2 * 3.14159 * rad
	var area = rad ** 2 * 3.14159
	$Label.text = "Radius: " + str(rad)
	$Label2.text = "Area: " + str(area)
	$Label3.text = "Circum: " + str(circum)
	



func _on_button_2_pressed():
	$Label.text = ""
	$Label2.text = ""
	$Label3.text = ""
	



func _on_button_3_pressed():
	get_tree().quit()
