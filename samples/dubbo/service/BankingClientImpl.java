package com.hce.banking.dubbo;

import java.io.IOException;

import com.alibaba.dubbo.config.annotation.Service;
import com.hce.banking.client.BankingClient;
import com.hce.banking.core.AccountException;
import com.hce.banking.o.OrderParam;
import com.hce.banking.o.OrderResult;

@Service(interfaceClass = BankingClient.class, timeout = 5000, retries = -1)
public class BankingClientImpl implements BankingClient {
	@Override
	public OrderResult clickOnceDeal(OrderParam params) throws ClassNotFoundException, IOException, InterruptedException, AccountException {
		return null;
	}
}
