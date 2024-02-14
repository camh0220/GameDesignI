extends Control

func myAdd(num1, num2):
	var add = num1 + num2
	return add
	
func mySub(num1, num2):
	var sub = num1 - num2
	return sub
	
func myMul(num1, num2):
	var mul = num1 * num2
	return mul
	
func myDiv(num1, num2):
	num1 / num2
	var div = num1 / num2
	return div
	
func myPow(num1, num2):
	var pow = num1 ** num2
	return pow
	
func myMod(num1, num2):
	var mod = num1 % num2
	return mod
	



func _on_button_7_pressed():
	$Label5.text = ""
	$Label6.text = ""
	$LineEdit.text = ""
	$LineEdit2.text = ""


func _on_button_8_pressed():
	get_tree().quit()


func _on_button_pressed():
	var n1 = int($LineEdit.text)
	var n2 = int($LineEdit2.text)
	var result = myAdd(n1, n2)
	$Label6.text = str(result)
	



func _on_button_2_pressed():
	var n1 = int($LineEdit.text)
	var n2 = int($LineEdit2.text)
	var result = mySub(n1, n2)
	$Label6.text = str(result)


func _on_button_3_pressed():
	var n1 = int($LineEdit.text)
	var n2 = int($LineEdit2.text)
	var result = myMul(n1, n2)
	$Label6.text = str(result)


func _on_button_4_pressed():
	var n1 = int($LineEdit.text)
	var n2 = int($LineEdit2.text)
	var result = myPow(n1, n2)
	$Label6.text = str(result)


func _on_button_5_pressed():
	var n1 = int($LineEdit.text)
	var n2 = int($LineEdit2.text)
	var result = myDiv(n1, n2)
	$Label6.text = str(result)


func _on_button_6_pressed():
	var n1 = int($LineEdit.text)
	var n2 = int($LineEdit2.text)
	var result = myMod(n1, n2)
	$Label6.text = str(result)
