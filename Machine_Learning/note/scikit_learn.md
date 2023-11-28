# scikit-learn

### 지도학습 - 분류
- 분류는 대표적인 지도학습
- 학습을 위한 피처와 분류 결정값인 레이블 데이터로 모델 학습
- 테스트 데이터 세트에서 레이블을 예측
- 명확한 정답이 주어진 데이터를 먼저 학습한 뒤, 예측하는 방식
- 데이터 세트 분리 -> 모델 학습 -> 예측 수행 -> 평가

### Estimator와 fit(), predict()
1. 분류 클래스
    - DecisionTreeClassifier
    - RandomForestClassifier
    - GradientBoostingClassifier
    - GaussianNB
    - SVC
2. 회귀 클래스
    - LinearRegression
    - Ridge
    - Lasso
    - RandomForestRegressor
    - GradientBoostingRegressor

### 학습 데이터와 테스트 테이터
1. 학습 데이터
    - 알고리즘의 학습을 위해 사용
    - 데이터의 속성과 결정값 모두 갖고 있다
    - 학습 데이터 기반으로 알고리즘이 결정갑의 패턴을 인지하고 학습
2. 테스트 데이터
    - 속성 테이터만 있다
    - 테스트 데이터는 학습 데이터와 별도의 데이터 세트로 제공
3. train_test_split()
    - test_size : 전체 데이터에서 테스트 데이터 크기를 지정하는것. 디폴트 값은 0.25
    - train_size : test_size를 설정하기 때문에 잘 사용하진 X
    - shuffle : 분리하기 전에 미리 섞을지 결정. 디폴트 값은 True. 분산시켜서 좀 더효율적인 학습
    - random_state : 호출할 때마다 데이터 세트를 생성하기 위해 주어지는 난수 값. train_test_split()는 호출시 매번 바뀌기 때문에 지정하면 좋다

### 교차 검증
학습 데이터를 다시 분할하여 학습 데이터와 학습된 모델의 성능을 일차 평가하는 검증 데이터로 나누는 것.

#### K 폴드 교차 검증
- k = 5일 경우 : 총 5개의 폴드 세트에 5번의 학습과 검증 평가 반복 수행
- 교차 검증 최종 평가 = 평균
1. 일반 K 폴드
2. Stratified K 폴드
    - 불균형한 분포도를 가진 레이블 데이터 집합을 위한 방식
    - 학습 검증 데이터 세트가 가지는 레이블 분포도가 유사하도록 검증 데이터 추출

### cross_val_score() 함수로 폴드 세트 추출, 학습 예측, 평가를 한번에 수행
- cross_val_score(estimator, X, y = None, scoring = None, cv = None, n_jobs = 1, verbose = 0, fit_params = None, pre_dispatch = '2*n_jobs')

### GridSearchCV - 교차 검증과 최적 하이퍼 파라미터 튜닝을 한번에
- grid_parameters = {'max_depth' : [1, 2, 3], 'min_samples_split' : [2, 3]}

---
## 데이터 전처리(preprocessing)
- 데이터 클린징
- 결손값 처리(Null/NaN 처리)
- 데이터 인코딩(레이블, 원-핫 인코딩)
- 데이터 스케일링
- 이상치 제거
- Feature 선택, 추출 및 가공

### 데이터 인코딩
- 머신러닝 알고리즘은 문자열 데이터 속성을 입력 받지 않기 때문에 모든 데이터는 숫자형으로 표현
1. 레이블 인코딩 : 숫자값으로 변환되면 큰 숫자가 결과에 이상을 줄 수 있다.
    - LabelEncoder 클래스
    - fit()과 transform() 이용
2. 원-핫 인코딩 : 새로운 피처를 추가해 해당하는 컬럼에만 1을 표시하고 나머지에는 0을 표시하는 방식
    - OneHotEncoder 클래스
    - fit()과 transform() 이용하고 다시 toarray() 적용
    - pd.get_dummies(DataFrame) 사용

## 피처 스케일링
- 표준화는 데이터의 피처 각각이 평균이 0이고 분산이 1인 가우시안 정규 분포를 가진 값으로 반환하는 것
- 정규화는 서로 다른 피처의 크기를 통일하기 위해 크기를 변환
- StandardScaler, MinMaxScaler