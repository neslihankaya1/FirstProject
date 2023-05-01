Account targetAcc = new Account ();
targetAcc.Name = 'Test VSCode Account';
targetAcc.BillingState = 'TX';
targetAcc.BillingCity = 'Houston';
targetAcc.BillingCountry = 'USA';
targetAcc.BillingPostalCode = '72345';

insert targetAcc;

List<Contact> contactList = new List<Contact>();
for(Integer i=0; i<5 ;i++) {
    Contact con = new Contact (LastName = targetAcc.Name + i);
    con.MailingCountry = targetAcc.BillingCountry;
    con.MailingState = targetAcc.BillingState;
    con.MailingCity = targetAcc.BillingCity;
    con.MailingPostalCode = targetAcc.BillingPostalCode;
    con.AccountId = targetAcc.Id;
    contactList.add(con);
}
insert contactList;
System.debug('contactList value is : ' + contactList); 