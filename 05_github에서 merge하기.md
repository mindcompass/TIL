## github에서 master와  branch를 merge하기

master 외 branch를 만들어 버전을 관리할 경우 추후 merge를 통해 작업 파일을 결합할 필요가 있습니다.  

물론 개인 pc의 git batch 프로그램에서 merge를 작업할 수 있지만, 해당 작업을 github에서 작업할 수도 있습니다. 

master와 branch이 동시에 존재하고 각각의 commit을 수행하고 push를 통해 github에 저장하면 해당 Repository에는 아래처럼 **Compare & pull request**  버튼이 형성되는 것을 볼 수 있습니다. 

Merge를 수행할 경우 해당 버튼을 클릭합니다. 

![Imgur](https://i.imgur.com/4HuAY1m.png)



그러면 아래 그림처럼 base가 되는 브랜치(여기서는 master)에 포함될 브랜치(여기서는 new)가 표시되고 권한이 있는 담당자에게 Merge에 대한 요청을 하게 됩니다. 

여기서 pull은 Merge를 의미하신다고 생각하면 됩니다.

![Imgur](https://i.imgur.com/ho1Gfnr.jpg)



결과적으로 Merge에 권한이 있는 사람이 해당 해당 요청사항을 검토하고 두 branch의 병합에 conflict가 발생하는지를 파악합니다. 

최종적으로 아래 버튼을 통해 Merge를 수행하면 두 branch가 결합됩니다. 



![Imgur](https://i.imgur.com/1ZpSACw.jpg)

다음은 여러가지 Merge를 수행하는 상황에 대한 내용을 정리하겠습니다.