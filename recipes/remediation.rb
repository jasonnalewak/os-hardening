
execute 'dconf_update' do
  command 'dconf update'
  action :nothing
end
service 'ssh_restart' do
  service_name 'sshd'
  action :nothing
end
execute 'auditd_restart' do # ~FC004
  command 'service auditd restart'
  action :nothing
end
execute 'do_reboot' do
  command 'shutdown -r 1'
  action :nothing
end
if node['rhel7STIG']['stigrule_86707']['Manage'] || node['rhel7STIG']['stigrule_86709']['Manage'] || node['rhel7STIG']['stigrule_86711']['Manage'] || node['rhel7STIG']['stigrule_87815']['Manage']
  file '/etc/audisp/audisp-remote.conf' do
    action :create_if_missing
  end
end
if node['rhel7STIG']['stigrule_95727']['Manage'] || node['rhel7STIG']['stigrule_95727']['Manage']
  file '/etc/audisp/plugins.d/au-remote.conf' do
    action :create_if_missing
  end
end
if node['rhel7STIG']['stigrule_86607']['Manage']
  file '/etc/modprobe.d/blacklist.conf' do
    action :create_if_missing
  end
end
if node['rhel7STIG']['stigrule_86483']['Manage'] || node['rhel7STIG']['stigrule_86485']['Manage']
  file '/etc/dconf/db/local.d/01-banner-message' do
    action :create_if_missing
    only_if 'rpm -q dconf'
  end
end
if node['rhel7STIG']['stigrule_86515']['Manage'] || node['rhel7STIG']['stigrule_86517']['Manage'] || node['rhel7STIG']['stigrule_86523']['Manage'] || node['rhel7STIG']['stigrule_86525']['Manage']
  file '/etc/dconf/db/local.d/00-screensaver' do
    action :create_if_missing
    only_if 'rpm -q dconf'
  end
end
if node['rhel7STIG']['stigrule_87807']['Manage'] || node['rhel7STIG']['stigrule_87809']['Manage'] || node['rhel7STIG']['stigrule_93703']['Manage']
  file '/etc/dconf/db/local.d/locks/session' do
    action :create_if_missing
    only_if 'rpm -q dconf'
  end
end
if node['rhel7STIG']['stigrule_92515']['Manage']
  file '/etc/dconf/db/local.d/00-defaults' do
    action :create_if_missing
    only_if 'rpm -q dconf'
  end
end
if node['rhel7STIG']['stigrule_86617']['Manage']
  file '/etc/dconf/db/local.d/00-disable-CAD' do
    action :create_if_missing
    only_if 'rpm -q dconf'
  end
end
if node['rhel7STIG']['stigrule_86483']['Manage']
  ini_setting '_etc_dconf_db_local_d_01_banner_message_86483' do
    path node['rhel7STIG']['stigrule_86483']['Setting']['_etc_dconf_db_local_d_01_banner_message_Path']
    section node['rhel7STIG']['stigrule_86483']['Setting']['_etc_dconf_db_local_d_01_banner_message_Section']
    setting node['rhel7STIG']['stigrule_86483']['Setting']['_etc_dconf_db_local_d_01_banner_message_Option']
    value node['rhel7STIG']['stigrule_86483']['Setting']['_etc_dconf_db_local_d_01_banner_message_Value']
    notifies :run, 'execute[dconf_update]', :delayed
    only_if node['rhel7STIG']['stigrule_86483']['Setting']['_etc_dconf_db_local_d_01_banner_message_Only_if']
    separator '='
  end
end
if node['rhel7STIG']['stigrule_86485']['Manage']
  ini_setting '_etc_dconf_db_local_d_01_banner_message_86485' do
    path node['rhel7STIG']['stigrule_86485']['Setting']['_etc_dconf_db_local_d_01_banner_message_Path']
    section node['rhel7STIG']['stigrule_86485']['Setting']['_etc_dconf_db_local_d_01_banner_message_Section']
    setting node['rhel7STIG']['stigrule_86485']['Setting']['_etc_dconf_db_local_d_01_banner_message_Option']
    value node['rhel7STIG']['stigrule_86485']['Setting']['_etc_dconf_db_local_d_01_banner_message_Value']
    notifies :run, 'execute[dconf_update]', :delayed
    only_if node['rhel7STIG']['stigrule_86485']['Setting']['_etc_dconf_db_local_d_01_banner_message_Only_if']
    separator '='
  end
end
if node['rhel7STIG']['stigrule_86487']['Manage']
  file '_etc_issue_86487' do
    path node['rhel7STIG']['stigrule_86487']['Setting']['_etc_issue_Path']
    content node['rhel7STIG']['stigrule_86487']['Setting']['_etc_issue_Content']
  end
end
if node['rhel7STIG']['stigrule_86515']['Manage']
  ini_setting '_etc_dconf_db_local_d_00_screensaver_86515' do
    path node['rhel7STIG']['stigrule_86515']['Setting']['_etc_dconf_db_local_d_00_screensaver_Path']
    section node['rhel7STIG']['stigrule_86515']['Setting']['_etc_dconf_db_local_d_00_screensaver_Section']
    setting node['rhel7STIG']['stigrule_86515']['Setting']['_etc_dconf_db_local_d_00_screensaver_Option']
    value node['rhel7STIG']['stigrule_86515']['Setting']['_etc_dconf_db_local_d_00_screensaver_Value']
    notifies :run, 'execute[dconf_update]', :delayed
    only_if node['rhel7STIG']['stigrule_86515']['Setting']['_etc_dconf_db_local_d_00_screensaver_Only_if']
    separator '='
  end
end
if node['rhel7STIG']['stigrule_86517']['Manage']
  ini_setting '_etc_dconf_db_local_d_00_screensaver_86517' do
    path node['rhel7STIG']['stigrule_86517']['Setting']['_etc_dconf_db_local_d_00_screensaver_Path']
    section node['rhel7STIG']['stigrule_86517']['Setting']['_etc_dconf_db_local_d_00_screensaver_Section']
    setting node['rhel7STIG']['stigrule_86517']['Setting']['_etc_dconf_db_local_d_00_screensaver_Option']
    value node['rhel7STIG']['stigrule_86517']['Setting']['_etc_dconf_db_local_d_00_screensaver_Value']
    notifies :run, 'execute[dconf_update]', :delayed
    only_if node['rhel7STIG']['stigrule_86517']['Setting']['_etc_dconf_db_local_d_00_screensaver_Only_if']
    separator '='
  end
end
if node['rhel7STIG']['stigrule_86523']['Manage']
  ini_setting '_etc_dconf_db_local_d_00_screensaver_86523' do
    path node['rhel7STIG']['stigrule_86523']['Setting']['_etc_dconf_db_local_d_00_screensaver_Path']
    section node['rhel7STIG']['stigrule_86523']['Setting']['_etc_dconf_db_local_d_00_screensaver_Section']
    setting node['rhel7STIG']['stigrule_86523']['Setting']['_etc_dconf_db_local_d_00_screensaver_Option']
    value node['rhel7STIG']['stigrule_86523']['Setting']['_etc_dconf_db_local_d_00_screensaver_Value']
    notifies :run, 'execute[dconf_update]', :delayed
    only_if node['rhel7STIG']['stigrule_86523']['Setting']['_etc_dconf_db_local_d_00_screensaver_Only_if']
    separator '='
  end
end
if node['rhel7STIG']['stigrule_86525']['Manage']
  ini_setting '_etc_dconf_db_local_d_00_screensaver_86525' do
    path node['rhel7STIG']['stigrule_86525']['Setting']['_etc_dconf_db_local_d_00_screensaver_Path']
    section node['rhel7STIG']['stigrule_86525']['Setting']['_etc_dconf_db_local_d_00_screensaver_Section']
    setting node['rhel7STIG']['stigrule_86525']['Setting']['_etc_dconf_db_local_d_00_screensaver_Option']
    value node['rhel7STIG']['stigrule_86525']['Setting']['_etc_dconf_db_local_d_00_screensaver_Value']
    notifies :run, 'execute[dconf_update]', :delayed
    only_if node['rhel7STIG']['stigrule_86525']['Setting']['_etc_dconf_db_local_d_00_screensaver_Only_if']
    separator '='
  end
end
if node['rhel7STIG']['stigrule_86521']['Manage']
  yum_package 'screen_86521' do
    package_name node['rhel7STIG']['stigrule_86521']['Setting']['screen_PackageName']
    action node['rhel7STIG']['stigrule_86521']['Setting']['screen_Action']
  end
