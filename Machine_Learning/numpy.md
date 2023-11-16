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