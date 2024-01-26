extends Control



func _on_button_pressed():
	var num1 = int($LineEdit.text)
	var num2 = int($LineEdit2.text)
	var num3 = int($LineEdit3.text)
	var num4 = int($LineEdit4.text)
	var sum = num1 + num2 + num3 + num4
	var average = sum / 4
	$Label.text = "The sum of the four numbers is: " + str(sum)
	$Label2.text = "The average of the four numbers is: " + str(average)
	

	


func _on_button_2_pressed():
	$LineEdit.text = ""
	$LineEdit2.text = ""
	$LineEdit3.text = ""
	$LineEdit4.text = ""
	$label.text = ""
	$label2.text = ""
	



func _on_button_3_pressed():
	get_tree().quit()