end
if node['rhel7STIG']['stigrule_86527']['Manage']
  file_line '_etc_security_pwquality_conf_86527' do
    path node['rhel7STIG']['stigrule_86527']['Setting']['_etc_security_pwquality_conf_Path']
    match node['rhel7STIG']['stigrule_86527']['Setting']['_etc_security_pwquality_conf_Regexp']
    line node['rhel7STIG']['stigrule_86527']['Setting']['_etc_security_pwquality_conf_Line']
  end
end
if node['rhel7STIG']['stigrule_86529']['Manage']
  file_line '_etc_security_pwquality_conf_86529' do
    path node['rhel7STIG']['stigrule_86529']['Setting']['_etc_security_pwquality_conf_Path']
    match node['rhel7STIG']['stigrule_86529']['Setting']['_etc_security_pwquality_conf_Regexp']
    line node['rhel7STIG']['stigrule_86529']['Setting']['_etc_security_pwquality_conf_Line']
  end
end
if node['rhel7STIG']['stigrule_86531']['Manage']
  file_line '_etc_security_pwquality_conf_86531' do
    path node['rhel7STIG']['stigrule_86531']['Setting']['_etc_security_pwquality_conf_Path']
    match node['rhel7STIG']['stigrule_86531']['Setting']['_etc_security_pwquality_conf_Regexp']
    line node['rhel7STIG']['stigrule_86531']['Setting']['_etc_security_pwquality_conf_Line']
  end
end
if node['rhel7STIG']['stigrule_86533']['Manage']
  file_line '_etc_security_pwquality_conf_86533' do
    path node['rhel7STIG']['stigrule_86533']['Setting']['_etc_security_pwquality_conf_Path']
    match node['rhel7STIG']['stigrule_86533']['Setting']['_etc_security_pwquality_conf_Regexp']
    line node['rhel7STIG']['stigrule_86533']['Setting']['_etc_security_pwquality_conf_Line']
  end
end
if node['rhel7STIG']['stigrule_86535']['Manage']
  file_line '_etc_security_pwquality_conf_86535' do
    path node['rhel7STIG']['stigrule_86535']['Setting']['_etc_security_pwquality_conf_Path']
    match node['rhel7STIG']['stigrule_86535']['Setting']['_etc_security_pwquality_conf_Regexp']
    line node['rhel7STIG']['stigrule_86535']['Setting']['_etc_security_pwquality_conf_Line']
  end
end
if node['rhel7STIG']['stigrule_86537']['Manage']
  file_line '_etc_security_pwquality_conf_86537' do
    path node['rhel7STIG']['stigrule_86537']['Setting']['_etc_security_pwquality_conf_Path']
    match node['rhel7STIG']['stigrule_86537']['Setting']['_etc_security_pwquality_conf_Regexp']
    line node['rhel7STIG']['stigrule_86537']['Setting']['_etc_security_pwquality_conf_Line']
  end
end
if node['rhel7STIG']['stigrule_86539']['Manage']
  file_line '_etc_security_pwquality_conf_86539' do
    path node['rhel7STIG']['stigrule_86539']['Setting']['_etc_security_pwquality_conf_Path']
    match node['rhel7STIG']['stigrule_86539']['Setting']['_etc_security_pwquality_conf_Regexp']
    line node['rhel7STIG']['stigrule_86539']['Setting']['_etc_security_pwquality_conf_Line']
  end
end
if node['rhel7STIG']['stigrule_86541']['Manage']
  file_line '_etc_security_pwquality_conf_86541' do
    path node['rhel7STIG']['stigrule_86541']['Setting']['_etc_security_pwquality_conf_Path']
    match node['rhel7STIG']['stigrule_86541']['Setting']['_etc_security_pwquality_conf_Regexp']
    line node['rhel7STIG']['stigrule_86541']['Setting']['_etc_security_pwquality_conf_Line']
  end
end
if node['rhel7STIG']['stigrule_86559']['Manage']
  file_line '_etc_security_pwquality_conf_86559' do
    path node['rhel7STIG']['stigrule_86559']['Setting']['_etc_security_pwquality_conf_Path']
    match node['rhel7STIG']['stigrule_86559']['Setting']['_etc_security_pwquality_conf_Regexp']
    line node['rhel7STIG']['stigrule_86559']['Setting']['_etc_security_pwquality_conf_Line']
  end
end
if node['rhel7STIG']['stigrule_86545']['Manage']
  file_line '_etc_login_defs_86545' do
    path node['rhel7STIG']['stigrule_86545']['Setting']['_etc_login_defs_Path']
    match node['rhel7STIG']['stigrule_86545']['Setting']['_etc_login_defs_Regexp']
    line node['rhel7STIG']['stigrule_86545']['Setting']['_etc_login_defs_Line']
  end
end
if node['rhel7STIG']['stigrule_86549']['Manage']
  file_line '_etc_login_defs_86549' do
    path node['rhel7STIG']['stigrule_86549']['Setting']['_etc_login_defs_Path']
    match node['rhel7STIG']['stigrule_86549']['Setting']['_etc_login_defs_Regexp']
    line node['rhel7STIG']['stigrule_86549']['Setting']['_etc_login_defs_Line']
  end
end
if node['rhel7STIG']['stigrule_86553']['Manage']
  file_line '_etc_login_defs_86553' do
    path node['rhel7STIG']['stigrule_86553']['Setting']['_etc_login_defs_Path']
    match node['rhel7STIG']['stigrule_86553']['Setting']['_etc_login_defs_Regexp']
    line node['rhel7STIG']['stigrule_86553']['Setting']['_etc_login_defs_Line']
  end
end
if node['rhel7STIG']['stigrule_86575']['Manage']
  file_line '_etc_login_defs_86575' do
    path node['rhel7STIG']['stigrule_86575']['Setting']['_etc_login_defs_Path']
    match node['rhel7STIG']['stigrule_86575']['Setting']['_etc_login_defs_Regexp']
    line node['rhel7STIG']['stigrule_86575']['Setting']['_etc_login_defs_Line']
  end
end
if node['rhel7STIG']['stigrule_86619']['Manage']
  file_line '_etc_login_defs_86619' do
    path node['rhel7STIG']['stigrule_86619']['Setting']['_etc_login_defs_Path']
    match node['rhel7STIG']['stigrule_86619']['Setting']['_etc_login_defs_Regexp']
    line node['rhel7STIG']['stigrule_86619']['Setting']['_etc_login_defs_Line']
  end
end
if node['rhel7STIG']['stigrule_86637']['Manage']
  file_line '_etc_login_defs_86637' do
    path node['rhel7STIG']['stigrule_86637']['Setting']['_etc_login_defs_Path']
    match node['rhel7STIG']['stigrule_86637']['Setting']['_etc_login_defs_Regexp']
    line node['rhel7STIG']['stigrule_86637']['Setting']['_etc_login_defs_Line']
  end
end
if node['rhel7STIG']['stigrule_86547']['Manage']
  ini_setting '_etc_libuser_conf_86547' do
    path node['rhel7STIG']['stigrule_86547']['Setting']['_etc_libuser_conf_Path']
    section node['rhel7STIG']['stigrule_86547']['Setting']['_etc_libuser_conf_Section']
    setting node['rhel7STIG']['stigrule_86547']['Setting']['_etc_libuser_conf_Option']
    value node['rhel7STIG']['stigrule_86547']['Setting']['_etc_libuser_conf_Value']
    separator ' = '
  end
end
if node['rhel7STIG']['stigrule_86551']['Manage']
  `awk -F: '{cmd="id -u "$1|getline uid;if($4<1 && uid>=1000 && uid!=65534 && uid!=65535 && uid!=4294967294 && uid!=4294967295){print $1}}' /etc/shadow`.each_line do |foreach| # ~FC048
    execute 'chage__m_1_user_86551' do
      command node['rhel7STIG']['stigrule_86551']['Setting']['chage__m_1_user_Command'] + " #{foreach}"
    end
  end
end
if node['rhel7STIG']['stigrule_86555']['Manage']
  `awk -F: '{cmd="id -u "$1|getline uid;if($5>60 && uid>=1000 && uid!=65534 && uid!=65535 && uid!=4294967294 && uid!=4294967295){print $1}}' /etc/shadow`.each_line do |foreach| # ~FC048
    execute 'chage__M_60_user_86555' do
      command node['rhel7STIG']['stigrule_86555']['Setting']['chage__M_60_user_Command'] + " #{foreach}"
    end
  end
