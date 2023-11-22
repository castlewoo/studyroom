# 넘파이 numpy

## ndarray: N차원(Dimension) 배열(Array) 객체
- 1차원 배열 : [1, 2, 3, 4]
- 2차원 배열 : [[1, 2, 3, 4], [5, 6, 7, 8]] -> 1차원이 여러개
- 3차원 배열 : [[[]], [[]]] -> 2차원이 여러개
  
## ndarray 생성
- Numpy 모듈의 array()함수로 생성
- 인자로 주로 파이썬 list 또는 ndarry 입력
```py
array1 = np.array([1, 2, 3])
array2 = np.array([[1, 2, 3], [4, 5, 6]])
```

|array|차원|Shape|
|---|---|---|
[1, 2, 3]|1차원|(3,)|
|[[1,2,3],[4,5,6]]|2차원|(2,3)(행,열)
ndarray의 shape은 ndarray.shape 속성으로, 차원은 ndarray.ndim 속성으로

## ndarray 타입(type)
- ndarray내의 데이터 값은 숫자, 문자열, 불 등 모두 가능
- **ndarray내의 데이터 타입은 특성상 같은 데이터 타입만 가능**(int와 float 함께 있을 수 없다)
- 데이터 타입은 **ndarray.dtype**으로 확인

### ndarray 타입(type) 변환
- 변경할 타입을 **astype()**에 인자로 입력
- 메모리 절약을 위해 사용  
- 대용량 데이터 다룰 시 형변환을 고려
- ex) array1d.astype('int32')

### numpy ndarra의 axis 축
- ndarry는 행, 열, 높이 단위가 아니라 axis0, axis1, axis2 와 같이 부여

ndarry를 편하게 생성하기
```py
- np.arange(10)
- np.zeros((3, 2), dytpe = 'int32')
np.ones((3, 2))
```
ndarray의 차원과 크기를 변경하는건 reshape()

- reshape(-1, 5)처럼 -1이 들어가면 뒤에 값에 의해 알아서 변환시켜 준다.
```py
array1d = [0, 1, 2, 3, 4]
array1d.reshape(-1, 1) # 하면 2차원으로 변환하되 컬럼 axis 크기가 1로 고정
shape은 (5,1)          # [[0], [1], [2], [3], [4]]

array2d = [[0], [1], [2], [3], [4]]
array2d.reshape(-1, ) # 1차원으로 변환
shape은 (5,)          # [0, 1, 2, 3, 4]
```

### 인덱싱(Indexing)
- 특정 위치의 단일값 추출
- 슬라이싱 : 연속된 인덱스상의 ndarray를 추출
- 팬시 인덱싱 : 리스트나 ndarray로 인덱스 집장을 지정하면 해당 위치의 인덱스에 해당하는 ndarray를 반환
- **불린 인덱싱** : 조건에 해당하는지 여부인 True/False 값 인덱싱 합을 기반으로 True해당되는 위치를 추출

```py
# 불린 인덱싱 x
array1d = np.arange(start = 1, stop = 10)
target = []

for i in range(0, 9) :
    if array1d[i] > 5 :
        target.append(array1d[i])
array_selected = np.array(target)

# 불린 인덱싱 O
array1d = np.arange(start = 0, stop = 10)
array1d[array1d>5]

```

### sort()
- np.sort(ndarray) : 인자로 들어온 원 행렬은 그대로 유지한 채 원 행렬의 정렬된 행렬을 반환
- ndarray.sort()는 원 행렬 자체를 정렬한 형태로 변환하며 반환 값은 None
- 기본적으로 오름차순 정렬
- 내림차순은 np.sort()[::-1]와 같이 사용

### argsort()
- 원본 행렬 정렬 시 정렬된 행렬의 원래 인덱스를 필요로 할 때 np.argsort()

### np.dot(A, B), np.transpose()

## numpy summary
1. 넘파이는 머신러닝을 구성하는 핵심 기반
2. 넘파이 api는 매우 넓은 범위
3. 2차원 데이터라면 데이터 가공을 위해서 넘파이보단 판다스를 추천