extends Node2D

const LEVEL1 = "res://Levels/intro.tscn"
const LEVEL2 = "res://Levels/intro2.tscn"
const LEVEL_HOLE = "res://Levels/hole.tscn"
const LEVEL_SLIDE = "res://Levels/slide.tscn"
const LEVEL_STOP = "res://Levels/stop.tscn"
const LEVEL_STOP2 = "res://Levels/stop2.tscn"
const LEVEL_BUILDUP = "res://Levels/buildup.tscn"
const LEVEL_TURN = "res://Levels/turn.tscn"
const LEVEL_UP_AND_OVER = "res://Levels/upandover.tscn"
const LEVEL_SLAM_DUNK = "res://Levels/slamdunk.tscn"
const LEVEL_ELEVATOR = "res://Levels/elevator.tscn"

const TITLE_SCREEN = "res://title_screen.tscn"

const LEVEL_ARRAY: Array = [LEVEL1, LEVEL2, LEVEL_HOLE, LEVEL_SLIDE, 
LEVEL_STOP, LEVEL_STOP2, LEVEL_BUILDUP, 
LEVEL_TURN, LEVEL_UP_AND_OVER, LEVEL_ELEVATOR, TITLE_SCREEN]

func getLevel(num):
	return LEVEL_ARRAY[num]
