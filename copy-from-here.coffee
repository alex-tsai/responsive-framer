# Responsive prototying on Framer
# Alex Tsai
# http://alextsai.me

# Units for using percentages with dimensions
scrW = Screen.width/100
scrH = Screen.height/100

############################################
# Determining the Device
############################################
isPortrait = Screen.width < Screen.height

# 1x
isIpadMini = Screen.height * Screen.width == 1024 * 768

# 2x
isIphone5 = Screen.height * Screen.width == 1136 * 640
isIphone6 = Screen.height * Screen.width == 1334 * 750
isIpadAir = Screen.height * Screen.width == 2048 * 1536

#3x
isIphone6plus = Screen.height * Screen.width == 2208 * 1242
isNexus5 = Screen.height * Screen.width == 1920 * 1080


############################################
# Alignments Functions
############################################

# Horizontal
middleAlign = (layer, offset) ->
	offset = offset || 0
	layer.midX = 50*scrW + offset
rightAlign = (layer, offset) ->
	offset = offset || 0
	layer.maxX = 100*scrW + offset
leftAlign = (layer, offset) -> 
	offset = offset || 0
	layer.x = offset

# Vertical
centerAlign = (layer, offset) ->
	offset = offset || 0
	layer.midY = 50*scrH + offset
topAlign = (layer, offset) ->
	offset = offset || 0
	layer.y = offset
bottomAlign = (layer, offset) -> 
	offset = offset || 0
	layer.maxY = 100*scrH + offset