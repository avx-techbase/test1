<?php
// {$smarty.const.ADR_FILES}

define('DEVELOPMENT_ENVIRONMENT', true);

define('POCET_CHYB', 31);

define('DS', '/');


define('MAX_ALLOW_FILE', 5000);



// Always provide a TRAILING SLASH (/) AFTER A PATH
define('URL', 'http://rekvalifikace.local/');
define('LIBS', 'libs/');
define('LANG', 'lang/');
define('MODELS', 'models/');
define('PDF', 'pdf/');
define('REPORTS', 'reports/');

//define('ADR_EXCEL_FILES', 'public/excel/');

define('UTIL', 'util/');


define('IMG_ADR', "public/images/");

define('ADR_TMP_FILE', "/tmp/file/");
define('ADR_FILES', "/public/files/");





define('ROOT', dirname(__FILE__));

define('ADR_EXCEL_FILES', '/public/excel/');

define('ADR_PUBBLIC_PDF', ROOT . DS . 'public/pdf/');

define('TMP',  ROOT . DS . 'tmp/');



//define('DB_TYPE', 'mysql');
//define('DB_HOST', 'nevada');
define('DB_HOST', 'localhost');
define('DB_PORT', '3307');
define('DB_NAME', 'elcoco');
define('DB_USER', 'root');
define('DB_PASS', 'test');


define('ODESILATEL', 'ElcoCo <postmaster@uhr.avxeur.com>');
define('ODESILATEL_NAME', 'ElcoCo');
define('ODESILATEL_EMAIL', 'postmaster@uhr.avxeur.com');


//define('PRIJEMCE_VYBRANE_SCRAPY', 'martina.horka@eur.avx.com,Martin.Krystof@eur.avx.com,radim.uher@avx.com,hmiram@uhr.avxeur.com,Peter.Kormos@eur.avx.com');
define('PRIJEMCE_VYBRANE_SCRAPY', 'marek.hmira@avx.com');

define('PRIJEMCE_ZMETKY_NA_POSOUZENI', 'marek.hmira@avx.com');
//define('PRIJEMCE_ZMETKY_NA_POSOUZENI', 'martina.kolkova@avx.com,monika.knotkova@avx.com,hana.hozakova@avx.com,mistr577@uhr.avxeur.com,horsakovae@uhr.avxeur.com,jana.mleckova@avx.com,vasickovai@uhr.avxeur.com');
                  
//mesicni_prehled_jtekt_excel
define('PRIJEMCE_MESICNI_PREHLED_JTEKT_EXCEL', 'marek.hmira@avx.com');


define('IMG_UPLOAD', 'public/images_r/');


// nazev defaultniho obrayku pro profil
define('DEFAULT_IMG_PROFIL', 'default.jpg');


// nazev defaultniho obrayku pro recept $smarty.const.DEFAULT_IMG_RECEPT
define('DEFAULT_IMG_RECEPT', 'default.jpg');

define('MAX_ALLOW_IMG', 200000);




// The sitewide hashkey, do not change this because its used for passwords!
// This is for other hash keys... Not sure yet
define('HASH_GENERAL_KEY', 'MixitUp200');

// This is for database passwords only
define('HASH_PASSWORD_KEY', 'catsFLYhigh2000miles');


define('DEFAULT_RECORDS_ON_ONE_PAGE', 100);
define('DEFAULT_KOMENTAR_ON_ONE_PAGE', 10);


define('RESULT_OK', 'OK');
define('RESULT_NOK', 'NOK');


define('ARTICL_SELECT_1', '**-XXXX-***-***-***');
define('ARTICL_SELECT_2', '**-XXXX-XXX-***-***');
define('ARTICL_SELECT_3', 'XX-XXXX-XXX-XXX-XXX');


define('ADMIN_EMAILS', 'hmiram@uhr.avxeur.com');


//define('SMTP_SERVER', 'localhost');
define('SMTP_SERVER', '10.10.32.129');


define('DEFAULT_CIL_ZMETKY', 2);

/**
 * Maximalni velikost nahravaneho souboru v kB
 */
define('MAX_FILE_SIZE', 2500);


