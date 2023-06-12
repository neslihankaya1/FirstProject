import { LightningElement, wire, track } from 'lwc';
import getAccountWithAnnualRevenue from '@salesforce/apex/AccountController.getAccountWithAnnualRevenue';

export default class DisplayAccountsWithAnnualRevenue extends LightningElement {
    @track accounts;

    @wire(getAccountWithAnnualRevenue)
    wiredAccounts({ error, data }) {
        if (data) {
            this.accounts = data;
        } else if (error) {
            console.error(error);
        }
    }

    // Define the columns for the datatable
    columns = [
        { label: 'Account Name', fieldName: 'Name', type: 'text' },
        { label: 'Annual Revenue', fieldName: 'AnnualRevenue', type: 'currency' },
    ];
}
