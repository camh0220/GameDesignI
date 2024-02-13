extends Control

func sayHi():
	print("Hi!")

func getArea(length, width):
	var area = length * width
	return area  # Send value back out of function

func getPerim(length, width):
	return 2 * length + 2 * width
	
func _on_button_pressed():
	sayHi()
	var l = int($txtLen.text)
	var w = int($txtWid.text)
	var a = getArea(l, w)
	var p = getPerim(l, w)
	$lblOut.text = "Area: %d\nPerimeter: %d" % [a, p]
