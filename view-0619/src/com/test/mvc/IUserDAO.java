package com.test.mvc;

import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IUserDAO
{
	
	// 로그인/회원가입(민지) ===========================================================================
	
	public UserDTO login(@Param("user_id") String user_id, @Param("user_pw") String user_pw);
	
	// 아이디 찾기
	//public UserDTO findId(@Param("user_name") String user_name, @Param("user_tel") String user_tel);
	public UserDTO findId(String user_name, String user_tel);
	
	// 회원등록 메소드
	public int add(UserDTO dto) throws SQLException;
	
	// ========================================================================== 로그인/회원가입(민지)
	
	
	
	public Integer monthInTot(UserDTO dto);		// 값 null 인 경우 0원으로 출력해야함
	public Integer monthOutTot(UserDTO dto);
	public Integer nowRemain(UserDTO dto);
	
	public Integer allInAvg(UserDTO dto);		// 내 전체 수입 평균
	public Integer allOutAvg(UserDTO dto);		// 내 전체 지출 평균
	public Integer similarInAvg(UserDTO dto);	// 비슷한 이용자 수입 평균
	public Integer similarOutAvg(UserDTO dto);	// 비슷한 이용자 지출 평균
	
	public Integer pigTotCount(UserDTO dto);	// 머니리뷰 기준 - 4달간 카운트 현황
	public Integer pigMonthCount(UserDTO dto);	// 머니리뷰 기준 - 한달 카운트 현황
	
	// public Integer pigCount(UserDTO dto);
	// public int pastRemain();
	// public int dayInTot();
	// public int dayOutTot();

	
	
	
	public ArrayList<UserDTO> monthInList(UserDTO dto);
	public ArrayList<UserDTO> monthOutList(UserDTO dto);
	public ArrayList<UserDTO> dayInoutList(UserDTO dto);
	
	public ArrayList<UserDTO> inoutCateList();
	
	public ArrayList<UserDTO> fstCateList(String inoutCd);
	
	
	
	// public ArrayList<UserDTO> fstCateList(UserDTO dto);
	// public List<UserDTO> getList();
	// public UserDTO getName();
	
	// 마이페이지(현지)  ================================================================================

	// 내 게시글 목록 확인
	public ArrayList<UserDTO> myPostList(UserDTO dto);
	
	// 내 댓글 목록 확인
	public ArrayList<UserDTO> myCmntList(UserDTO dto);
	
	// 내 문의글 목록 확인
	public ArrayList<UserDTO> myQnaList(UserDTO dto);
	
	// 정보 수정/변경 위한 비밀번호 확인 (user_pw)받아서 확인 
	public UserDTO myCheckPw(UserDTO dto);
	
	// 내 정보에서 전화번호 변경(업데이트)
	// public int telModify(UserDTO dto);
	
	// 회원 활용정보 단건 조회
	public UserDTO myPlusInfo(UserDTO dto);
		
	// 내 정보에서 활용정보 변경(업데이트)
	public int plusModify(UserDTO dto);
	
	// 수정된 내정보 확인
	public UserDTO myInfoCheck(UserDTO dto);
	
	// 비밀번호 변경(업데이트)
	public int pwModify(UserDTO dto);
	
	// 탈퇴 시 이용자 기본 정보 테이블에서 삭제(딜리트)
	public int leave(UserDTO dto);
	
	// 탈퇴 시 백업 테이블에 등록(인서트)
    public int userBackUp(UserDTO dto);
	
	
	
}
