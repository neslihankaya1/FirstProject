import { LightningElement, track } from "lwc";
export default class Practice32 extends LightningElement {

// firstName = 'Jon';
// lastName = 'Snow'

//@track decorator tracks the changes inside the Arrays and Objects
@track
person = {
    firstName: 'Jon',
    lastName: 'Snow'
};

@track
sports = ['soccer', 'football','basketball'];


handleClick(){
    // this.lastName = 'Wick';
    this.person.lastName = 'Wick';
    // this.person = {
    //     firstName: 'Jon',
    //     lastName: 'Wick'
    // }
}

changeFirstItem(){
    this.sports[0] = 'Coding!!!';
}

}