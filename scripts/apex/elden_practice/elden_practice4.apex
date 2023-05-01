Account targetAcc = new Account ();
targetAcc.Name = 'VSCode Account';
targetAcc.BillingState = 'IL';
targetAcc.BillingCity = 'Chicago';
targetAcc.BillingCountry = 'USA';
targetAcc.BillingPostalCode = '60060';

insert targetAcc;
System.debug('targetAcc value is : ' + targetAcc); 
//    - update below fields and reflect the changes in Salesforce
//       - ShippingCountry     has same value as BillingCountry
targetAcc.ShippingCountry = targetAcc.BillingCountry;
//       - ShippingState       has same value as BillingState
targetAcc.ShippingState = targetAcc.BillingState;
//       - ShippingCity        has same value as BillingCity
targetAcc.ShippingCity = targetAcc.BillingCity;
//       - ShippingPostalCode  has same value as BillingPostalCode
targetAcc.ShippingPostalCode = targetAcc.BillingCity;
// save it back to Salesforce
update targetAcc;