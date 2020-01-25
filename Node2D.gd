extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var timer_bonus
var bonus = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if bonus ==false:
		if event is InputEventMouseButton:
			bonus=true
			bonus_timer()
			print (bonus)

func bonus_timer():
	timer_bonus = Timer.new()
	timer_bonus.set_one_shot(true)
	timer_bonus.set_wait_time(5)
	timer_bonus.connect("timeout",self,"time_out")
	#timer_bonus.connect("timeout", self, "_timer_bonus_done")
	timer_bonus.start()
	print("timer start")
	add_child(timer_bonus)
	
func time_out():
	print ("time out")
	bonus = false

func _process(delta):
	print(bonus)


