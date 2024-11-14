'''
1) Given an array of integers `nums` and an integer `target`, return the indices of the two numbers such that they add up to `target`. You may assume that each input: would have exactly one solution, and you may not use the same element twice.

Example:
    input:
    nums = [2, 7, 11, 15]
    target = 9
    Output: [0, 1]
'''


def question_1():
    nums = list(map(int, input().split()))
    target = int(input())
    
    indices = {}
    
    for i, num in enumerate(nums):
        res = target - num
        
        if res in indices:
            return [indices[res], i]
        
        indices[num] = i
    return []

print(question_1())