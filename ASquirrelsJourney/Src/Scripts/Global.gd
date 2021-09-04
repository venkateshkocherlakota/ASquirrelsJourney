extends Node


var scene_intro1 = 'res://Src/Scenes/Introduction/Intro1.tscn'
var scene_intro2 = 'res://Src/Scenes/Introduction/Intro2.tscn'
var scene_intro3 = 'res://Src/Scenes/Introduction/Intro3.tscn'
var scene_intro4 = 'res://Src/Scenes/Introduction/Intro4.tscn'
var scene_day1 = 'res://Src/Scenes/Day1/Day1.tscn'
var scene_day2 = 'res://Src/Scenes/Day2/Day2.tscn'
var scene_day3 = 'res://Src/Scenes/Day3/Day3.tscn'
var scene_day4 = 'res://Src/Scenes/Day4/Day4.tscn'
var scene_day5 = 'res://Src/Scenes/Day5/Day5.tscn'
var scene_day6 = 'res://Src/Scenes/Day6/Day6.tscn'
var scene_day7 = 'res://Src/Scenes/Day7/Day7.tscn'

var acorns_count : int = 0
var total_acorns_count : int = 0
var full_speed : bool = false
var player_full_speed : int = 300
var player_half_speed : int = 200
var player_has_acorn : bool = false
