@isTest
public with sharing class AccountServiceTest {
    @isTest
    static void should_create_account(){
        String acctName = 'Salesforce';
        String acctNumber = 'SFDC';
        String tickerSymbol = 'CRM';
        Test.startTest();
            AccountService service = new AccountService();
            Account newAcct = service.createAccount(acctName, acctNumber, tickerSymbol);
            insert newAcct;
        Test.stopTest();
        List<Account> accts = [SELECT Id, Name, AccountNumber, tickerSymbol FROM Account WHERE Id = :newAcct.Id];
        System.assertEquals(1, accts.size(), 'should have found new account');
        System.assertEquals(acctName, accts[0].Name, 'incorrect name');
        System.assertEquals(acctNumber, accts[0].AccountNumber, 'incorrect account number');
        System.assertEquals(tickerSymbol, accts[0].tickerSymbol, 'incorrect ticker symbol');
    }
}