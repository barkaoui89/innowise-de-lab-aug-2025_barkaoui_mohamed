#  dimensions "height" "width"
height = int ("5")
width = int ("4")

# number of rows (height)
for i in range(height):
    # print number of stars in one row
    for j in range(width):
        print("*", end="")  
    print()  
