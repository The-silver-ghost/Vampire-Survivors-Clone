extends Node

var playerCoordinates:Vector2
var xAxis = 0
var yAxis = 0
var up = false
var down = false
var right = false
var left = false
var positionChange = false

#Tileset Coordinates
@onready var northWestX = 192
@onready var northWestY = 112
@onready var northEastX = 960
@onready var northEastY = 112
@onready var northX = 576
@onready var northY = 112
@onready var westX = 192
@onready var westY = 336
@onready var southWestX = 192
@onready var southWestY = 560
@onready var southX = 576
@onready var southY = 560
@onready var southEastX =960
@onready var southEastY = 560
@onready var eastX = 960
@onready var eastY = 336
@onready var middleX = 576
@onready var middleY = 336

func _process(_delta):
	tilesetPosX()
	tilesetPosY()

func tilesetPosX():
	if xAxis == 3 or xAxis == -3:
		xAxis = 0
	
	if (right == true and xAxis == 1):
		#leftside shifts to right
		northWestX = northWestX + (576)
		westX = northWestX
		southWestX = northWestX
	elif (right == true and xAxis == 2) or (right == true and xAxis == -1):
		#previously middle, now left shifts to right
		northX = northX + (576)
		middleX = northX
		southX = northX
	elif (right == true and xAxis == 0):
		#prev right, then middle, now left shifts right
		northEastX = northEastX + (576)
		eastX = northEastX
		southEastX = northEastX
	
	if (left == true and xAxis == -1):
		#right shifts left
		northEastX = northEastX - (576)
		eastX = northEastX
		southEastX = northEastX
	elif (left == true and xAxis == -2) or (left == true and xAxis == 1):
		#prev middle now right shifts left
		northX = northX - (576)
		middleX = northX
		southX = northX
	elif (left == true and xAxis == 0):
		#prev left, then middle, now right shifts left
		northWestX = northWestX - (576)
		westX = northWestX
		southWestX = northWestX

func tilesetPosY():
	if yAxis == 3 or yAxis == -3:
		yAxis = 0
	
	if (up == true and yAxis == -1):
		southWestY = southWestY - 336
		southY = southWestY
		southEastY = southWestY
	elif (up == true and yAxis == -2) or (up == true and yAxis == 1):
		westY = westY - 336
		middleY = westY
		eastY = westY
	elif (up == true and yAxis == 0):
		northWestY = northWestY - 336
		northY = northWestY
		northEastY = northWestY
	
	if (down == true and yAxis == 1):
		northWestY = northWestY + 336
		northY = northWestY
		northEastY = northWestY
	elif (down == true and yAxis == 2) or (down == true and yAxis == -1):
		westY = westY + 336
		middleY = westY
		eastY = westY
	elif (down == true and yAxis == 0):
		southWestY = southWestY + 336
		southY = southWestY
		southEastY = southWestY
