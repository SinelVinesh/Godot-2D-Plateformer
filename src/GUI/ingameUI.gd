extends CanvasLayer

onready var counter = $coin_counter

func _ready():
	counter.text =  str(Inventory.coin)
	SignalBus.connect("coin_picked", self, "_increase_counter")

func _increase_counter():
	Inventory.coin += 1
	counter.text =  str(Inventory.coin)
