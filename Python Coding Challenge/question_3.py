'''
3) Given an integer array `coins` representing coins of different denominations and an integer `amount`, 
return the fewest number of coins that you need to make up that amount. 
If that amount of money cannot be made up by any combination of the coins, return `-1`.

Example:
    input:
    coins = [1, 2, 5]
    amount = 11
    Output: 3 (11 = 5 + 5 + 1)

'''

def question_3():
    coins = list(map(int, input().split()))
    amount = int(input())
    
    dp = [amount + 1] * (amount + 1)
    dp[0] = 0

    for a in range(1, amount + 1):
        for c in coins:
            if a - c >= 0:
                dp[a] = min(dp[a], dp[a - c] + 1)

    return dp[amount] if dp[amount] != amount + 1 else -1

print(question_3())