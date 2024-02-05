extends Control



func _on_button_pressed():
	for num in range(2, 11, 2):
		var num2 = num + 1
		var line = str(num)
		$ItemList.add_item(line) + "     " + str(num2)
		


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
