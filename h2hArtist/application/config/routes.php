<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller']                                = "admin/login";

$route['404_override']                                      = 'notfound';

$route['admin']                                             = 'admin/login';

$route['login']                                             = 'admin/login';

$route['setup-a-test']                                      = 'setupatest/index';

$route['setup-a-test/index']                                = 'setupatest/index';

$route['setup-a-test/index/(:num)']                         = 'setupatest/index/$1';

$route['setup-a-test/practicetest']                        = 'setupatest/practicetest';

$route['setup-a-test/practicetest/(:num)']                 = 'setupatest/practicetest/$1';

$route['setup-a-test/evolutiontest']                       = 'setupatest/evolutiontest';

$route['setup-a-test/evolutiontest/(:num)']                = 'setupatest/evolutiontest/$1';

$route['setup-a-test/sampletest']                      	   = 'setupatest/sampletest';

$route['setup-a-test/sampletest/(:num)']               	   = 'setupatest/sampletest/$1';

$route['setup-a-test/registration/(:any)']                  = 'setupatest/registration/$1';

$route['setup-a-test/downloadpdf/(:num)']                   = 'setupatest/downloadpdf/$1';

$route['setup-a-test/add']                                  = 'setupatest/add';

$route['setup-a-test/edit/(:num)']                          = 'setupatest/edit/$1';

$route['setup-a-test/delete/(:num)']                        = 'setupatest/delete/$1';

$route['setup-a-test/view/(:num)']                          = 'setupatest/view/$1';

$route['setup-a-test/view/(:num)/(:num)']                   = 'setupatest/view/$1/$1';

$route['admin/report/view/(:num)']                          = 'admin/report/view/$1';

$route['admin/report/view/(:num)/(:num)']                   = 'admin/report/view/$1/$1';

$route['take-a-test/login']                                 = 'taketest/login';

$route['take-a-test']                                       = 'taketest/index';

$route['take-a-test/index']                                 = 'taketest/index';

$route['take-a-test/finish']                                = 'taketest/finish';

$route['take-a-test/saveRemainingtime/(:num)']              = 'taketest/saveRemainingtime/$1';

$route['take-a-test/userAnswer']                            = 'taketest/userAnswer';

$route['take-a-test/report']                            = 'taketest/report';

$route['take-a-test/testfinish_confirm/(:num)']             = 'taketest/testfinish_confirm/$1';

$route['page']                                              = 'page/index';

/*
 $route['admin/([a-zA-Z_-]+)/(:any)'] = '$1/admin/$2';
 $route['admin/login'] = 'admin/login';
 $route['admin/logout'] = 'admin/logout';
 #$route['admin/([a-zA-Z_-]+)'] = '$1/admin/index';
 $route['admin'] = 'admin';

/* End of file routes.php */
/* Location: ./application/config/routes.php */