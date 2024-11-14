'''
4) You are given two non-empty lists representing two non-negative integers. 
The digits are stored in reverse order, and each of their nodes contain a single digit. 
Add the two numbers and return it as a list.

Example:
input:
    l1 = [2, 4, 3]
    l2 = [5, 6, 4]
    Output: [7, 0, 8]
    Explanation: 342 + 465 = 807.

'''

def add_two_numbers():
    list_1 = list(map(int, input().split()))
    list_2 = list(map(int, input().split()))
    
    result = []
    carry = 0
    i = 0
    j = 0

    while i < len(list_1) or j < len(list_2) or carry:
        num_1 = list_1[i] if i < len(list_1) else 0
        num_2 = list_2[j] if j < len(list_2) else 0
        
        total = num_1 + num_2 + carry
        carry = total // 10
        result.append(total % 10)

        i += 1
        j += 1

    return result

print(add_two_numbers())