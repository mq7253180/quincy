package com.hce.banking.o;

import java.io.Serializable;
import java.util.Map;

public class OrderResult implements Serializable {
	private static final long serialVersionUID = -2655017386629235459L;
	private boolean success = false;
	private boolean requestTimeout = false;
	private boolean requestError = false;
	private boolean quoteTimeout = false;
	private String quoteReqID;
	private String errMsg;
	private String newQuotesVersion;
	private Map<String, ExchangeRate> newQuotes;

	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public boolean isRequestTimeout() {
		return requestTimeout;
	}
	public void setRequestTimeout(boolean requestTimeout) {
		this.requestTimeout = requestTimeout;
	}
	public boolean isRequestError() {
		return requestError;
	}
	public void setRequestError(boolean requestError) {
		this.requestError = requestError;
	}
	public boolean isQuoteTimeout() {
		return quoteTimeout;
	}
	public void setQuoteTimeout(boolean quoteTimeout) {
		this.quoteTimeout = quoteTimeout;
	}
	public String getQuoteReqID() {
		return quoteReqID;
	}
	public void setQuoteReqID(String quoteReqID) {
		this.quoteReqID = quoteReqID;
	}
	public String getErrMsg() {
		return errMsg;
	}
	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}
	public String getNewQuotesVersion() {
		return newQuotesVersion;
	}
	public void setNewQuotesVersion(String newQuotesVersion) {
		this.newQuotesVersion = newQuotesVersion;
	}
	public Map<String, ExchangeRate> getNewQuotes() {
		return newQuotes;
	}
	public void setNewQuotes(Map<String, ExchangeRate> newQuotes) {
		this.newQuotes = newQuotes;
	}
}
