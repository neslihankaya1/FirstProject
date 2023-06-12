import oppGreaterThenSearcKey from '@salesforce/apex/Practice.oppGreaterThenSearcKey';
import { LightningElement, wire } from 'lwc';

export default class Opportunity extends LightningElement {

    searchKey=25000;
    opportunities;
    error;

    columnsList = [
        { label: "Id", fieldName: "Id" },
        { label: "Opportunity Name", fieldName: "Name" },
        { label: "Amount", fieldName: "Amount" }
      ];
    
      handleSearch(event){
        this.searchKey=event.target.value;
      }

      @wire(oppGreaterThenSearcKey,{amount:'$searchKey'})
      opps({data,error}){
        if(data){
            this.opportunities=data;
            this.error=undefined
        }
        else if(error){
            this.error=error;
            this.opportunities=undefined;
        }
      }

}