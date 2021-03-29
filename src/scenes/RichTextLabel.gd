extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var score = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	set_text("0")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta): 
#	pass


func _on_Pong_input_event(viewport, event, shape_idx):
	if event is InputEventScreenTouch and event.is_pressed():
		score += 1;
		set_text(str(score));
