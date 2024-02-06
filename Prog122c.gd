extends Control



func _on_button_pressed():
	for num in range(2, 11, 2):
		var three = 3
		var num1 = num
		var num2 = num + 1
		var num3 = num * 2
		var num4 = (num1 * num3) / 2
		var line = str(num1) + "     " + str(num2) + "     " + str(num3) + "     " + str(num4)
		$ItemList.add_item(line) 
		


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
