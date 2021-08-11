from itertools import product
k,m=map(int,input().split())
print(max(sum(k*k for k in i)%m for i in product(*[list(map(int,input().split()))[1:] for _ in range(k)])))
