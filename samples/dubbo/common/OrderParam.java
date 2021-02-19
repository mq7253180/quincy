package com.hce.banking.o;

import java.io.Serializable;
import java.math.BigDecimal;

public class OrderParam implements Serializable {
	private static final long serialVersionUID = 4727384391743407390L;
	private String sid;
	private String partySubID;
	private String version;
	private String symbol;
	private String side;
	private BigDecimal orderQty;
	private String inf0;
	private String inf1;

	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getPartySubID() {
		return partySubID;
	}
	public void setPartySubID(String partySubID) {
		this.partySubID = partySubID;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getSymbol() {
		return symbol;
	}
	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}
	public String getSide() {
		return side;
	}
	public void setSide(String side) {
		this.side = side;
	}
	public BigDecimal getOrderQty() {
		return orderQty;
	}
	public void setOrderQty(BigDecimal orderQty) {
		this.orderQty = orderQty;
	}
	public String getInf0() {
		return inf0;
	}
	public void setInf0(String inf0) {
		this.inf0 = inf0;
	}
	public String getInf1() {
		return inf1;
	}
	public void setInf1(String inf1) {
		this.inf1 = inf1;
	}
}