end
if node['rhel7STIG']['stigrule_86563']['Manage']
  file_line 'PermitEmptyPasswords_86563' do
    path node['rhel7STIG']['stigrule_86563']['Setting']['PermitEmptyPasswords_Path']
    match node['rhel7STIG']['stigrule_86563']['Setting']['PermitEmptyPasswords_Regexp']
    line node['rhel7STIG']['stigrule_86563']['Setting']['PermitEmptyPasswords_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86563']['Setting']['PermitEmptyPasswords_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86565']['Manage']
  file_line '_etc_default_useradd_86565' do
    path node['rhel7STIG']['stigrule_86565']['Setting']['_etc_default_useradd_Path']
    match node['rhel7STIG']['stigrule_86565']['Setting']['_etc_default_useradd_Regexp']
    line node['rhel7STIG']['stigrule_86565']['Setting']['_etc_default_useradd_Line']
  end
end
if node['rhel7STIG']['stigrule_86577']['Manage']
  ini_setting '_etc_gdm_custom_conf_86577' do
    path node['rhel7STIG']['stigrule_86577']['Setting']['_etc_gdm_custom_conf_Path']
    section node['rhel7STIG']['stigrule_86577']['Setting']['_etc_gdm_custom_conf_Section']
    setting node['rhel7STIG']['stigrule_86577']['Setting']['_etc_gdm_custom_conf_Option']
    value node['rhel7STIG']['stigrule_86577']['Setting']['_etc_gdm_custom_conf_Value']
    only_if node['rhel7STIG']['stigrule_86577']['Setting']['_etc_gdm_custom_conf_Only_if']
    separator '='
  end
end
if node['rhel7STIG']['stigrule_86579']['Manage']
  ini_setting '_etc_gdm_custom_conf_86579' do
    path node['rhel7STIG']['stigrule_86579']['Setting']['_etc_gdm_custom_conf_Path']
    section node['rhel7STIG']['stigrule_86579']['Setting']['_etc_gdm_custom_conf_Section']
    setting node['rhel7STIG']['stigrule_86579']['Setting']['_etc_gdm_custom_conf_Option']
    value node['rhel7STIG']['stigrule_86579']['Setting']['_etc_gdm_custom_conf_Value']
    only_if node['rhel7STIG']['stigrule_86579']['Setting']['_etc_gdm_custom_conf_Only_if']
    separator '='
  end
end
if node['rhel7STIG']['stigrule_86581']['Manage']
  file_line 'PermitUserEnvironment_86581' do
    path node['rhel7STIG']['stigrule_86581']['Setting']['PermitUserEnvironment_Path']
    match node['rhel7STIG']['stigrule_86581']['Setting']['PermitUserEnvironment_Regexp']
    line node['rhel7STIG']['stigrule_86581']['Setting']['PermitUserEnvironment_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86581']['Setting']['PermitUserEnvironment_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86583']['Manage']
  file_line 'HostbasedAuthentication_86583' do
    path node['rhel7STIG']['stigrule_86583']['Setting']['HostbasedAuthentication_Path']
    match node['rhel7STIG']['stigrule_86583']['Setting']['HostbasedAuthentication_Regexp']
    line node['rhel7STIG']['stigrule_86583']['Setting']['HostbasedAuthentication_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86583']['Setting']['HostbasedAuthentication_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86591']['Manage']
  yum_package 'rsh_server_86591' do
    package_name node['rhel7STIG']['stigrule_86591']['Setting']['rsh_server_PackageName']
    action node['rhel7STIG']['stigrule_86591']['Setting']['rsh_server_Action']
  end
end
if node['rhel7STIG']['stigrule_86593']['Manage']
  yum_package 'ypserv_86593' do
    package_name node['rhel7STIG']['stigrule_86593']['Setting']['ypserv_PackageName']
    action node['rhel7STIG']['stigrule_86593']['Setting']['ypserv_Action']
  end
end
if node['rhel7STIG']['stigrule_86597']['Manage']
  file '_etc_cron_daily_aide_86597' do
    path node['rhel7STIG']['stigrule_86597']['Setting']['_etc_cron_daily_aide_Path']
    content node['rhel7STIG']['stigrule_86597']['Setting']['_etc_cron_daily_aide_Content']
    mode node['rhel7STIG']['stigrule_86597']['Setting']['_etc_cron_daily_aide_Mode']
    notifies :install, 'yum_package[aide_86597]', :before
  end
end
if node['rhel7STIG']['stigrule_86597']['Manage']
  yum_package 'aide_86597' do
    package_name node['rhel7STIG']['stigrule_86597']['Setting']['aide_PackageName']
    action node['rhel7STIG']['stigrule_86597']['Setting']['aide_Action']
  end
end
if node['rhel7STIG']['stigrule_86599']['Manage']
  file '_etc_cron_daily_aide_notify_86599' do
    path node['rhel7STIG']['stigrule_86599']['Setting']['_etc_cron_daily_aide_notify_Path']
    content node['rhel7STIG']['stigrule_86599']['Setting']['_etc_cron_daily_aide_notify_Content']
    mode node['rhel7STIG']['stigrule_86599']['Setting']['_etc_cron_daily_aide_notify_Mode']
    notifies :install, 'yum_package[aide_notify_86599]', :before
  end
end
if node['rhel7STIG']['stigrule_86599']['Manage']
  yum_package 'aide_notify_86599' do
    package_name node['rhel7STIG']['stigrule_86599']['Setting']['aide_notify_PackageName']
    action node['rhel7STIG']['stigrule_86599']['Setting']['aide_notify_Action']
  end
end
if node['rhel7STIG']['stigrule_86601']['Manage']
  ini_setting '_etc_yum_conf_86601' do
    path node['rhel7STIG']['stigrule_86601']['Setting']['_etc_yum_conf_Path']
    section node['rhel7STIG']['stigrule_86601']['Setting']['_etc_yum_conf_Section']
    setting node['rhel7STIG']['stigrule_86601']['Setting']['_etc_yum_conf_Option']
    value node['rhel7STIG']['stigrule_86601']['Setting']['_etc_yum_conf_Value']
    separator '='
  end
end
if node['rhel7STIG']['stigrule_86603']['Manage']
  ini_setting '_etc_yum_conf_86603' do
    path node['rhel7STIG']['stigrule_86603']['Setting']['_etc_yum_conf_Path']
    section node['rhel7STIG']['stigrule_86603']['Setting']['_etc_yum_conf_Section']
    setting node['rhel7STIG']['stigrule_86603']['Setting']['_etc_yum_conf_Option']
    value node['rhel7STIG']['stigrule_86603']['Setting']['_etc_yum_conf_Value']
    separator '='
  end
end
if node['rhel7STIG']['stigrule_86611']['Manage']
  ini_setting '_etc_yum_conf_86611' do
    path node['rhel7STIG']['stigrule_86611']['Setting']['_etc_yum_conf_Path']
    section node['rhel7STIG']['stigrule_86611']['Setting']['_etc_yum_conf_Section']
    setting node['rhel7STIG']['stigrule_86611']['Setting']['_etc_yum_conf_Option']
    value node['rhel7STIG']['stigrule_86611']['Setting']['_etc_yum_conf_Value']
    separator '='
  end
end
if node['rhel7STIG']['stigrule_86607']['Manage']
  file_line '_etc_modprobe_d_blacklist_conf_86607' do
    path node['rhel7STIG']['stigrule_86607']['Setting']['_etc_modprobe_d_blacklist_conf_Path']
    match node['rhel7STIG']['stigrule_86607']['Setting']['_etc_modprobe_d_blacklist_conf_Regexp']
    line node['rhel7STIG']['stigrule_86607']['Setting']['_etc_modprobe_d_blacklist_conf_Line']
  end
end
if node['rhel7STIG']['stigrule_86609']['Manage']
  service 'autofs_disable_86609' do
    service_name node['rhel7STIG']['stigrule_86609']['Setting']['autofs_disable_ServiceName']
    action node['rhel7STIG']['stigrule_86609']['Setting']['autofs_disable_Action']
  end
end
if node['rhel7STIG']['stigrule_86609']['Manage']
  service 'autofs_stop_86609' do
    service_name node['rhel7STIG']['stigrule_86609']['Setting']['autofs_stop_ServiceName']
    action node['rhel7STIG']['stigrule_86609']['Setting']['autofs_stop_Action']
  end
