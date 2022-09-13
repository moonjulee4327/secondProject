package kr.or.ddit.app.acm.vo;

import java.util.Date;

public class AcommodationVO {

	private int acmId;
	private String acmNm;
	private String acmSe;
	private String Addr;
	private int Price;
	private int Qty;
	private Date acmRd;
	private String Writer;
	private long AcmAtchFileId = -1;
	
	public int getAcmId() {
		return acmId;
	}
	public void setAcmId(int acmId) {
		this.acmId = acmId;
	}
	public String getAcmNm() {
		return acmNm;
	}
	public void setAcmNm(String acmNm) {
		this.acmNm = acmNm;
	}
	public String getAcmSe() {
		return acmSe;
	}
	public void setAcmSe(String acmSe) {
		this.acmSe = acmSe;
	}
	public String getAddr() {
		return Addr;
	}
	public void setAddr(String addr) {
		Addr = addr;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		this.Price = price;
	}
	public int getQty() {
		return Qty;
	}
	public void setQty(int qty) {
		Qty = qty;
	}
	public Date getAcmRd() {
		return acmRd;
	}
	public void setAcmRd(Date acmRd) {
		this.acmRd = acmRd;
	}
	public String getWriter() {
		return Writer;
	}
	public void setWriter(String writer) {
		this.Writer = writer;
	}
	public long getAcmAtchFileId() {
		return AcmAtchFileId;
	}
	public void setAcmAtchFileId(long acmAtchFileId) {
		AcmAtchFileId = acmAtchFileId;
	}
}
