# 연산자

|연산자|내용|
|---|---|
|+|덧셈|
|-|뺄셈|
|*|곱셈|
|/|나눗셈|
|//|몫|
|%|나머지|
|**|거듭제곱|
-----------------------

`나눗셈(/)은 항상 float으로 돌려준다.`

`정수 결과를 얻으려면 // 연산자 사용`

example)

2 ** 5 => 32

4 / 2 , 5 / 2 => (2.0, 2.5)

4 // 2, 5 // 2 => (2, 2)

143 % 7 => 3


# 비교 연산자

|연산자|내용|
|---|---|
|<|미만|
|<=|이하|
|>|초과|
|>=|이상|
|==|같음|
|!=|같지않음|
|is|객체 아이덴티티|
|is not|부정된 객체 아이텐티티|

example)

5 > 2 -> True

4 >= 4 -> True

3 < 1 -> False

3 <= 2 -> False

10 != 8 -> True

'asdf' == 'asdf' -> True

# 논리 연산자

|연산자|내용|
|---|---|
|a and b|a와 b 모두 True시만 True|
|a or b|a와 b 모두 False시만 False|
|not a|True -> False, False -> True|

`and는 a가 거짓이면 a를 리턴, 참이면 b를 리턴`
`or은 a가 참이면 a를 리턴, 거짓이면 b를 리턴`

--------------------------
# 복합 연산자

|연산자|내용|
|---|---|
|a += b|a = a + b|
|a -= b|a = a - b|
|a *= b|a = a * b|
|a /= b|a = a / b|
|a //= b|a = a // b|
|a %= b|a = a % b|
|a **= b| a = a ** b|

example)

a = 1

a = a + 1

a += 1

-----

area_fr = '나주 배'

fr = '배'

fr in area_fr => True