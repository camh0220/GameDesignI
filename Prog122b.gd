extends Control



func _on_button_pressed():
	$ItemList.add_item("Hours     Pay")
	for num in range(1, 41):
		var hours = str(num)
		var pay = num * 4
		var line = str(hours) + "     " + str(pay)
		$ItemList.add_item(line)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
