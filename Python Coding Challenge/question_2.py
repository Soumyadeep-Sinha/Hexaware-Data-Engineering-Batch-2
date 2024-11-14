'''
2)  Given a string `s`, find the length of the longest substring without repeating characters.

Example:
    input:
    s = "abcabcbb"
    Output: 3
    Explanation: The answer is "abc", with the length of 3.

'''

def question_2():
    s = input()
    left = 0
    right = 0
    maxlen = 0
    substr = ""
    
    while right != len(s):
        if s[right] in substr:
            left += 1
        else:
            right += 1
        
        substr = s[left:right]
        
        if len(substr) > maxlen:
            maxlen = len(substr)
    
    return maxlen

print(question_2())