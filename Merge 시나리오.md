## 	Merge 시나리오

merge 시 갈등이 발생할 수 있는 경우

일단 merge 시 master에 최소 1 commit이 되어 있지 않으면 브랜치를 생성할 수 없습니다. 

fatal: Not a valid object name: 'master'. 이렇게 오류가 뜹니다. 



### 1. FAST Forward Merge

1. 브랜치 분기가 일어났지만 merge 시점에서 branch 한쪽에서만 commit이 쌓여 있는 경우 

   ex.  branch에만 commit이 있고, master 에는 없을 경우 발생, 만약 master에만 commit이 있고, branch에는 commit이 없는 경우 자동적으로 master의 commit정보를 복사함



```shell

```



![](https://imgur.com/Cb4URpb.jpg)









### 2. Auto- merge

merge 시점에 양쪽 브렌치에 commit들이 쌓여 있지만, confilict가 발생하지 않은 경우

![](https://imgur.com/f6M4GJy.jpg)





## 3. Merge Conlict 발생

merge 시점에 양쪽 브랜치에 commit들이 쌓여 있고, conflict가 발생하는 경우

- 동일 파일 내에 상충하는 내용이 있을 경우 



git push orgin master 

그 때 넣는 브랜치가 master



![](https://imgur.com/tMqHQKv.jpg)