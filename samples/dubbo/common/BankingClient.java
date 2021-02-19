package com.hce.banking.client;

import com.hce.banking.o.OrderParam;
import com.hce.banking.o.OrderResult;

public interface BankingClient {
	public OrderResult clickOnceDeal(OrderParam params) throws Exception;
}
