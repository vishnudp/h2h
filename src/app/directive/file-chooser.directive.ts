import {Directive, ElementRef, EventEmitter, HostBinding, HostListener, Output} from '@angular/core';

@Directive({
  selector: '[appFileChooser]'
})

export class FileChooseDirective {
  @Output() appFileChooser = new EventEmitter();
  constructor(private _el: ElementRef) {
  }


  @HostListener('click') mouseclick() {
    const el = document.createElement('input');
    el.setAttribute('type', 'file');
    el.onchange = (ee) => {
      console.log(ee, 'filechooserevelt')
      this.appFileChooser.emit(ee['path'][0].files);
    }
    console.log(el.value, 'filechooserevelt');
    el.click();
  };
}
