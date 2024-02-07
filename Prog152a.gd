extends Control



func _on_button_pressed():
	var mySum = 0
	var lcv = 3 # Loop Control Variable
	while lcv <= 9669: # run code WHILE condition is true
		mySum += lcv
		$ItemList.add_item(str(mySum))
		lcv += 3


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
