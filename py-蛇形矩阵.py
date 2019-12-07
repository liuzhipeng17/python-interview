'''
蛇形矩阵

第一行元素：分别是sum(1), sum(1+2), sum(1+2+3), sum(1+2+3+4)
1 3 6 10 15
第二行元素：上一行元素去掉第一个元素的数组(3 6 10 15), 然后每一个元素自减1（2，5，9，14）

'''
while True:
    try:
        n = int(input())
        pre_row = [sum(range(i+2)) for i in range(n)]
        for i in range(n):
            print(' '.join(map(str, pre_row)))
            pre_row = list(map(lambda x:x-1, pre_row[1:]))
    except:
        break
