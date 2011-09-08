/* system.i */
%module System
%{
extern VALUE rho_sys_makephonecall(const char* callname, int nparams, char** param_names, char** param_values);
#define syscall rho_sys_makephonecall

extern VALUE rho_sys_get_property(char* property);
#define get_property rho_sys_get_property

extern VALUE rho_sys_has_network();
#define has_network rho_sys_has_network

extern VALUE rho_sys_get_locale();
#define get_locale rho_sys_get_locale

extern int rho_sys_get_screen_width();
#define get_screen_width rho_sys_get_screen_width
extern int rho_sys_get_screen_height();
#define get_screen_height rho_sys_get_screen_height

#define set_push_notification rho_sys_set_push_notification
extern void rho_sys_set_push_notification( const char *url, const char* params);

#define set_screen_rotation_notification rho_sys_set_screen_rotation_notification
extern void rho_sys_set_screen_rotation_notification(const char *url, const char* params);

#define exit rho_sys_app_exit
extern void rho_sys_app_exit();

#define unzip_file rho_sys_unzip_file
extern int rho_sys_unzip_file(const char *path);

#define set_sleeping rho_sys_set_sleeping
extern int rho_sys_set_sleeping(int sleeping);

#define run_app rho_sys_run_app
extern void rho_sys_run_app(const char* appname, VALUE params);

#define bring_to_front rho_sys_bring_to_front
extern void rho_sys_bring_to_front();

#define get_start_params rho_sys_get_start_params
extern const char* rho_sys_get_start_params();

#define open_url rho_sys_open_url
extern void rho_sys_open_url(const char* url);

#define app_installed rho_sys_is_app_installed
extern int rho_sys_is_app_installed(const char *appname);

#define app_install rho_sys_app_install
extern void rho_sys_app_install(const char *url);

#define app_uninstall rho_sys_app_uninstall
extern void rho_sys_app_uninstall(const char *appname);

#define start_timer rho_sys_start_timer
extern void rho_sys_start_timer( int interval, const char *url, const char* params);

#define stop_timer rho_sys_stop_timer
extern void rho_sys_stop_timer( const char *url );

#define set_application_icon_badge rho_sys_set_application_icon_badge
extern void rho_sys_set_application_icon_badge(int badge_number);


	#if !defined(bool)
	#define bool int
	#define true  1
	#define false 0
	#endif

%}

%typemap(in) (int nparams, char** param_names, char** param_values)
 (VALUE keys_arr, int i, VALUE key, VALUE val) {
 Check_Type($input, T_HASH);
 $1 = NUM2INT(rb_funcall($input, rb_intern("size"), 0, NULL));
 $2 = NULL;
 $3 = NULL;
 if ($1 > 0) {
 $2 = (char **) malloc($1*sizeof(char *));
 $3 = (char **) malloc($1*sizeof(char *));
 keys_arr = rb_funcall($input, rb_intern("keys"), 0, NULL);
 for (i = 0; i < $1; i++) {
 key = rb_ary_entry(keys_arr, i);
 val = rb_hash_aref($input, key);
 Check_Type(key, T_STRING);
 Check_Type(val, T_STRING);
 $2[i] = StringValuePtr(key);
 $3[i] = StringValuePtr(val);
}
}
}
%typemap(freearg) (int nparams, char** param_names, char** param_values) {
 free((void *) $2);
 free((void *) $3);
}
extern VALUE syscall(const char* callname, int nparams, char** param_names, char** param_values);
extern VALUE get_property(char* property);
extern VALUE has_network();
extern VALUE get_locale();
extern int get_screen_width();
extern int get_screen_height();
extern void set_push_notification( const char *url, const char* params);
extern void set_screen_rotation_notification(const char *url, const char* params);
extern void exit();
extern void unzip_file( const char *path );
extern int set_sleeping( bool sleeping );
extern void run_app(const char *appname, VALUE params);
extern void bring_to_front();
extern const char* get_start_params();
extern void open_url(const char *url);
%predicate app_installed(const char *appname);
extern int app_installed(const char *appname);
extern void app_install(const char *url);
extern void app_uninstall(const char *appname);
extern void start_timer( int interval, const char *url, const char* params);
extern void stop_timer( const char *url);
extern void set_application_icon_badge(int badge_number);
