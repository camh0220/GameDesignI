extends Control



func _on_button_pressed():
	$ItemList.add_item("Number     Square     Square Root     Cube     4th Root")
	for num in range(1, 21):
		var number = num
		var square = num * num
		var root = sqrt(num)
		var cube = number * square
		var root4 = square ** 4
		var line = str(number) + "     " + str(square) + "     " + str(root) + "     " + str(cube) + "     " + str(root4)
		$ItemList.add_item(line)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
