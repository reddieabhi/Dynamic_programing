def frogJump(n: int, heights) :
    ans = [10**9]*n
    ans[n-1] = 0
    ans[n-2] = abs(heights[n-1]-heights[n-2])
    for i in range(n-3,-1,-1):
        ans1 = abs(heights[i]-heights[i+1])+ans[i+1]
        ans2 = abs(heights[i]-heights[i+2])+ans[i+2]
        ans[i] = min(ans1,ans2)
    return ans[0]
