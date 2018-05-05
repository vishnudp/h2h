import { Inject, Injectable } from '@angular/core';
@Injectable()
export class SetGetDataService {
    currentLoadedData = {};
    constructor() { }

    setData(data) {
        console.log('service set get dtaa--', data);
        this.currentLoadedData = data;
    }

    getData() {
        return this.currentLoadedData;
    }

}

