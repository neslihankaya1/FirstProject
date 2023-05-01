Account acc1 = new Account(Name = 'Account from VSCode');
insert acc1;

Contact cont1 = new Contact (
   LastName = 'Poslavsky',
   AccountId = acc1.Id
);

insert cont1;

Task task1 = new Task (
   WhatId          = acc1.Id,
   WhoId           = cont1.Id,
   Subject         = 'Follow up with' + cont1.LastName ,
   Description     = 'Have a chat with' + cont1.LastName + 'from ' + acc1.Name,
   ActivityDate    = Date.today() + 7,
   Status = 'Pending' 
);

insert task1;