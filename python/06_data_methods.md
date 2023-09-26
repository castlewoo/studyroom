# 데이터 구조(Data Structure)
<데이터 분류>
- 순서가 있는 데이터 구조
  - 문자열
  - 리스트
  - 튜플
- 순서가 없는 데이터 구조
  - 셋
  - 딕셔너리
## 문자열(string)
### .find(x)
```
a = 'apple'
a.find('p')

1
```
### .index(x)
```
a = 'apple'
a.index('p')

1
```
`find는 문자열내에 없으면 -1 반환을 하지만, index는 오류가 발생`
### .startswith(x) , endswith(x)
```
a = 'hello sungwoo'
a.startswith('hello')

True

a.endswith('sungwoo')

True
```
`이외 is~ 시작하는 메서드들은 어떤 조건에 해당하는지 검증하는 역할`

|  |  |  |
|---|---|---|
|.isalpha()||문자열이 글자인가|
|.isspace()||문자열이 공백인가|
|.isupper()||문자열이 대문자인가|
|.istitle()||문자열이 타이틀 형식인가|
|.islower()||문자열이 소문자인가|
|.isdecimal()||문자열이 0~9까지의 수인가|
|.isdigit()||문자열이 숫자인가|
|.isnumeric()||문자열을 수로 볼 수 있는가|
### .replace(old, new[, count])
count를 지정하면 해당 갯수만큼
```
a = 'yaya!'
b = 'woooowoo'

print(a.replace('y', 'h'))
print(b.replace('o', '_', 2))

haha!
w__oowoo
```
### .strip([chars])
strip은 양쪽제거

lstrip은 왼쪽제거

rstrip은 오른쪽제거

### .split([chars])
```
a = 'a_b_c'
a.split('_')

['a', 'b', 'c']
```
붙어있는 문자열을 리스트로 하려면
```
'1234'.split('') => X

list('1234')

['1', '2', '3', '4']
```
### 'separator'.join()
```
word = '배고파'
words = ['안녕', 'hello']

'!'.join(word)
'배!고!파'

''.join(words)
'안녕hello'
```