
while True:
    try:
        in_str = [x for x in input()]
        f = lambda x: ord(x)
        print(''.join(sorted(in_str, key=f)))
        
    except:
        break
       
 '''
 Lily上课时使用字母数字图片教小朋友们学习英语单词，每次都需要把这些图片按照大小（ASCII码值从小到大）排列收好。请大家给Lily帮忙，通过C语言解决。
 
 '''
