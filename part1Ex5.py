def two_sum(nums, target):
    # dictionary 
    seen = {}
    for i, num in enumerate(nums):
        complement = target - num
        if complement in seen:
            return [seen[complement], i]
        seen[num] = i
    return None  # no solution found

nums1 = [2, 7, 11, 15]
target1 = 9
print("Indices for target 9:", two_sum(nums1, target1)) 

nums2 = [3, 2, 4]
target2 = 6
print("Indices for target 6:", two_sum(nums2, target2))  