end
if node['rhel7STIG']['stigrule_86613']['Manage']
  file_line '_etc_selinux_config_86613' do
    path node['rhel7STIG']['stigrule_86613']['Setting']['_etc_selinux_config_Path']
    match node['rhel7STIG']['stigrule_86613']['Setting']['_etc_selinux_config_Regexp']
    line node['rhel7STIG']['stigrule_86613']['Setting']['_etc_selinux_config_Line']
    notifies :run, 'execute[do_reboot]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86615']['Manage']
  file_line '_etc_selinux_config_86615' do
    path node['rhel7STIG']['stigrule_86615']['Setting']['_etc_selinux_config_Path']
    match node['rhel7STIG']['stigrule_86615']['Setting']['_etc_selinux_config_Regexp']
    line node['rhel7STIG']['stigrule_86615']['Setting']['_etc_selinux_config_Line']
    notifies :run, 'execute[do_reboot]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86617']['Manage']
  execute 'systemctl_mask_ctrl_alt_del_target_86617' do
    command node['rhel7STIG']['stigrule_86617']['Setting']['systemctl_mask_ctrl_alt_del_target_Command']
    only_if node['rhel7STIG']['stigrule_86617']['Setting']['systemctl_mask_ctrl_alt_del_target_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86617']['Manage']
  ini_setting '_etc_dconf_db_local_d_00_disable_CAD_86617' do
    path node['rhel7STIG']['stigrule_86617']['Setting']['_etc_dconf_db_local_d_00_disable_CAD_Path']
    section node['rhel7STIG']['stigrule_86617']['Setting']['_etc_dconf_db_local_d_00_disable_CAD_Section']
    setting node['rhel7STIG']['stigrule_86617']['Setting']['_etc_dconf_db_local_d_00_disable_CAD_Option']
    value node['rhel7STIG']['stigrule_86617']['Setting']['_etc_dconf_db_local_d_00_disable_CAD_Value']
    only_if node['rhel7STIG']['stigrule_86617']['Setting']['_etc_dconf_db_local_d_00_disable_CAD_Only_if']
    separator '='
  end
end
if node['rhel7STIG']['stigrule_86675']['Manage']
  file_line '_etc_rsyslog_conf_86675' do
    path node['rhel7STIG']['stigrule_86675']['Setting']['_etc_rsyslog_conf_Path']
    match node['rhel7STIG']['stigrule_86675']['Setting']['_etc_rsyslog_conf_Regexp']
    line node['rhel7STIG']['stigrule_86675']['Setting']['_etc_rsyslog_conf_Line']
  end
end
if node['rhel7STIG']['stigrule_86677']['Manage']
  file '_etc_cron_allow_86677' do
    path node['rhel7STIG']['stigrule_86677']['Setting']['_etc_cron_allow_Path']
    owner node['rhel7STIG']['stigrule_86677']['Setting']['_etc_cron_allow_Owner']
    only_if node['rhel7STIG']['stigrule_86677']['Setting']['_etc_cron_allow_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86679']['Manage']
  file '_etc_cron_allow_86679' do
    path node['rhel7STIG']['stigrule_86679']['Setting']['_etc_cron_allow_Path']
    group node['rhel7STIG']['stigrule_86679']['Setting']['_etc_cron_allow_Group']
    only_if node['rhel7STIG']['stigrule_86679']['Setting']['_etc_cron_allow_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86681']['Manage']
  service 'kdump_disable_86681' do
    service_name node['rhel7STIG']['stigrule_86681']['Setting']['kdump_disable_ServiceName']
    action node['rhel7STIG']['stigrule_86681']['Setting']['kdump_disable_Action']
  end
end
if node['rhel7STIG']['stigrule_86681']['Manage']
  service 'kdump_stop_86681' do
    service_name node['rhel7STIG']['stigrule_86681']['Setting']['kdump_stop_ServiceName']
    action node['rhel7STIG']['stigrule_86681']['Setting']['kdump_stop_Action']
  end
end
if node['rhel7STIG']['stigrule_86689']['Manage']
  service 'tmp_mount_86689' do
    service_name node['rhel7STIG']['stigrule_86689']['Setting']['tmp_mount_ServiceName']
    action node['rhel7STIG']['stigrule_86689']['Setting']['tmp_mount_Action']
  end
end
if node['rhel7STIG']['stigrule_86701']['Manage']
  yum_package 'telnet_server_86701' do
    package_name node['rhel7STIG']['stigrule_86701']['Setting']['telnet_server_PackageName']
    action node['rhel7STIG']['stigrule_86701']['Setting']['telnet_server_Action']
  end
end
if node['rhel7STIG']['stigrule_86703']['Manage']
  service 'auditd_enable_86703' do
    service_name node['rhel7STIG']['stigrule_86703']['Setting']['auditd_enable_ServiceName']
    action node['rhel7STIG']['stigrule_86703']['Setting']['auditd_enable_Action']
  end
end
if node['rhel7STIG']['stigrule_86703']['Manage']
  service 'auditd_start_86703' do
    service_name node['rhel7STIG']['stigrule_86703']['Setting']['auditd_start_ServiceName']
    action node['rhel7STIG']['stigrule_86703']['Setting']['auditd_start_Action']
  end
end
if node['rhel7STIG']['stigrule_86705']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_critical_error_86705' do
    path node['rhel7STIG']['stigrule_86705']['Setting']['_etc_audit_rules_d_audit_rules_critical_error_Path']
    match node['rhel7STIG']['stigrule_86705']['Setting']['_etc_audit_rules_d_audit_rules_critical_error_Regexp']
    line node['rhel7STIG']['stigrule_86705']['Setting']['_etc_audit_rules_d_audit_rules_critical_error_Line']
  end
