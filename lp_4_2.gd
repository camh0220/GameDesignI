extends Control



func _on_button_pressed():
	var kilo = int($LineEdit1.text)
	var cent = int($LineEdit2.text)
	var cent2 = int($LineEdit3.text)
	var cent3 = int($LineEdit4.text)
	
	if kilo > 27:
		$Label5.text = "Too heavy."
	elif kilo < 27:
		$Label5.text = "Package is good."
	elif cent * cent2 * cent3 > 100000:
		$Label5.text = "Too large."
	elif cent * cent2 * cent3 < 100000:
		$Label5.text = "Package is good."
	elif cent * cent2 * cent3 > 100000 and kilo > 27:
		$Label5.text = "Package is too large and too heavy."
	


func _on_button_2_pressed():
	pass # Replace with function body.


func _on_button_3_pressed():
	pass # Replace with function body.
