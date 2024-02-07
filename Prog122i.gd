extends Control



func _on_button_pressed():
	$ItemList.add_item("Number     Cube Root     Cube")
	for num in range(-25, 25):
		var num1 = num
		var num2 = num ** 0.25
		var num3 = num * 4
		var line = str(num1) + "     " + str(num2) + "     " + str(num3)
		$ItemList.add_item(line)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
