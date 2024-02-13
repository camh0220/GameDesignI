extends Control

func myAdd(num1, num2):
	num1 + num2

func _on_button_6_pressed():
	pass # Replace with function body.


func _on_button_7_pressed():
	$Label5.text = ""
	$Label6.text = ""
	$LineEdit.text = ""
	$LineEdit2.text = ""


func _on_button_8_pressed():
	get_tree().quit()
