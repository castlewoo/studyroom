# 데이터 전처리

## 데이터 생성
1. 요약변수
    - 수집된 정보를 분석의 목적에 맞게 종합한 변수
    - 많은 모델에 공옹으로 사용될 수 있어, 재활용성 높음
    - ex) 단어빈도, 상품별 구매 금액, 상품별 구매량, 영화매출액
2. 파생변수
    - 특정한 의미를 갖는 작위적 정의에 의한 변수
    - 매우 주관적이므로 논리적 타당성 필요
    - ex) 구매상품 다양성, 가격 선호대, 라이프 스타일, 영화 인기도

## 데이터 정제
1. 결측값 이해
   - 기록누락, 미응답, 수집오류 등
   - 결측값 포함된 자료여도 나머지 변수 값들은 의미가 있는 정보이므로, 정보의 손실을 최소화 해야한다.
2. 결측값 처리
    - 완전제거법 : 결측값 하나 이상 포함된 자료를 제거
    - 평균대체법 : 결측값을 나머지 값들의 평균으로 대처
    - 핫덱대체법 : 결측값이 발생한 관찰치와 유사한 특성을 가진 다른 관찰치의 정보를 이용하여 대체
    - Regression imputation, KNN imputation etc... 
----
1. 이상값의 이해
    - 이상값은 다른 데이터와 동떨어진 것
    - 다른 자료값들에 비해 멀리 떨어져 있지만 의미가 있을수도 있다.
2. 이상값 탐지
    - 상자그림 : Q1 - 1.5 * IQR과 Q3 + 1.5 * IQR의 범위를 넘어가는 것
    - 표준화 점수(Z-score) : Z-score의 절대값이 2,3보다 큰 경우
3. 이상값 처리
    - 이상값 제외 : 처리는 간단하지만, 추정량 왜곡 발생가능
    - 이상값 대체 : 정상값 중 최대 또는 최소 등으로 대체
    - 변수 변환 : 자료 전체에 로그변환, 제곱근 변환 등을 적용
----
연속형 자료의 범주화
  - 변수구간화 : 연속형 변수를 구간을 이용하여 범주화
    - 이상치 문제를 완화
    - 결측치 처리 방법으로도 가능
    - 관계가 단순화 되어 과적합 방지

## 데이터 변환
- 자료 변환을 통해 해석을 쉽고 풍부하게 하기 위한 과정
- 데이터 변환 목적
  - 분포의 대칭화
  - 산포를 비슷하게 하려고
  - 변수 간 관계를 단순하게 하기 위해

1. 변환유형
    - 제곱근 변환 : 왼쪽 꼬리로 길어진다(데이터가 오른쪽으로 치우쳐 있을때)
    - 제곱 변환 : 오른쪽 꼬리로 길어진다(데이터가 왼쪽으로 치우쳐 있을때)
2. 변환유형
    - 지수 변환 : 왼쪽 꼬리로 길어진다(데이터가 오른쪽으로 치우쳐 있을때)
    - 로그 변환 : 오른쪽 꼬리로 길어진다(데이터가 왼쪽으로 치우쳐 있을때)
3. 박스콕스 변환

## 데이터 결합
1. 이너조인 : 두 테이블 키가 공통으로 존재하는 레코드만 결합(교집합)
2. 풀아우터조인 : 두 테이블 중 어느 한쪽이라도 존재하는 키에 대한 레코드를 모두 결합(합집합)
3. 레프트 조인 : 왼쪽 테이블에 존재하는 키에 대한 레코드를 결합
4. 라이트 조인 : 오른쪽 테이블에 존재하는 키에 대한 레코드를 결합