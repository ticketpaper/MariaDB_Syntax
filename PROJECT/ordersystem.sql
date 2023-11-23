주문관리 서비스 설계

요구사항
1. 모든 테이블 컬럼 자유 설계
2. ordersystem 데이터베이스 설계
3. 해당 서비스에는 회원가입이 가능
    - members
    - 회원의 종류는 user, admin, seller로 구성
4. 회원 판매자(seller)는 상품과 재고수량을 등록
    - 상품명, 상품 가격, 재고
    - 누가 등록했는지에 대한 정보가 남아야 함에 유의 -> FK 걸어라
5. 회원(user)는 한꺼번에 여러 상품을 한꺼번에 주문 가능
    - order 테이블, order_details 테이블이 있어야함

필요 산출물
- ER다이어그램
- 릴레이셔널 스키마
- 테이블 생성문

-------------------------------------------------------------------------------------------------
