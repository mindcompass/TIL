```javascript
rs.slaveOk() # 세컨더리서버에서도 명령어를 실행할 수 있도록 하는 명령어


re.conf() 서버 상태파악
re.add()
```

## 장고

개발도구로 개발을 하는데 필요한것을 살짝 가져다 씀=> 라이브러리

큰 라이브러리로 개발되어서 대부분 그 안에스 수행함 => 프레임워크



```python
mkdir django
conda install django
django-admin  
django-admin startproject tutorial 
cd tutorial(프로젝트로 이동)
code . #해당 디렉토리에서 python을 실행하겠다


#vs code에서 수행
python manage.py startapp firstapp
python manage.py runserver

python manage.py makemigrations [compass]



```



![image-20200129133945157](mongo(0129).assets/image-20200129133945157.png)

![image-20200129141239659](mongo(0129).assets/image-20200129141239659.png)



연습문제1

프로젝트 ->second

앱 -> secondapp

URL -> /second/main

​       -> main! 출력



연습문제2

​	1.django의 모델기능을 활용하지 않고 pymysql 모듈을 활용

2. django의 모델 기능을 활용하는데, 기존 테이블명과 컬럼명을 수정
3. django의 모델 기능을 활용하는데, 기존 데이터를 새로 생성된 모델로 이관



![image-20200129173118435](mongo(0129).assets/image-20200129173118435.png)

![image-20200129173807332](mongo(0129).assets/image-20200129173807332.png)