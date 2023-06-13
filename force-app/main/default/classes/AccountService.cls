public with sharing class AccountService {
   
    public Account createAccount(String accountName, String accountNumber, String tickersymbol){
    
        Account newAcct = new Account(
        Name = accountName,
        accountNumber = accountNumber,
        TickerSymbol = tickerSymbol
        );
    
        return newAcct;
   }
}