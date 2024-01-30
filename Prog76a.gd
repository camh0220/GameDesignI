extends Control



func _on_button_pressed():
	var num1 = int($LineEdit.text)
	var num2 = num1 * 9
	var num3 = num2 * 123456789
	$lblNum1.text = str(num1)
	$lblTotal.text = str(num2)
	$lblTotal2.text = str(num3)



func _on_button_2_pressed():
	$lblNum1.text = ""
	$lblTotal.text = ""
	$lblTotal2.text = ""
	$LineEdit.text = ""



func _on_button_3_pressed():
	get_tree().quit()
