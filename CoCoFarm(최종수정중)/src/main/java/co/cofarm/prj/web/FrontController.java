package co.cofarm.prj.web;

import java.io.IOException;





import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.QnA.command.QnaInput;
import co.cofarm.prj.QnA.command.QnaInputForm;
import co.cofarm.prj.QnA.command.QnaList;
import co.cofarm.prj.QnA.command.QnaReplyInput;
import co.cofarm.prj.QnA.command.QnaReplyInputForm;
import co.cofarm.prj.QnA.command.QnaReplyList;
import co.cofarm.prj.QnA.command.QnaReplySelect;
import co.cofarm.prj.QnA.command.QnaSelect;
import co.cofarm.prj.bag.command.BagList;
import co.cofarm.prj.bag.command.bagInsert;
import co.cofarm.prj.bag.command.bagItemInput;
import co.cofarm.prj.bag.vo.Complete;
import co.cofarm.prj.board.command.Board;
import co.cofarm.prj.board.command.BoardDelete;
import co.cofarm.prj.board.command.BoardDetail;
import co.cofarm.prj.board.command.BoardUpdate;
import co.cofarm.prj.board.command.BoardUpdateForm;
import co.cofarm.prj.board.command.BoardWrite;
import co.cofarm.prj.board.command.BoardWriteForm;
import co.cofarm.prj.board.command.BordSearch;
import co.cofarm.prj.boardreply.command.BordReplyDelete;
import co.cofarm.prj.boardreply.command.BordReplyInsert;
import co.cofarm.prj.boardreply.command.BordReplyUpdate;
import co.cofarm.prj.buyItem.command.OrderList;
import co.cofarm.prj.common.Command;
import co.cofarm.prj.customer.command.CustomerIdCheck;
import co.cofarm.prj.customer.command.CustomerJoin;
import co.cofarm.prj.customer.command.CustomerJoinForm;
import co.cofarm.prj.customer.command.CustomerList;
import co.cofarm.prj.customer.command.CustomerLogin;
import co.cofarm.prj.customer.command.CustomerLoginForm;
import co.cofarm.prj.customer.command.AjaxcustomerList;
import co.cofarm.prj.customer.command.CustomerUpdate;
import co.cofarm.prj.customer.command.CustomerUpdateForm;
import co.cofarm.prj.customer.command.KakaoLogin;
import co.cofarm.prj.customer.command.PasswordFindForm;
import co.cofarm.prj.customer.command.passwordFind;
import co.cofarm.prj.farmer.command.FarmerAcceptList;
import co.cofarm.prj.farmer.command.FarmerJoin;
import co.cofarm.prj.farmer.command.FarmerJoinForm;
import co.cofarm.prj.farmer.command.FarmerUpdate;
import co.cofarm.prj.farmer.command.FarmerUpdateForm;
import co.cofarm.prj.farmer.command.PlaceInsertFrm;
import co.cofarm.prj.farmer.command.farmerAccept;
import co.cofarm.prj.main.Logout;
import co.cofarm.prj.main.MainCommand;
import co.cofarm.prj.maina.Contact;
import co.cofarm.prj.market.common.MarketDetail;
import co.cofarm.prj.market.common.MarketInsert;
import co.cofarm.prj.market.common.MarketInsertFrm;
import co.cofarm.prj.market.common.MarketList;
import co.cofarm.prj.mypage.command.CustomerMypage;
import co.cofarm.prj.mypage.command.MyInfo;
import co.cofarm.prj.mypage.command.farmerMypage;
import co.cofarm.prj.people.command.ConsumerReview;
import co.cofarm.prj.people.command.farmerReview;
import co.cofarm.prj.place.command.PlaceDelete;
import co.cofarm.prj.place.command.PlaceDetail;
import co.cofarm.prj.place.command.PlaceInsert;
import co.cofarm.prj.place.command.PlaceList;
import co.cofarm.prj.place.command.PlaceUpdate;
import co.cofarm.prj.place.command.PlaceUpdateForm;
import co.cofarm.prj.place.command.placeDetailFarmer;
import co.cofarm.prj.product.command.ForAlert;
import co.cofarm.prj.product.command.InputProduct;
import co.cofarm.prj.product.command.InputProductForm;
import co.cofarm.prj.product.command.ProductClassList;
import co.cofarm.prj.product.command.ProductList;
import co.cofarm.prj.product.command.ProductSelect;
import co.cofarm.prj.review.command.CustomerCheck;
import co.cofarm.prj.review.command.InputReview;
import co.cofarm.prj.review.command.InputReviewForm;
import co.cofarm.prj.review.command.ReviewList;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private HashMap<String, Command> map = new HashMap<String, Command>();
       
    public FrontController() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		System.out.println("연결");
		map.put("/main.do", new MainCommand());
		map.put("/contact.do", new Contact());
		
		/** 로그인 회원가입 회원정보 수정 **/
		//일반 회원 회원가입, 로그인, 아이디 중복체크
		map.put("/customerJoinForm.do", new CustomerJoinForm()); //일반 회원가입 폼
		map.put("/customerJoin.do", new CustomerJoin()); // 회원가입 처리
		
		map.put("/customerLoginForm.do", new CustomerLoginForm()); //회원로그인 폼
		map.put("/customerLogin.do", new CustomerLogin()); //일반회원 로그인 처리
		map.put("/customerIdCheck.do", new CustomerIdCheck()); //일반회원 아이디 중복체크
		map.put("/logout.do", new Logout()); //로그아웃
		
		//카카오 로그인
		map.put("/kakaoLogin.do", new KakaoLogin()); //카카오 자동로그인
		
		//비밀번호 메일보내기
		map.put("/passwordFindForm.do", new PasswordFindForm()); //패스워드 찾기 아이디입력!
		map.put("/passwordFind.do", new passwordFind()); //메일보내기
		
		// 마이페이지 정보수정 (고객, 농장)
		map.put("/customerMypage.do", new CustomerMypage()); //일반회원 마이페이지
		map.put("/myInfo.do", new MyInfo()); //마이페이지 가서 비밀번호 입력 후 뜨는 내 정보페이지
		map.put("/farmerMypage.do", new farmerMypage());
		map.put("/customerProduct.do", new ConsumerReview()); //고객 주문목록보기
		
		//일반회원정보 수정
		map.put("/customerUpdateForm.do", new CustomerUpdateForm()); //회원정보 수정
		map.put("/customerUpdate.do", new CustomerUpdate()); //일반회원 수정
		//농장등록, 농장정보 수정
		map.put("/farmerJoinForm.do", new FarmerJoinForm()); //농업인 등록 폼
		map.put("/farmerJoin.do", new FarmerJoin()); //농업인 회원가입
		map.put("/farmerUpdateForm.do", new FarmerUpdateForm()); //농장정보 수정폼
		map.put("/farmerUpdate.do", new FarmerUpdate()); //농장정보 수정처리
		
		// 관리자만 볼 수 있는 마이페이지 -회원리스트
		map.put("/allList.do", new CustomerList()); //첫 들어가면 리스트 전체회원
		map.put("/ajaxcustomerList.do", new AjaxcustomerList());//라디오 클릭 시 분류 
		
		//관리자만 볼 수 있는 농업인 승인페이지
		map.put("/farmerAcceptList.do", new FarmerAcceptList()); //승인대기 리스트
		map.put("/farmerAccept.do", new farmerAccept()); //승인 (권한 업데이트)
		
		/** 게시판 관련 **/
		//게시글 파트
		map.put("/board.do", new Board());
		map.put("/boardwriteform.do", new BoardWriteForm());
		map.put("/boardWrite.do", new BoardWrite());
		map.put("/boarddetail.do", new BoardDetail());
		map.put("/boarddelete.do", new BoardDelete());
		map.put("/boardupdateform.do", new BoardUpdateForm());
		map.put("/boardUpdate.do", new BoardUpdate());
		map.put("/bordSearch.do", new BordSearch());
				
		//게시글 댓글 파트
		map.put("/boardreplyinsert.do", new BordReplyInsert());
		map.put("/boardreplydelete.do", new BordReplyDelete());
		map.put("/boardreplyupdate.do", new BordReplyUpdate());
		
		/** 상품 관련 **/
		//상품 파트
		map.put("/inputProductForm.do", new InputProductForm()); //상품등록폼
		map.put("/inputProduct.do", new InputProduct()); //상품등록
		map.put("/productList.do",new ProductList()); //상품 전체보기
		map.put("/productClassList.do", new ProductClassList()); //상품 분류 전체보기 -
		map.put("/productSelect.do", new ProductSelect()); //상품 상세보기 
		map.put("/inputReviewForm.do", new InputReviewForm()); //리뷰쓰기폼
		map.put("/inputReview.do", new InputReview()); //리뷰 db에 등록
		map.put("/reviewList.do", new ReviewList()); //상세페이지에서 리뷰 리스트 보기 !
		map.put("/qnaInputForm.do", new QnaInputForm());//qna작성 폼
		map.put("/qnaInput.do", new QnaInput()); //qna db등록
		map.put("/qnaReplyInputForm.do", new QnaReplyInputForm()); //qna 답변 작성 폼
		map.put("/qnaReplyInput.do", new QnaReplyInput()); //qna 답변 db저장
		map.put("/qnaList.do", new QnaList()); //상세페이지에서 qna보기
		map.put("/qnaReplyList.do", new QnaReplyList());//q)na답글 보기
		map.put("/qnaSelect.do", new QnaSelect()); //qna한건 
		map.put("/customerCheck.do", new CustomerCheck()); //리뷰쓰기전에 구매 이력 확인

		map.put("/qnaReplySelect.do", new QnaReplySelect()); //qna 답글보기
		map.put("/forAlert.do", new ForAlert()); //상품 입력 성공시 성공했다는 alert창 띄우기
		/** 주문, 결제 관련 **/
		//결제파트
		map.put("/bagList.do", new BagList());//장바구니
		map.put("/order.do", new OrderList());//결제폼 
		map.put("baginsert.do", new bagInsert());// 장바구니등록(db)
		map.put("/complete.do", new Complete()); //결제완료
		map.put("/bagItemInput.do", new bagItemInput());
		map.put("/customerList.do", new ConsumerReview()); //고객 주문목록보기
		map.put("/farmerItem.do", new farmerReview()); // 농부 들어온 주문목록 보기
		
		//직거래장터보기
		map.put("/marketList.do", new MarketList()); //직거래리스트보기
		map.put("/marketInsertFrm.do", new MarketInsertFrm()); //직거래 추가
		map.put("/marketInsert.do", new MarketInsert()); //직거래 추가
		map.put("/marketDetail.do", new MarketDetail());
				
		//농장정보보기
		map.put("/placeInsertFrm.do", new PlaceInsertFrm());
		map.put("/placeInsert.do", new PlaceInsert());
		map.put("/placeList.do", new PlaceList());
		map.put("/placeDetail.do", new PlaceDetail());
		map.put("/placeDetailFarmer.do", new placeDetailFarmer());
		map.put("/placeUpdateForm.do", new PlaceUpdateForm());
		map.put("/placeUpdate.do", new PlaceUpdate());
		map.put("/placeDelete.do", new PlaceDelete());

	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 한글 깨짐 방지
		String uri = request.getRequestURI(); // 요청한 URI를 구함
		String contextPath = request.getContextPath(); // 루트를 구함, contextPath 구함
		String page = uri.substring(contextPath.length()); // 실제 수행할 요청을 구함
		
		Command command = map.get(page); // init 메소드에서 수행할 명령을 가져온다. map의 키값을 가져오면 그에 맞는 값을 들고온다.
		//Command command = new MainCommand();, 위에 코드가 실행이 될 경우 초기화하는 것과 같다.
		String viewPage = command.exec(request, response); // 명령을 수행하고 결과를 돌려받음
		
		// viewResolve파트, 어느페이지에 보여줄지 뷰를 찾는다. 돌아갈 곳을 찾아주는 것
		// 리턴되는 문자열에서 마지막에 .do가 포함되어 있지 않다면
		// 서버에서 접근할 수 있도록 설정
		if(!viewPage.endsWith(".do") && viewPage != null) {
			// ajax 처리 : 요청한 페이지로 돌아오는 곳
			if(viewPage.startsWith("ajax:")){
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			}
			// 타일즈 돌아가는 곳
			if(!viewPage.endsWith(".tiles")) {
				viewPage = "/WEB-INF/views/" + viewPage + ".jsp"; //tiles를 안태움
			}
			
			// 뷰를 찾아서 Dispatcher하기
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response); // dispatcher로 하면 요청을 하면서 값을 그대로 전달받아 req, resp을 함께 가져간다., 내가 하기 싫은 것을 값과 함께 전달
		} else {
			response.sendRedirect(viewPage); // *.do로 들어올때 돌아가는 곳 -> 권한을 위임하는데 새로 req와 resp가 생성이 되어 새로운 요청만 실행, viewpage만 돌려주세요., .do로 들어오면 다시 명령어 실행 
		}
	}

}
