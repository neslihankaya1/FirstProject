import { LightningElement, wire } from 'lwc';
import getOppWithMaxAmount from '@salesforce/apex/OppController.getOppWithMaxAmount';

export default class OppWithHighestAmount extends LightningElement {
    sliderValue = 50000;

    columns = [
        { label: 'Opportunity Name', fieldName: 'Name' },
        { label: 'Amount', fieldName: 'Amount' },
        { label: 'Stage', fieldName: 'Stage' },
    ];

    @wire(getOppWithMaxAmount, { maxAmount: '$sliderValue' })
    myOpportunity;

    

    handleSliderChange(event) {
        this.sliderValue = event.target.value;
    }
}
