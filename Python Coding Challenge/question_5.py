'''
5) You are given an array of `k` lists, each list is sorted in ascending order. 
Merge all the linked lists into one sorted list and return it.

Example:
    input:
    lists = [[1,4,5], [1,3,4], [2,6]]
    Output: [1,1,2,3,4,4,5,6]

'''

def merge_two_lists(list_1, list_2):
    res = []
    i = 0
    j = 0

    while i < len(list_1) and j < len(list_2):
        
        if list_1[i] <= list_2[j]:
            res.append(list_1[i])
            i += 1
        else:
            res.append(list_2[j])
            j += 1
            
    res.extend(list_1[i:])
    res.extend(list_2[j:])
    
    return res

def solution(lists):
    if not lists:
        return []
    
    merged = lists[0]
    
    for i in range(1, len(lists)):
        merged = merge_two_lists(merged, lists[i])
    return merged

# test_1 = [[1, 4, 5], [1, 3, 4], [2, 6]]
# test_2 = [[1, 2, 3], [4, 5, 6]]
# test_3 = [[7, 8, 9], [1, 2, 3], [4, 5]]

# print(solution(test_1))
# print(solution(test_2))
# print(solution(test_3))