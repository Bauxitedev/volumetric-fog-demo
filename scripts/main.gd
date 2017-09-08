extends WorldEnvironment

onready var cam = get_node("cam")

func _ready():
	set_process(true)
	
func _process(delta):
	# move camera back and forth
	cam.translation.x = -0.5 + sin(OS.get_ticks_msec() / 3000.0) * -4