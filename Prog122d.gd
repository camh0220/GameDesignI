extends Control



func _on_button_pressed():
	for num in range(-12, 17):
		var x = num
		var y = x**6 - 3 * x**5 - 93 * x**4 + 87 * x**3 + 1596 * x**2 - 1380 * x - 2800
		var line = str(x) + "          " + str(y)
		$ItemList.add_item(line)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