end
if node['rhel7STIG']['stigrule_86707']['Manage']
  file_line '_etc_audisp_audisp_remote_conf_86707' do
    path node['rhel7STIG']['stigrule_86707']['Setting']['_etc_audisp_audisp_remote_conf_Path']
    match node['rhel7STIG']['stigrule_86707']['Setting']['_etc_audisp_audisp_remote_conf_Regexp']
    line node['rhel7STIG']['stigrule_86707']['Setting']['_etc_audisp_audisp_remote_conf_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86709']['Manage']
  file_line '_etc_audisp_audisp_remote_conf_86709' do
    path node['rhel7STIG']['stigrule_86709']['Setting']['_etc_audisp_audisp_remote_conf_Path']
    match node['rhel7STIG']['stigrule_86709']['Setting']['_etc_audisp_audisp_remote_conf_Regexp']
    line node['rhel7STIG']['stigrule_86709']['Setting']['_etc_audisp_audisp_remote_conf_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86711']['Manage']
  file_line '_etc_audisp_audisp_remote_conf_86711' do
    path node['rhel7STIG']['stigrule_86711']['Setting']['_etc_audisp_audisp_remote_conf_Path']
    match node['rhel7STIG']['stigrule_86711']['Setting']['_etc_audisp_audisp_remote_conf_Regexp']
    line node['rhel7STIG']['stigrule_86711']['Setting']['_etc_audisp_audisp_remote_conf_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_87815']['Manage']
  file_line '_etc_audisp_audisp_remote_conf_87815' do
    path node['rhel7STIG']['stigrule_87815']['Setting']['_etc_audisp_audisp_remote_conf_Path']
    match node['rhel7STIG']['stigrule_87815']['Setting']['_etc_audisp_audisp_remote_conf_Regexp']
    line node['rhel7STIG']['stigrule_87815']['Setting']['_etc_audisp_audisp_remote_conf_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86715']['Manage']
  file_line '_etc_audit_auditd_conf_86715' do
    path node['rhel7STIG']['stigrule_86715']['Setting']['_etc_audit_auditd_conf_Path']
    match node['rhel7STIG']['stigrule_86715']['Setting']['_etc_audit_auditd_conf_Regexp']
    line node['rhel7STIG']['stigrule_86715']['Setting']['_etc_audit_auditd_conf_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86717']['Manage']
  file_line '_etc_audit_auditd_conf_86717' do
    path node['rhel7STIG']['stigrule_86717']['Setting']['_etc_audit_auditd_conf_Path']
    match node['rhel7STIG']['stigrule_86717']['Setting']['_etc_audit_auditd_conf_Regexp']
    line node['rhel7STIG']['stigrule_86717']['Setting']['_etc_audit_auditd_conf_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86719']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_euid_b32_86719' do
    path node['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_euid_b32_Path']
    match node['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_euid_b32_Regexp']
    line node['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_euid_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86719']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_euid_b64_86719' do
    path node['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_euid_b64_Path']
    match node['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_euid_b64_Regexp']
    line node['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_euid_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86719']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_egid_b32_86719' do
    path node['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_egid_b32_Path']
    match node['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_egid_b32_Regexp']
    line node['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_egid_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86719']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_egid_b64_86719' do
    path node['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_egid_b64_Path']
    match node['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_egid_b64_Regexp']
    line node['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_egid_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86721']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86721' do
    path node['rhel7STIG']['stigrule_86721']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86721']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86721']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86723']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86723' do
    path node['rhel7STIG']['stigrule_86723']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86723']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86723']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86725']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86725' do
    path node['rhel7STIG']['stigrule_86725']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86725']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86725']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86727']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86727' do
    path node['rhel7STIG']['stigrule_86727']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86727']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86727']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86729']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86729' do
    path node['rhel7STIG']['stigrule_86729']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86729']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86729']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86731']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86731' do
    path node['rhel7STIG']['stigrule_86731']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86731']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86731']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86733']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86733' do
    path node['rhel7STIG']['stigrule_86733']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86733']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86733']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86735']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86735' do
    path node['rhel7STIG']['stigrule_86735']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86735']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86735']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86737']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86737' do
    path node['rhel7STIG']['stigrule_86737']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86737']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86737']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86739']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86739' do
    path node['rhel7STIG']['stigrule_86739']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86739']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86739']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86741']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86741' do
    path node['rhel7STIG']['stigrule_86741']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86741']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86741']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86743']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86743' do
    path node['rhel7STIG']['stigrule_86743']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86743']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86743']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86745']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86745' do
    path node['rhel7STIG']['stigrule_86745']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86745']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86745']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86811']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86811' do
    path node['rhel7STIG']['stigrule_86811']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86811']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86811']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86813']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86813' do
    path node['rhel7STIG']['stigrule_86813']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86813']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86813']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86823']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86823' do
    path node['rhel7STIG']['stigrule_86823']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86823']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86823']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86825']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86825' do
    path node['rhel7STIG']['stigrule_86825']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86825']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86825']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86827']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86827' do
    path node['rhel7STIG']['stigrule_86827']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86827']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86827']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86829']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86829' do
    path node['rhel7STIG']['stigrule_86829']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86829']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86829']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86831']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b32_86831' do
    path node['rhel7STIG']['stigrule_86831']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_86831']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_86831']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86721']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86721' do
    path node['rhel7STIG']['stigrule_86721']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86721']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86721']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86723']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86723' do
    path node['rhel7STIG']['stigrule_86723']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86723']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86723']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86725']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86725' do
    path node['rhel7STIG']['stigrule_86725']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86725']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86725']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86727']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86727' do
    path node['rhel7STIG']['stigrule_86727']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86727']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86727']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86729']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86729' do
    path node['rhel7STIG']['stigrule_86729']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86729']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86729']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86731']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86731' do
    path node['rhel7STIG']['stigrule_86731']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86731']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86731']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86733']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86733' do
    path node['rhel7STIG']['stigrule_86733']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86733']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86733']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86735']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86735' do
    path node['rhel7STIG']['stigrule_86735']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86735']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86735']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86737']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86737' do
    path node['rhel7STIG']['stigrule_86737']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86737']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86737']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86739']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86739' do
    path node['rhel7STIG']['stigrule_86739']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86739']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86739']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86741']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86741' do
    path node['rhel7STIG']['stigrule_86741']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86741']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86741']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86743']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86743' do
    path node['rhel7STIG']['stigrule_86743']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86743']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86743']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86745']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86745' do
    path node['rhel7STIG']['stigrule_86745']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86745']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86745']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86811']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86811' do
    path node['rhel7STIG']['stigrule_86811']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86811']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86811']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86813']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86813' do
    path node['rhel7STIG']['stigrule_86813']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86813']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86813']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86823']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86823' do
    path node['rhel7STIG']['stigrule_86823']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86823']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86823']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86825']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86825' do
    path node['rhel7STIG']['stigrule_86825']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86825']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86825']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86827']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86827' do
    path node['rhel7STIG']['stigrule_86827']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86827']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86827']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86829']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86829' do
    path node['rhel7STIG']['stigrule_86829']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86829']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86829']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86831']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_b64_86831' do
    path node['rhel7STIG']['stigrule_86831']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_86831']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_86831']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86747']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EPERM_b32_86747' do
    path node['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Path']
    match node['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Regexp']
    line node['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86749']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EPERM_b32_86749' do
    path node['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Path']
    match node['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Regexp']
    line node['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86751']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EPERM_b32_86751' do
    path node['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Path']
    match node['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Regexp']
    line node['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86753']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EPERM_b32_86753' do
    path node['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Path']
    match node['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Regexp']
    line node['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86755']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EPERM_b32_86755' do
    path node['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Path']
    match node['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Regexp']
    line node['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86757']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EPERM_b32_86757' do
    path node['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Path']
    match node['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Regexp']
    line node['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86747']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EPERM_b64_86747' do
    path node['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Path']
    match node['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Regexp']
    line node['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86749']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EPERM_b64_86749' do
    path node['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Path']
    match node['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Regexp']
    line node['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86751']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EPERM_b64_86751' do
    path node['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Path']
    match node['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Regexp']
    line node['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86753']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EPERM_b64_86753' do
    path node['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Path']
    match node['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Regexp']
    line node['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86755']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EPERM_b64_86755' do
    path node['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Path']
    match node['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Regexp']
    line node['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86757']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EPERM_b64_86757' do
    path node['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Path']
    match node['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Regexp']
    line node['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86747']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EACCES_b32_86747' do
    path node['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Path']
    match node['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Regexp']
    line node['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86749']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EACCES_b32_86749' do
    path node['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Path']
    match node['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Regexp']
    line node['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86751']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EACCES_b32_86751' do
    path node['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Path']
    match node['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Regexp']
    line node['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86753']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EACCES_b32_86753' do
    path node['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Path']
    match node['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Regexp']
    line node['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86755']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EACCES_b32_86755' do
    path node['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Path']
    match node['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Regexp']
    line node['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86757']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EACCES_b32_86757' do
    path node['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Path']
    match node['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Regexp']
    line node['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86747']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EACCES_b64_86747' do
    path node['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Path']
    match node['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Regexp']
    line node['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86749']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EACCES_b64_86749' do
    path node['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Path']
    match node['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Regexp']
    line node['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86751']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EACCES_b64_86751' do
    path node['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Path']
    match node['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Regexp']
    line node['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86753']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EACCES_b64_86753' do
    path node['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Path']
    match node['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Regexp']
    line node['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86755']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EACCES_b64_86755' do
    path node['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Path']
    match node['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Regexp']
    line node['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86757']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_EACCES_b64_86757' do
    path node['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Path']
    match node['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Regexp']
    line node['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86759']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86759' do
    path node['rhel7STIG']['stigrule_86759']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86759']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86759']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86761']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86761' do
    path node['rhel7STIG']['stigrule_86761']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86761']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86761']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86763']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86763' do
    path node['rhel7STIG']['stigrule_86763']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86763']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86763']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86765']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86765' do
    path node['rhel7STIG']['stigrule_86765']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86765']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86765']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86769']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86769' do
    path node['rhel7STIG']['stigrule_86769']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86769']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86769']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86771']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86771' do
    path node['rhel7STIG']['stigrule_86771']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86771']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86771']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86773']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86773' do
    path node['rhel7STIG']['stigrule_86773']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86773']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86773']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86775']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86775' do
    path node['rhel7STIG']['stigrule_86775']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86775']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86775']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86777']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86777' do
    path node['rhel7STIG']['stigrule_86777']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86777']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86777']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86779']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86779' do
    path node['rhel7STIG']['stigrule_86779']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86779']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86779']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86781']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86781' do
    path node['rhel7STIG']['stigrule_86781']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86781']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86781']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86783']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86783' do
    path node['rhel7STIG']['stigrule_86783']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86783']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86783']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86785']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86785' do
    path node['rhel7STIG']['stigrule_86785']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86785']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86785']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86789']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86789' do
    path node['rhel7STIG']['stigrule_86789']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86789']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86789']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86791']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86791' do
    path node['rhel7STIG']['stigrule_86791']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86791']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86791']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86797']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86797' do
    path node['rhel7STIG']['stigrule_86797']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86797']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86797']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86799']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86799' do
    path node['rhel7STIG']['stigrule_86799']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86799']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86799']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86801']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86801' do
    path node['rhel7STIG']['stigrule_86801']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86801']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86801']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86803']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86803' do
    path node['rhel7STIG']['stigrule_86803']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86803']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86803']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86807']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86807' do
    path node['rhel7STIG']['stigrule_86807']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86807']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86807']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86809']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86809' do
    path node['rhel7STIG']['stigrule_86809']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86809']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86809']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86815']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86815' do
    path node['rhel7STIG']['stigrule_86815']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86815']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86815']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86821']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_86821' do
    path node['rhel7STIG']['stigrule_86821']['Setting']['_etc_audit_rules_d_audit_rules_Path']
    match node['rhel7STIG']['stigrule_86821']['Setting']['_etc_audit_rules_d_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_86821']['Setting']['_etc_audit_rules_d_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86787']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_sudoers_86787' do
    path node['rhel7STIG']['stigrule_86787']['Setting']['_etc_audit_rules_d_audit_rules_sudoers_Path']
    match node['rhel7STIG']['stigrule_86787']['Setting']['_etc_audit_rules_d_audit_rules_sudoers_Regexp']
    line node['rhel7STIG']['stigrule_86787']['Setting']['_etc_audit_rules_d_audit_rules_sudoers_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86787']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_sudoers_d_86787' do
    path node['rhel7STIG']['stigrule_86787']['Setting']['_etc_audit_rules_d_audit_rules_sudoers_d_Path']
    match node['rhel7STIG']['stigrule_86787']['Setting']['_etc_audit_rules_d_audit_rules_sudoers_d_Regexp']
    line node['rhel7STIG']['stigrule_86787']['Setting']['_etc_audit_rules_d_audit_rules_sudoers_d_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86795']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_mount_b32_86795' do
    path node['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules_mount_b32_Path']
    match node['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules_mount_b32_Regexp']
    line node['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules_mount_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86795']['Manage']
  file_line '_etc_audit_rules_d_audit_rules_mount_b64_86795' do
    path node['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules_mount_b64_Path']
    match node['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules_mount_b64_Regexp']
    line node['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules_mount_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86795']['Manage']
  file_line '_etc_audit_rules_d_audit_rules__usr_bin_mount_86795' do
    path node['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules__usr_bin_mount_Path']
    match node['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules__usr_bin_mount_Regexp']
    line node['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules__usr_bin_mount_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_86841']['Manage']
  file_line '_etc_security_limits_conf_86841' do
    path node['rhel7STIG']['stigrule_86841']['Setting']['_etc_security_limits_conf_Path']
    match node['rhel7STIG']['stigrule_86841']['Setting']['_etc_security_limits_conf_Regexp']
    line node['rhel7STIG']['stigrule_86841']['Setting']['_etc_security_limits_conf_Line']
  end
