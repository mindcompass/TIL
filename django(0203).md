지난번 과제 관련

요청을 2개 넣어야함(주소가 2개 필요함) 

화면을 뿌려주는 주소

함수를 수행하는 주소

answer_list =request.post.getlist('answer')

1번 방식.. 평범한 웹사이트 주소 호출

history.back();

return false;



```py
In [1]: from polls.models import *

In [2]: p1 = Publication(title='The Python Journal')
   ...: p2 = Publication(title='Science News')
   ...: p3 = Publication(title='Science Weekly')
   ...: p1.save()
   ...: p2.save()
   ...: p3.save()
   ...:
In [3]: Publication.objects.all()
Out[3]: <QuerySet [<Publication: The Python Journal>, <Publication: Science News>, <Publication: Science Weekly>]>

In [4]: al= Album.objects.get(pk=1)

In [5]: a1= Album.objects.get(pk=1)

In [6]: a1
Out[6]: <Album: a_Album1[a]>

In [7]: p1 = Publication.objects.get(id=1)


In [10]: p1.albums.add(a1)

In [11]: album2 = Album.objects.get(id=2)

In [12]: pub1 = Publication.objects.get(id=1)

In [13]: album2.publication_set.add(pub1)
```



class User(models.Model):
		user_name = models.CharField(max_length=20)
		is_superuser = models.BooleanField(default=False)
	def __str__(self):
		return self.user_name



class Album(models.Model):
	name = models.CharField(max_length=50)
	description = models.CharField(
		'One Line Description',
		max_length=100, null=True)
	owner = models.ForeignKey(User,null=True, on_delete=models.CASCADE)
	def __str__(self):
		return self.name + '[' + self.owner.user_name + ']'



from polls.models import User, Album

User.objects.create(user_name='a')
User.objects.create(user_name='b')
User.objects.create(user_name='c')



In [20]: User.objects.all()
Out[20]: <QuerySet [<User: a>, <User: b>, <User: c>]>

In [21]: User.objects.all()
Out[21]: <QuerySet [<User: a>, <User: b>, <User: c>]>

In [22]: Album.objects.filter(owner=user_a)
Out[22]: <QuerySet [<Album: a_Album1[a]>, <Album: a_Album2[a]>]>





시험 

가상환경을 왜 쓰는가?(p31)

자료형 (p41)

소수점 버리기



slicing, indexing

자료형 (p47)



db 

릴레이션 (relation)

대체키를 우리가 알고 있는 후보키



후보키는 속성 집합



시험 : p92페이지



시험 : 182페이지



```
for ( var i = 1; i <= 100; i++) {
   db.prod.save({
      name: 'name-' + i,
      price: 1000 + i,
      count: i * 10
   })
}

/*
db.prod.find( { $or : [    ] } )
{ price : { $gte: 1010, $lte: 1020 } }
{ price : { $gt: 1070, $lt: 1100 } }
*/

db.prod.find( { $or : [ { price : { $gte: 1010, $lte: 1020 } },  { price : { $gt: 1070, $lt: 1100 } }  ] } )

현재 데이터 베이스
db
show dbs
show collections
```

db.user.save({name: 'AAA',age:30, address:['서울,'신림']})



db.uesr.find()





db.score.find( { $or : [ { a : { $lt : 1 } }, { a : { $gt : 9 } } ] } )



셀레니움 명시적, 암시적 대기

타임에 슬립



```javas
db.user.save({ name:'AAA', age:30, address:['서울', '신림'] })
WriteResult({ "nInserted" : 1 })
db.user.find()
{ "_id" : ObjectId("5e37af7063ed942954a689df"), "name" : "AAA", "age" : 30, "address" : [ "서울", "신림" ] }
db.user.save({ name:'AAA', age:30, address:['제주', '연동'] })
WriteResult({ "nInserted" : 1 })
db.user.find()                                            ] })
{ "_id" : ObjectId("5e37af7063ed942954a689df"), "name" : "AAA", "age" : 30, "address" : [ "서울", "신림" ] }
{ "_id" : ObjectId("5e37afb663ed942954a689e0"), "name" : "AAA", "age" : 30, "address" : [ "제주", "연동" ] }
db.user.find({ age : { $gte : 30 } })
{ "_id" : ObjectId("5e37af7063ed942954a689df"), "name" : "AAA", "age" : 30, "address" : [ "서울", "신림" ] }
{ "_id" : ObjectId("5e37afb663ed942954a689e0"), "name" : "AAA", "age" : 30, "address" : [ "제주", "연동" ] }
```





-----------

시험문제

| [파이썬과 웹 크롤링] https://datalab.naver.com/keyword/realtimeList.naver 셀레니움을 이용하여 네이버의 급상승 검색어 웹페이지에서 1위에서 20위까지  검색어 확인하는 파이썬 코드를 작성하시오.  [정형 데이터 처리 RDB] ㅇ 학과 테이블 : 학과번호(기본키) / 학과명 ㅇ 교수 테이블 : 교수번호(기본키) / 이름 / 학과번호(학과 테이블의 외래키) / 직급 / 급여  교수가 배정되지 않은 학과의 학과명을 검색하는 SQL을 작성하시오.  [비정형 데이터처리 MongoDB] mongo shell을 사용하여 데이터베이스 및 컬렉션을 생성하고 제시된 필드명에 맞도록 데이터를 입력하는 코드를 작성하시오. ㅇ 데이터베이스명 : exam ㅇ 컬렉션명 : product ㅇ 필드명 - company (회사명) / prd_name (제품명) / price (가격) ㅇ 데이터  - 회사명 : 광동제약, 제품명 : 제주 삼다수 2L, 가격 : 800 - 회사명 : 스파클, 제품명 : 스파클 2L, 가격 : 460 - 회사명 : 농심, 제품명 : 백두산 백산수 2L, 가격 : 670 - 회사명 : 동원F&B, 제품명 : 동원샘물 2L, 가격 : 500 |
| :----------------------------------------------------------- |
| 평가기준                                                     |
| - 파이썬으로 문자열 처리와 크롤링을 활용하여 데이터 수집하고 처리하는 능력 - 파이썬을 이용한 정형 Data 처리 능력  - 파이썬의 다양한 함수 활용 능력 - 데이터 추출과 가공, 집약 능력 - SQL을 이용한 정형 Data 처리 능력  - NoSQL을 이용한 비정형 Data 처리능력  - 수집한 데이터 DB 와의 연동 및 구현 능력 |