extends Node2D

const LEVEL1 = "res://Levels/level1.tscn"
const LEVEL2 = "res://Levels/level2.tscn"
const LEVEL3 = "res://Levels/level3.tscn"
const LEVEL4 = "res://Levels/level4.tscn"
const LEVEL5 = "res://Levels/level5.tscn"
const LEVEL6 = "res://Levels/level6.tscn"

const LEVEL_ARRAY: Array = [LEVEL1, LEVEL2, LEVEL3, LEVEL4, LEVEL5, 
LEVEL6]

func getLevel(num):
	return LEVEL_ARRAY[num]
