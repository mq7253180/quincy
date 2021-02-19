
import java.math.BigDecimal;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hce.banking.client.BankingClient;
import com.hce.banking.o.OrderParam;
import com.hce.banking.o.OrderResult;

public class Test {
	public static void main(String[] args) throws Exception {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("banking-dubbo-client.xml");
		context.start();

		BankingClient bankingClient = context.getBean(BankingClient.class);
		OrderParam params = new OrderParam();
		params.setSid("A2FA521E71E7CB03F2CC92F54AF64AF3");
		params.setVersion("a8ebfd8b9ed5487c88d24bdb66048ad9");
		params.setPartySubID("000100007347166");
		params.setSide("A");
		params.setSymbol("USD/HKD");
		params.setOrderQty(new BigDecimal("9"));
		params.setInf0("01010146000011");
		params.setInf1("01010292000012");
		OrderResult result = bankingClient.clickOnceDeal(params);
		if(result.isQuoteTimeout()) {
			params.setVersion(result.getNewQuotesVersion());
			result = bankingClient.clickOnceDeal(params);
			System.out.println("QuoteTimeout============"+result.getQuoteReqID());
		} else if(result.isRequestTimeout()||result.isSuccess()) {
			System.out.println("============"+result.getQuoteReqID());
		} else {
			System.out.println("============"+result.getErrMsg());
		}
		context.close();
	}
}
