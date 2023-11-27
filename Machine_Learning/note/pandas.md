# 판다스(pandas)
- 일반적으로 대부분의 데이터 세트는 2차원 데이터(행X열로 구성)

## 판다스 주요 구성 요소
- DataFrame : 행 열 2차원 데이터 셋
- Series : 열 값으로만 구성된 1차원(컬럼명이 없을때)
- Index : DataFrame/Series의 고유한 key값 객체

### 기본 API
- read_csv()
- head()
- shape
- info()
- describe()
- value_counts()
- sort_values()

---
### DataFrame과 리스트, 딕셔너리, 넘파이 ndarray 상호 변환
|변환 형태|설명|
|---|---|
|list -> DataFrame|df_list1 = pd.DataFrame(list, columns = col_name1)
|ndarray -> DataFrame|df_array2 = pd.DataFrame(array2, columns = col_name2)
|dict -> DataFrame|dict = {'col1':[1,11]}, df_dict = pd.DataFrame(dict)
|DataFrame -> ndaaray| DF.values
|DataFrame -> list|DF.values.tolist()
|DataFrame -> dict| to_dict()

### DataFrame 데이터 삭제
DataFrame의 drop()

DataFrame.drop(labels = None, axis = 0, index = None, columns = None, level = None, inplace = False, errors = 'raise')
- axis : 로우를 삭제할 때는 axis = 0, 컬럼을 삭제할 때는 axis = 1
- 원본 DataFame은 유지하고 드롭된 DataFrame을 새롭게 객체 변수로 받으려면 inplace = False
- 원본 DataFrame에 적용할 때는 inplace = True
- 

### pandas index
- RDBMS의 pk와 유사하게 DataFrame, Series의 레코드를 고유하게 식별하는 객체
- 연산 함수를 적용할 때 index는 연산에서 제외. 오직 식별용
- index 객체만 추출하려면 DataFrame.index or Series.index 속성
- 반드시 숫자형이 아니어도 되며, 고유한 값 유지 할 수 있다면 문자형/Datetime도 가능
- rest_index() 수행하면 새롭게 인덱스를 연속 숫자 형으로 할당, 기존 인덱스는 index라는 새로운 컬럼 명으로 추가

### DataFrame 인덱싱 및 필터링
1. [ ]
    - 컬럼 기반 필터링 또는 불린 인덱싱 필터링 제공
2. loc[], iloc[]
    - 명칭/위치 기반 인덱싱 제공
3. 불린 인덱싱
    - 조건식에 따른 필터링을 제공

### DataFrame의 정렬 - sort_values()
- by 인자로 정렬하고자 하는 컬럼값을 받고 정렬, 오름차순이 기본이며 ascending = True, 내림차순은 False

### 집합 연산 수행 - Aggregation
- sum(), max(), count(), mean()은 DataFrame에서는 Aggregation연산을 수행

### DataFrame Group By
- Group by 연산을 위해 groupby()
- by 인자로 group by하려는 컬렴명을 받으면 DataFrameGroupBy 객체를 반환

### 결손 데이터 처리하기
- isna() : NaN인지 True/False 값을 반환
- fillna() : Missing 데이터를 인자로 주어진 값으로 대체

### apply lambda 데이터 가공
- apply 함수에 lambda 식을 결합해 DataFrame의 레코드별로 데이터를 가공
- ex) df['name_len'] = df['name'].apply(lambda x : len(x))
- 여러값이 들어오면 map()