extends CanvasLayer

var coin = 0
onready var counter = $coin_counter

func _ready():
	counter.text =  str(coin)
	SignalBus.connect("coin_picked", self, "_increase_counter")

func _increase_counter():
	print("received")
	coin += 1
	counter.text =  str(coin)
