# Sound AI Solution 예시 코드
Sound Ai Solution 예시 코드 github입니다.
자세한 사항은 AI 모델 도커 생성가이드를 참고하시길 바랍니다.

### 도커 빌드 방법
Dockerfile을 사용하여 컨테이너를 생성합니다.
```bash
source docker_upload.sh
```

### 모델 학습 및 평가 방법
models/dataset.json을 사용하여 모델 학습과 평가(test)를 수행합니다.
```bash
docker exec example_docker bash -c "source train_test.sh"
```

### 모델 평가만 수행
models/dataset_test.json을 사용하여 학습된 모델을 사용하여 평가만 수행합니다.
```bash
docker exec example_docker bash -c "source test.sh"
```

모델.zip 파일은 Dockerfile과 모델 소스파일인 source/ 폴더를 포함하여야 합니다.
source/ 폴더는 사용하실 모델 소스로 변경해주시고 환경에 맞게 Dockerfile을 작성하시면 됩니다.


