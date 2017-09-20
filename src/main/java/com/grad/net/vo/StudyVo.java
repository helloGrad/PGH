package com.grad.net.vo;


public class StudyVo {
	
	
	//연구분야 , 학문 리스트 가져오기 
	
	private Long slctnNotiNo;
	private Long orgnzNo;
	private String slctnNotiDstnct;
	private String cNm;
	private String pCdNm;
	
	//모집공고 , 상담실글 
	private Long wrtbtNo;
	private String wrtbtText;
	private Long bbsNm;
	private String wrtbtTitle;
	private String avlblBeginDt;
	private String storgPath;
	public Long getSlctnNotiNo() {
		return slctnNotiNo;
	}
	public void setSlctnNotiNo(Long slctnNotiNo) {
		this.slctnNotiNo = slctnNotiNo;
	}
	public Long getOrgnzNo() {
		return orgnzNo;
	}
	public void setOrgnzNo(Long orgnzNo) {
		this.orgnzNo = orgnzNo;
	}
	public String getSlctnNotiDstnct() {
		return slctnNotiDstnct;
	}
	public void setSlctnNotiDstnct(String slctnNotiDstnct) {
		this.slctnNotiDstnct = slctnNotiDstnct;
	}
	public String getcNm() {
		return cNm;
	}
	public void setcNm(String cNm) {
		this.cNm = cNm;
	}
	public String getpCdNm() {
		return pCdNm;
	}
	public void setpCdNm(String pCdNm) {
		this.pCdNm = pCdNm;
	}
	public Long getWrtbtNo() {
		return wrtbtNo;
	}
	public void setWrtbtNo(Long wrtbtNo) {
		this.wrtbtNo = wrtbtNo;
	}
	public String getWrtbtText() {
		return wrtbtText;
	}
	public void setWrtbtText(String wrtbtText) {
		this.wrtbtText = wrtbtText;
	}
	public Long getBbsNm() {
		return bbsNm;
	}
	public void setBbsNm(Long bbsNm) {
		this.bbsNm = bbsNm;
	}
	public String getWrtbtTitle() {
		return wrtbtTitle;
	}
	public void setWrtbtTitle(String wrtbtTitle) {
		this.wrtbtTitle = wrtbtTitle;
	}
	public String getAvlblBeginDt() {
		return avlblBeginDt;
	}
	public void setAvlblBeginDt(String avlblBeginDt) {
		this.avlblBeginDt = avlblBeginDt;
	}
	public String getStorgPath() {
		return storgPath;
	}
	public void setStorgPath(String storgPath) {
		this.storgPath = storgPath;
	}
	@Override
	public String toString() {
		return "StudyVo [slctnNotiNo=" + slctnNotiNo + ", orgnzNo=" + orgnzNo + ", slctnNotiDstnct=" + slctnNotiDstnct
				+ ", cNm=" + cNm + ", pCdNm=" + pCdNm + ", wrtbtNo=" + wrtbtNo + ", wrtbtText=" + wrtbtText + ", bbsNm="
				+ bbsNm + ", wrtbtTitle=" + wrtbtTitle + ", avlblBeginDt=" + avlblBeginDt + ", storgPath=" + storgPath
				+ "]";
	}

	
	
	
	
	
	
	
	
	
	
}