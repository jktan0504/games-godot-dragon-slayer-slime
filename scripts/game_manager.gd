extends Node

@onready var score_label = $ScoreLabel

# score
var score =  0 

func add_point():
	score += 1
	score_label.text = "You collected "+ str(score) +" coins."
	print("Current Score: "+ str(score))