end
if node['rhel7STIG']['stigrule_86845']['Manage']
  file_line 'Ciphers_86845' do
    path node['rhel7STIG']['stigrule_86845']['Setting']['Ciphers_Path']
    match node['rhel7STIG']['stigrule_86845']['Setting']['Ciphers_Regexp']
    line node['rhel7STIG']['stigrule_86845']['Setting']['Ciphers_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86845']['Setting']['Ciphers_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86847']['Manage']
  file '_etc_profile_d_tmout_sh_86847' do
    path node['rhel7STIG']['stigrule_86847']['Setting']['_etc_profile_d_tmout_sh_Path']
    content node['rhel7STIG']['stigrule_86847']['Setting']['_etc_profile_d_tmout_sh_Content']
  end
end
if node['rhel7STIG']['stigrule_86849']['Manage']
  file_line 'banner_86849' do
    path node['rhel7STIG']['stigrule_86849']['Setting']['banner_Path']
    match node['rhel7STIG']['stigrule_86849']['Setting']['banner_Regexp']
    line node['rhel7STIG']['stigrule_86849']['Setting']['banner_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86849']['Setting']['banner_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86857']['Manage']
  yum_package 'openssh_clients_x86_64_86857' do
    package_name node['rhel7STIG']['stigrule_86857']['Setting']['openssh_clients_x86_64_PackageName']
    action node['rhel7STIG']['stigrule_86857']['Setting']['openssh_clients_x86_64_Action']
  end
end
if node['rhel7STIG']['stigrule_86857']['Manage']
  yum_package 'openssh_server_x86_64_86857' do
    package_name node['rhel7STIG']['stigrule_86857']['Setting']['openssh_server_x86_64_PackageName']
    action node['rhel7STIG']['stigrule_86857']['Setting']['openssh_server_x86_64_Action']
  end
end
if node['rhel7STIG']['stigrule_86859']['Manage']
  service 'sshd_enable_86859' do
    service_name node['rhel7STIG']['stigrule_86859']['Setting']['sshd_enable_ServiceName']
    action node['rhel7STIG']['stigrule_86859']['Setting']['sshd_enable_Action']
  end
end
if node['rhel7STIG']['stigrule_86859']['Manage']
  service 'sshd_start_86859' do
    service_name node['rhel7STIG']['stigrule_86859']['Setting']['sshd_start_ServiceName']
    action node['rhel7STIG']['stigrule_86859']['Setting']['sshd_start_Action']
  end
end
if node['rhel7STIG']['stigrule_86861']['Manage']
  file_line 'ClientAliveInterval_86861' do
    path node['rhel7STIG']['stigrule_86861']['Setting']['ClientAliveInterval_Path']
    match node['rhel7STIG']['stigrule_86861']['Setting']['ClientAliveInterval_Regexp']
    line node['rhel7STIG']['stigrule_86861']['Setting']['ClientAliveInterval_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86861']['Setting']['ClientAliveInterval_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86863']['Manage']
  file_line 'RhostsRSAAuthentication_86863' do
    path node['rhel7STIG']['stigrule_86863']['Setting']['RhostsRSAAuthentication_Path']
    match node['rhel7STIG']['stigrule_86863']['Setting']['RhostsRSAAuthentication_Regexp']
    line node['rhel7STIG']['stigrule_86863']['Setting']['RhostsRSAAuthentication_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86863']['Setting']['RhostsRSAAuthentication_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86865']['Manage']
  file_line 'ClientAliveCountMax_86865' do
    path node['rhel7STIG']['stigrule_86865']['Setting']['ClientAliveCountMax_Path']
    match node['rhel7STIG']['stigrule_86865']['Setting']['ClientAliveCountMax_Regexp']
    line node['rhel7STIG']['stigrule_86865']['Setting']['ClientAliveCountMax_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86865']['Setting']['ClientAliveCountMax_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86867']['Manage']
  file_line 'IgnoreRhosts_86867' do
    path node['rhel7STIG']['stigrule_86867']['Setting']['IgnoreRhosts_Path']
    match node['rhel7STIG']['stigrule_86867']['Setting']['IgnoreRhosts_Regexp']
    line node['rhel7STIG']['stigrule_86867']['Setting']['IgnoreRhosts_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86867']['Setting']['IgnoreRhosts_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86869']['Manage']
  file_line 'PrintLastLog_86869' do
    path node['rhel7STIG']['stigrule_86869']['Setting']['PrintLastLog_Path']
    match node['rhel7STIG']['stigrule_86869']['Setting']['PrintLastLog_Regexp']
    line node['rhel7STIG']['stigrule_86869']['Setting']['PrintLastLog_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86869']['Setting']['PrintLastLog_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86871']['Manage']
  file_line 'PermitRootLogin_86871' do
    path node['rhel7STIG']['stigrule_86871']['Setting']['PermitRootLogin_Path']
    match node['rhel7STIG']['stigrule_86871']['Setting']['PermitRootLogin_Regexp']
    line node['rhel7STIG']['stigrule_86871']['Setting']['PermitRootLogin_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86871']['Setting']['PermitRootLogin_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86873']['Manage']
  file_line 'IgnoreUserKnownHosts_86873' do
    path node['rhel7STIG']['stigrule_86873']['Setting']['IgnoreUserKnownHosts_Path']
    match node['rhel7STIG']['stigrule_86873']['Setting']['IgnoreUserKnownHosts_Regexp']
    line node['rhel7STIG']['stigrule_86873']['Setting']['IgnoreUserKnownHosts_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86873']['Setting']['IgnoreUserKnownHosts_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86875']['Manage']
  file_line 'Protocol_86875' do
    path node['rhel7STIG']['stigrule_86875']['Setting']['Protocol_Path']
    match node['rhel7STIG']['stigrule_86875']['Setting']['Protocol_Regexp']
    line node['rhel7STIG']['stigrule_86875']['Setting']['Protocol_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86875']['Setting']['Protocol_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86877']['Manage']
  file_line 'MACs_86877' do
    path node['rhel7STIG']['stigrule_86877']['Setting']['MACs_Path']
    match node['rhel7STIG']['stigrule_86877']['Setting']['MACs_Regexp']
    line node['rhel7STIG']['stigrule_86877']['Setting']['MACs_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86877']['Setting']['MACs_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86883']['Manage']
  file_line 'GSSAPIAuthentication_86883' do
    path node['rhel7STIG']['stigrule_86883']['Setting']['GSSAPIAuthentication_Path']
    match node['rhel7STIG']['stigrule_86883']['Setting']['GSSAPIAuthentication_Regexp']
    line node['rhel7STIG']['stigrule_86883']['Setting']['GSSAPIAuthentication_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86883']['Setting']['GSSAPIAuthentication_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86885']['Manage']
  file_line 'KerberosAuthentication_86885' do
    path node['rhel7STIG']['stigrule_86885']['Setting']['KerberosAuthentication_Path']
    match node['rhel7STIG']['stigrule_86885']['Setting']['KerberosAuthentication_Regexp']
    line node['rhel7STIG']['stigrule_86885']['Setting']['KerberosAuthentication_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86885']['Setting']['KerberosAuthentication_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86887']['Manage']
  file_line 'StrictModes_86887' do
    path node['rhel7STIG']['stigrule_86887']['Setting']['StrictModes_Path']
    match node['rhel7STIG']['stigrule_86887']['Setting']['StrictModes_Regexp']
    line node['rhel7STIG']['stigrule_86887']['Setting']['StrictModes_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86887']['Setting']['StrictModes_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86889']['Manage']
  file_line 'UsePrivilegeSeparation_86889' do
    path node['rhel7STIG']['stigrule_86889']['Setting']['UsePrivilegeSeparation_Path']
    match node['rhel7STIG']['stigrule_86889']['Setting']['UsePrivilegeSeparation_Regexp']
    line node['rhel7STIG']['stigrule_86889']['Setting']['UsePrivilegeSeparation_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86889']['Setting']['UsePrivilegeSeparation_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86891']['Manage']
  file_line 'Compression_86891' do
    path node['rhel7STIG']['stigrule_86891']['Setting']['Compression_Path']
    match node['rhel7STIG']['stigrule_86891']['Setting']['Compression_Regexp']
    line node['rhel7STIG']['stigrule_86891']['Setting']['Compression_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86891']['Setting']['Compression_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86897']['Manage']
  yum_package 'firewalld_service_86897' do
    package_name node['rhel7STIG']['stigrule_86897']['Setting']['firewalld_service_PackageName']
    action node['rhel7STIG']['stigrule_86897']['Setting']['firewalld_service_Action']
  end
