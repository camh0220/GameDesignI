extends Control


func _on_button_pressed():
	var eggs = int($LineEdit.text)
	var price = 0.0
	var cost = 0.0
	var dozens = floor(eggs / 12)
	var remainder = eggs % 12

	if dozens > 0 and dozens < 4:
		price = 0.50
	elif dozens > 4 and dozens < 6:
		price = 0.45
	elif dozens > 6 and dozens < 11:
		price = 0.40
	elif dozens >= 11:
		price = 0.35
	else:
		$Label2.text = "Invalid # of eggs."
	
	
	cost = (remainder * (price / 12) + dozens * price)
	$Label2.text = "The bill is equal to: $%.2f" % cost


func _on_button_2_pressed():
	$Label2.text = ""
	$LineEdit.text = ""


func _on_button_3_pressed():
	get_tree().quit()
