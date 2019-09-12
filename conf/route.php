<?php
 return [
   '/' => 'home/index/index',
  //  'search' => 'home/index/search',
   'about' => 'home/index/about',
   'article/:Id' => 'home/article/index',
   'team' => 'home/index/team',
   'video' => 'home/index/video',
   'manageZx' => 'home/index/manageZx',
   'managezt' => 'home/index/manageZt',
   'team' => 'home/index/team',
   'yearTest' => 'home/index/yearTest',
   'mbamorebtn' => 'home/index/mbamorebtn',
   'applycenter' => 'home/index/applycenter',
   'ztZrticle' => 'home/article/ztArticle',
   'videoArticle' => 'home/article/videoArticle',
    // 
    'mba' => 'home/index/mba',
    'mpa' => 'home/index/mpa',
    'mpacc' => 'home/index/mpacc',
    'mea' => 'home/index/mea',
    'mta' => 'home/index/mta',
    'maud' => 'home/index/maud',
    'mlis' => 'home/index/mlis',
   
 ];
 Route::get('new/:type','home/index/degree');