end
if node['rhel7STIG']['stigrule_86897']['Manage']
  service 'firewalld_active_86897' do
    service_name node['rhel7STIG']['stigrule_86897']['Setting']['firewalld_active_ServiceName']
    action node['rhel7STIG']['stigrule_86897']['Setting']['firewalld_active_Action']
  end
end
if node['rhel7STIG']['stigrule_86897']['Manage']
  service 'firewalld_start_86897' do
    service_name node['rhel7STIG']['stigrule_86897']['Setting']['firewalld_start_ServiceName']
    action node['rhel7STIG']['stigrule_86897']['Setting']['firewalld_start_Action']
  end
end
if node['rhel7STIG']['stigrule_86907']['Manage']
  sysctl 'net_ipv4_conf_all_accept_source_route_86907' do
    key node['rhel7STIG']['stigrule_86907']['Setting']['net_ipv4_conf_all_accept_source_route_Key']
    value node['rhel7STIG']['stigrule_86907']['Setting']['net_ipv4_conf_all_accept_source_route_Value']
  end
end
if node['rhel7STIG']['stigrule_86909']['Manage']
  sysctl 'net_ipv4_conf_default_accept_source_route_86909' do
    key node['rhel7STIG']['stigrule_86909']['Setting']['net_ipv4_conf_default_accept_source_route_Key']
    value node['rhel7STIG']['stigrule_86909']['Setting']['net_ipv4_conf_default_accept_source_route_Value']
  end
end
if node['rhel7STIG']['stigrule_86911']['Manage']
  sysctl 'net_ipv4_icmp_echo_ignore_broadcasts_86911' do
    key node['rhel7STIG']['stigrule_86911']['Setting']['net_ipv4_icmp_echo_ignore_broadcasts_Key']
    value node['rhel7STIG']['stigrule_86911']['Setting']['net_ipv4_icmp_echo_ignore_broadcasts_Value']
  end
end
if node['rhel7STIG']['stigrule_86913']['Manage']
  sysctl 'net_ipv4_conf_default_accept_redirects_86913' do
    key node['rhel7STIG']['stigrule_86913']['Setting']['net_ipv4_conf_default_accept_redirects_Key']
    value node['rhel7STIG']['stigrule_86913']['Setting']['net_ipv4_conf_default_accept_redirects_Value']
  end
end
if node['rhel7STIG']['stigrule_86915']['Manage']
  sysctl 'net_ipv4_conf_default_send_redirects_86915' do
    key node['rhel7STIG']['stigrule_86915']['Setting']['net_ipv4_conf_default_send_redirects_Key']
    value node['rhel7STIG']['stigrule_86915']['Setting']['net_ipv4_conf_default_send_redirects_Value']
  end
end
if node['rhel7STIG']['stigrule_86917']['Manage']
  sysctl 'net_ipv4_conf_all_send_redirects_86917' do
    key node['rhel7STIG']['stigrule_86917']['Setting']['net_ipv4_conf_all_send_redirects_Key']
    value node['rhel7STIG']['stigrule_86917']['Setting']['net_ipv4_conf_all_send_redirects_Value']
  end
end
if node['rhel7STIG']['stigrule_86921']['Manage']
  execute 'postconf__e__smtpd_client_restrictions___permit_mynetworks_reject__86921' do
    command node['rhel7STIG']['stigrule_86921']['Setting']['postconf__e__smtpd_client_restrictions___permit_mynetworks_reject__Command']
    only_if node['rhel7STIG']['stigrule_86921']['Setting']['postconf__e__smtpd_client_restrictions___permit_mynetworks_reject__Only_if']
  end
end
if node['rhel7STIG']['stigrule_86923']['Manage']
  yum_package 'vsftpd_86923' do
    package_name node['rhel7STIG']['stigrule_86923']['Setting']['vsftpd_PackageName']
    action node['rhel7STIG']['stigrule_86923']['Setting']['vsftpd_Action']
  end
end
if node['rhel7STIG']['stigrule_86925']['Manage']
  yum_package 'tftp_server_86925' do
    package_name node['rhel7STIG']['stigrule_86925']['Setting']['tftp_server_PackageName']
    action node['rhel7STIG']['stigrule_86925']['Setting']['tftp_server_Action']
  end
end
if node['rhel7STIG']['stigrule_86927']['Manage']
  file_line 'X11Forwarding_86927' do
    path node['rhel7STIG']['stigrule_86927']['Setting']['X11Forwarding_Path']
    match node['rhel7STIG']['stigrule_86927']['Setting']['X11Forwarding_Regexp']
    line node['rhel7STIG']['stigrule_86927']['Setting']['X11Forwarding_Line']
    notifies :restart, 'service[ssh_restart]', :delayed
    only_if node['rhel7STIG']['stigrule_86927']['Setting']['X11Forwarding_Only_if']
  end
end
if node['rhel7STIG']['stigrule_86931']['Manage']
  yum_package 'xorg_x11_server_common_86931' do
    package_name node['rhel7STIG']['stigrule_86931']['Setting']['xorg_x11_server_common_PackageName']
    action node['rhel7STIG']['stigrule_86931']['Setting']['xorg_x11_server_common_Action']
  end
end
if node['rhel7STIG']['stigrule_86933']['Manage']
  sysctl 'net_ipv4_ip_forward_86933' do
    key node['rhel7STIG']['stigrule_86933']['Setting']['net_ipv4_ip_forward_Key']
    value node['rhel7STIG']['stigrule_86933']['Setting']['net_ipv4_ip_forward_Value']
  end
end
if node['rhel7STIG']['stigrule_86943']['Manage']
  sysctl 'net_ipv6_conf_all_accept_source_route_86943' do
    key node['rhel7STIG']['stigrule_86943']['Setting']['net_ipv6_conf_all_accept_source_route_Key']
    value node['rhel7STIG']['stigrule_86943']['Setting']['net_ipv6_conf_all_accept_source_route_Value']
  end
end
if node['rhel7STIG']['stigrule_87041']['Manage']
  yum_package 'esc_87041' do
    package_name node['rhel7STIG']['stigrule_87041']['Setting']['esc_PackageName']
    action node['rhel7STIG']['stigrule_87041']['Setting']['esc_Action']
  end
end
if node['rhel7STIG']['stigrule_87041']['Manage']
  yum_package 'pam_pkcs11_87041' do
    package_name node['rhel7STIG']['stigrule_87041']['Setting']['pam_pkcs11_PackageName']
    action node['rhel7STIG']['stigrule_87041']['Setting']['pam_pkcs11_Action']
  end
end
if node['rhel7STIG']['stigrule_87041']['Manage']
  yum_package 'authconfig_gtk_87041' do
    package_name node['rhel7STIG']['stigrule_87041']['Setting']['authconfig_gtk_PackageName']
    action node['rhel7STIG']['stigrule_87041']['Setting']['authconfig_gtk_Action']
  end
end
if node['rhel7STIG']['stigrule_87807']['Manage']
  file_line '_etc_dconf_db_local_d_locks_session_87807' do
    path node['rhel7STIG']['stigrule_87807']['Setting']['_etc_dconf_db_local_d_locks_session_Path']
    line node['rhel7STIG']['stigrule_87807']['Setting']['_etc_dconf_db_local_d_locks_session_Line']
    notifies :run, 'execute[dconf_update]', :delayed
    only_if node['rhel7STIG']['stigrule_87807']['Setting']['_etc_dconf_db_local_d_locks_session_Only_if']
  end
