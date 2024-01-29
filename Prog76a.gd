extends Control



func _on_button_pressed():
	var num1 = int($LineEdit.text)
	var num2 = num1 * 9
	$lblNum1.text = num1
	$lblTotal.text = num2
	$lblTotal2.text = num2 * 123456789
