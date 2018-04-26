import { ReplaySubject } from 'rxjs/ReplaySubject';
import { Subject } from 'rxjs/Subject';


export class CommonDataSharedService {
  loginStatus = new Subject();
  loadCalendar = new Subject();
}

/*PlanProgressDataService*/