end
if node['rhel7STIG']['stigrule_87809']['Manage']
  file_line '_etc_dconf_db_local_d_locks_session_87809' do
    path node['rhel7STIG']['stigrule_87809']['Setting']['_etc_dconf_db_local_d_locks_session_Path']
    line node['rhel7STIG']['stigrule_87809']['Setting']['_etc_dconf_db_local_d_locks_session_Line']
    notifies :run, 'execute[dconf_update]', :delayed
    only_if node['rhel7STIG']['stigrule_87809']['Setting']['_etc_dconf_db_local_d_locks_session_Only_if']
  end
end
if node['rhel7STIG']['stigrule_93703']['Manage']
  file_line '_etc_dconf_db_local_d_locks_session_93703' do
    path node['rhel7STIG']['stigrule_93703']['Setting']['_etc_dconf_db_local_d_locks_session_Path']
    line node['rhel7STIG']['stigrule_93703']['Setting']['_etc_dconf_db_local_d_locks_session_Line']
    notifies :run, 'execute[dconf_update]', :delayed
    only_if node['rhel7STIG']['stigrule_93703']['Setting']['_etc_dconf_db_local_d_locks_session_Only_if']
  end
end
if node['rhel7STIG']['stigrule_87817']['Manage']
  file_line '_etc_audit_audit_rules_87817' do
    path node['rhel7STIG']['stigrule_87817']['Setting']['_etc_audit_audit_rules_Path']
    match node['rhel7STIG']['stigrule_87817']['Setting']['_etc_audit_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_87817']['Setting']['_etc_audit_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_87819']['Manage']
  file_line '_etc_audit_audit_rules_87819' do
    path node['rhel7STIG']['stigrule_87819']['Setting']['_etc_audit_audit_rules_Path']
    match node['rhel7STIG']['stigrule_87819']['Setting']['_etc_audit_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_87819']['Setting']['_etc_audit_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_87823']['Manage']
  file_line '_etc_audit_audit_rules_87823' do
    path node['rhel7STIG']['stigrule_87823']['Setting']['_etc_audit_audit_rules_Path']
    match node['rhel7STIG']['stigrule_87823']['Setting']['_etc_audit_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_87823']['Setting']['_etc_audit_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_87825']['Manage']
  file_line '_etc_audit_audit_rules_87825' do
    path node['rhel7STIG']['stigrule_87825']['Setting']['_etc_audit_audit_rules_Path']
    match node['rhel7STIG']['stigrule_87825']['Setting']['_etc_audit_audit_rules_Regexp']
    line node['rhel7STIG']['stigrule_87825']['Setting']['_etc_audit_audit_rules_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_87827']['Manage']
  sysctl 'net_ipv4_conf_all_accept_redirects_87827' do
    key node['rhel7STIG']['stigrule_87827']['Setting']['net_ipv4_conf_all_accept_redirects_Key']
    value node['rhel7STIG']['stigrule_87827']['Setting']['net_ipv4_conf_all_accept_redirects_Value']
  end
end
if node['rhel7STIG']['stigrule_87829']['Manage']
  execute 'nmcli_radio_wifi_off_87829' do
    command node['rhel7STIG']['stigrule_87829']['Setting']['nmcli_radio_wifi_off_Command']
    only_if node['rhel7STIG']['stigrule_87829']['Setting']['nmcli_radio_wifi_off_Only_if']
  end
end
if node['rhel7STIG']['stigrule_92515']['Manage']
  ini_setting '_etc_dconf_db_local_d_00_defaults_92515' do
    path node['rhel7STIG']['stigrule_92515']['Setting']['_etc_dconf_db_local_d_00_defaults_Path']
    section node['rhel7STIG']['stigrule_92515']['Setting']['_etc_dconf_db_local_d_00_defaults_Section']
    setting node['rhel7STIG']['stigrule_92515']['Setting']['_etc_dconf_db_local_d_00_defaults_Option']
    value node['rhel7STIG']['stigrule_92515']['Setting']['_etc_dconf_db_local_d_00_defaults_Value']
    notifies :run, 'execute[dconf_update]', :delayed
    only_if node['rhel7STIG']['stigrule_92515']['Setting']['_etc_dconf_db_local_d_00_defaults_Only_if']
    separator '='
  end
end
if node['rhel7STIG']['stigrule_92517']['Manage']
  file '_etc_modprobe_d_dccp_conf_92517' do
    path node['rhel7STIG']['stigrule_92517']['Setting']['_etc_modprobe_d_dccp_conf_Path']
    content node['rhel7STIG']['stigrule_92517']['Setting']['_etc_modprobe_d_dccp_conf_Content']
  end
end
if node['rhel7STIG']['stigrule_92521']['Manage']
  sysctl 'kernel_randomize_va_space_92521' do
    key node['rhel7STIG']['stigrule_92521']['Setting']['kernel_randomize_va_space_Key']
    value node['rhel7STIG']['stigrule_92521']['Setting']['kernel_randomize_va_space_Value']
  end
end
if node['rhel7STIG']['stigrule_93705']['Manage']
  file_line '_etc_audit_audit_rules_b32_93705' do
    path node['rhel7STIG']['stigrule_93705']['Setting']['_etc_audit_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_93705']['Setting']['_etc_audit_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_93705']['Setting']['_etc_audit_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_93707']['Manage']
  file_line '_etc_audit_audit_rules_b32_93707' do
    path node['rhel7STIG']['stigrule_93707']['Setting']['_etc_audit_audit_rules_b32_Path']
    match node['rhel7STIG']['stigrule_93707']['Setting']['_etc_audit_audit_rules_b32_Regexp']
    line node['rhel7STIG']['stigrule_93707']['Setting']['_etc_audit_audit_rules_b32_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_93705']['Manage']
  file_line '_etc_audit_audit_rules_b64_93705' do
    path node['rhel7STIG']['stigrule_93705']['Setting']['_etc_audit_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_93705']['Setting']['_etc_audit_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_93705']['Setting']['_etc_audit_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_93707']['Manage']
  file_line '_etc_audit_audit_rules_b64_93707' do
    path node['rhel7STIG']['stigrule_93707']['Setting']['_etc_audit_audit_rules_b64_Path']
    match node['rhel7STIG']['stigrule_93707']['Setting']['_etc_audit_audit_rules_b64_Regexp']
    line node['rhel7STIG']['stigrule_93707']['Setting']['_etc_audit_audit_rules_b64_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_95727']['Manage']
  file_line '_etc_audisp_plugins_d_au_remote_conf_95727' do
    path node['rhel7STIG']['stigrule_95727']['Setting']['_etc_audisp_plugins_d_au_remote_conf_Path']
    match node['rhel7STIG']['stigrule_95727']['Setting']['_etc_audisp_plugins_d_au_remote_conf_Regexp']
    line node['rhel7STIG']['stigrule_95727']['Setting']['_etc_audisp_plugins_d_au_remote_conf_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_95729']['Manage']
  file_line '_etc_audisp_plugins_d_au_remote_conf_direction_95729' do
    path node['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_direction_Path']
    match node['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_direction_Regexp']
    line node['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_direction_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_95729']['Manage']
  file_line '_etc_audisp_plugins_d_au_remote_conf_path_95729' do
    path node['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_path_Path']
    match node['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_path_Regexp']
    line node['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_path_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_95729']['Manage']
  file_line '_etc_audisp_plugins_d_au_remote_conf_type_95729' do
    path node['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_type_Path']
    match node['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_type_Regexp']
    line node['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_type_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_95731']['Manage']
  file_line '_etc_audisp_audispd_conf_95731' do
    path node['rhel7STIG']['stigrule_95731']['Setting']['_etc_audisp_audispd_conf_Path']
    match node['rhel7STIG']['stigrule_95731']['Setting']['_etc_audisp_audispd_conf_Regexp']
    line node['rhel7STIG']['stigrule_95731']['Setting']['_etc_audisp_audispd_conf_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
if node['rhel7STIG']['stigrule_95733']['Manage']
  file_line '_etc_audisp_audispd_conf_95733' do
    path node['rhel7STIG']['stigrule_95733']['Setting']['_etc_audisp_audispd_conf_Path']
    match node['rhel7STIG']['stigrule_95733']['Setting']['_etc_audisp_audispd_conf_Regexp']
    line node['rhel7STIG']['stigrule_95733']['Setting']['_etc_audisp_audispd_conf_Line']
    notifies :run, 'execute[auditd_restart]', :delayed
  end
end
