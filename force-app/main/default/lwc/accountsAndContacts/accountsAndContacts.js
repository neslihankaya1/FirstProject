import accountsAndContacts from "@salesforce/apex/Practice.accountsAndContacts";
import { LightningElement, wire } from "lwc";

export default class AccountsAndContacts extends LightningElement {
  accList;
  conList;
  error;

  accColumns = [
    { label: "Id", fieldName: "Id" },
    { label: "Account Name", fieldName: "Name" },
    { label: "Website", fieldName: "Website" }
  ];

  conColumns = [
    { label: "Id", fieldName: "Id" },
    { label: "Contact Name", fieldName: "Name" },
    { label: "Email", fieldName: "Email" }
  ];


  @wire(accountsAndContacts)
  objectlist({data,error}){
    if(data){
        this.accList=data[0];
        this.conList=data[1];
        console.log(this.accList);
        console.log(this.conList);
        this.error=undefined;
    }
    else if(error){
        this.error=error;
        this.accList=undefined;
        this.conList=undefined;
    }
  }


//   get Accounts(){
//     return JSON.stringify(this.accList,null,2);
//   }

//   get Contacts(){
//     return JSON.stringify(this.conList,null,2);
//   }

}