Account acc1  = new Account (Name = 'Big Account');
 insert acc1;

 Contact cont1 = new Contact (
    LastName   = 'Baggins',
    AccountId  = acc1.Id
    );

    insert cont1;

    Task tsk1= new Task(
      WhatId = acc1.Id, 
      WhoId= cont1.Id,
      Subject= 'Follow up with'+ cont1.LastName,
      Description = 'Have a chat with'+ cont1.LastName+ 'From' + acc.Name,
    )