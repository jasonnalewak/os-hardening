# R-86483 RHEL-07-010030
default['rhel7STIG']['stigrule_86483']['Manage'] = false
default['rhel7STIG']['stigrule_86483']['Title'] = "The Red Hat Enterprise Linux operating system must display the Standard Mandatory DoD Notice and Consent Banner before granting local or remote access to the system via a graphical user logon."
default['rhel7STIG']['stigrule_86483']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86483']['Setting']['_etc_dconf_db_local_d_01_banner_message_Path'] = '/etc/dconf/db/local.d/01-banner-message'
default['rhel7STIG']['stigrule_86483']['Setting']['_etc_dconf_db_local_d_01_banner_message_Section'] = 'org/gnome/login-screen'
default['rhel7STIG']['stigrule_86483']['Setting']['_etc_dconf_db_local_d_01_banner_message_Option'] = 'banner-message-enable'
default['rhel7STIG']['stigrule_86483']['Setting']['_etc_dconf_db_local_d_01_banner_message_Value'] = 'true'
default['rhel7STIG']['stigrule_86483']['Setting']['_etc_dconf_db_local_d_01_banner_message_Only_if'] = "rpm -q dconf"

# R-86485 RHEL-07-010040
default['rhel7STIG']['stigrule_86485']['Manage'] = true
default['rhel7STIG']['stigrule_86485']['Title'] = "The Red Hat Enterprise Linux operating system must display the approved Standard Mandatory DoD Notice and Consent Banner before granting local or remote access to the system via a graphical user logon."
default['rhel7STIG']['stigrule_86485']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86485']['Setting']['_etc_dconf_db_local_d_01_banner_message_Path'] = '/etc/dconf/db/local.d/01-banner-message'
default['rhel7STIG']['stigrule_86485']['Setting']['_etc_dconf_db_local_d_01_banner_message_Section'] = 'org/gnome/login-screen'
default['rhel7STIG']['stigrule_86485']['Setting']['_etc_dconf_db_local_d_01_banner_message_Option'] = 'banner-message-text'
default['rhel7STIG']['stigrule_86485']['Setting']['_etc_dconf_db_local_d_01_banner_message_Value'] = '\'You are accessing a U.S. Government (USG) Information System (IS) that is provided for USG-authorized use only.\nBy using this IS (which includes any device attached to this IS), you consent to the following conditions:\n-The USG routinely intercepts and monitors communications on this IS for purposes including, but not limited to, penetration testing, COMSEC monitoring, network operations and defense, personnel misconduct (PM), law enforcement (LE), and counterintelligence (CI) investigations.\n-At any time, the USG may inspect and seize data stored on this IS.\n-Communications using, or data stored on, this IS are not private, are subject to routine monitoring, interception, and search, and may be disclosed or used for any USG-authorized purpose.\n-This IS includes security measures (e.g., authentication and access controls) to protect USG interests--not for your personal benefit or privacy.\n-Notwithstanding the above, using this IS does not constitute consent to PM, LE or CI investigative searching or monitoring of the content of privileged communications, or work product, related to personal representation or services by attorneys, psychotherapists, or clergy, and their assistants. Such communications and work product are private and confidential. See User Agreement for details.\''
default['rhel7STIG']['stigrule_86485']['Setting']['_etc_dconf_db_local_d_01_banner_message_Only_if'] = "rpm -q dconf"

# R-86487 RHEL-07-010050
default['rhel7STIG']['stigrule_86487']['Manage'] = true
default['rhel7STIG']['stigrule_86487']['Title'] = "The Red Hat Enterprise Linux operating system must display the Standard Mandatory DoD Notice and Consent Banner before granting local or remote access to the system via a command line user logon."
default['rhel7STIG']['stigrule_86487']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86487']['Setting']['_etc_issue_Path'] = '/etc/issue'
default['rhel7STIG']['stigrule_86487']['Setting']['_etc_issue_Content'] = 'You are accessing a U.S. Government (USG) Information System (IS) that is provided for USG-authorized use only.
By using this IS (which includes any device attached to this IS), you consent to the following conditions:
-The USG routinely intercepts and monitors communications on this IS for purposes including, but not limited to, penetration testing, COMSEC monitoring, network operations and defense, personnel misconduct (PM), law enforcement (LE), and counterintelligence (CI) investigations.
-At any time, the USG may inspect and seize data stored on this IS.
-Communications using, or data stored on, this IS are not private, are subject to routine monitoring, interception, and search, and may be disclosed or used for any USG-authorized purpose.
-This IS includes security measures (e.g., authentication and access controls) to protect USG interests--not for your personal benefit or privacy.
-Notwithstanding the above, using this IS does not constitute consent to PM, LE or CI investigative searching or monitoring of the content of privileged communications, or work product, related to personal representation or services by attorneys, psychotherapists, or clergy, and their assistants. Such communications and work product are private and confidential. See User Agreement for details.
'

# R-86515 RHEL-07-010060
default['rhel7STIG']['stigrule_86515']['Manage'] = true
default['rhel7STIG']['stigrule_86515']['Title'] = "The Red Hat Enterprise Linux operating system must enable a user session lock until that user re-establishes access using established identification and authentication procedures."
default['rhel7STIG']['stigrule_86515']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86515']['Setting']['_etc_dconf_db_local_d_00_screensaver_Path'] = '/etc/dconf/db/local.d/00-screensaver'
default['rhel7STIG']['stigrule_86515']['Setting']['_etc_dconf_db_local_d_00_screensaver_Section'] = 'org/gnome/desktop/screensaver'
default['rhel7STIG']['stigrule_86515']['Setting']['_etc_dconf_db_local_d_00_screensaver_Option'] = 'lock-enabled'
default['rhel7STIG']['stigrule_86515']['Setting']['_etc_dconf_db_local_d_00_screensaver_Value'] = 'true'
default['rhel7STIG']['stigrule_86515']['Setting']['_etc_dconf_db_local_d_00_screensaver_Only_if'] = "rpm -q dconf"

# R-86517 RHEL-07-010070
default['rhel7STIG']['stigrule_86517']['Manage'] = true
default['rhel7STIG']['stigrule_86517']['Title'] = "The Red Hat Enterprise Linux operating system must initiate a screensaver after a 15-minute period of inactivity for graphical user interfaces."
default['rhel7STIG']['stigrule_86517']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86517']['Setting']['_etc_dconf_db_local_d_00_screensaver_Path'] = '/etc/dconf/db/local.d/00-screensaver'
default['rhel7STIG']['stigrule_86517']['Setting']['_etc_dconf_db_local_d_00_screensaver_Section'] = 'org/gnome/desktop/session'
default['rhel7STIG']['stigrule_86517']['Setting']['_etc_dconf_db_local_d_00_screensaver_Option'] = 'idle-delay'
default['rhel7STIG']['stigrule_86517']['Setting']['_etc_dconf_db_local_d_00_screensaver_Value'] = 'uint32 900'
default['rhel7STIG']['stigrule_86517']['Setting']['_etc_dconf_db_local_d_00_screensaver_Only_if'] = "rpm -q dconf"

# R-86523 RHEL-07-010100
default['rhel7STIG']['stigrule_86523']['Manage'] = true
default['rhel7STIG']['stigrule_86523']['Title'] = "The Red Hat Enterprise Linux operating system must initiate a session lock for the screensaver after a period of inactivity for graphical user interfaces."
default['rhel7STIG']['stigrule_86523']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86523']['Setting']['_etc_dconf_db_local_d_00_screensaver_Path'] = '/etc/dconf/db/local.d/00-screensaver'
default['rhel7STIG']['stigrule_86523']['Setting']['_etc_dconf_db_local_d_00_screensaver_Section'] = 'org/gnome/desktop/screensaver'
default['rhel7STIG']['stigrule_86523']['Setting']['_etc_dconf_db_local_d_00_screensaver_Option'] = 'idle-activation-enabled'
default['rhel7STIG']['stigrule_86523']['Setting']['_etc_dconf_db_local_d_00_screensaver_Value'] = 'true'
default['rhel7STIG']['stigrule_86523']['Setting']['_etc_dconf_db_local_d_00_screensaver_Only_if'] = "rpm -q dconf"

# R-86525 RHEL-07-010110
default['rhel7STIG']['stigrule_86525']['Manage'] = true
default['rhel7STIG']['stigrule_86525']['Title'] = "The Red Hat Enterprise Linux operating system must initiate a session lock for graphical user interfaces when the screensaver is activated."
default['rhel7STIG']['stigrule_86525']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86525']['Setting']['_etc_dconf_db_local_d_00_screensaver_Path'] = '/etc/dconf/db/local.d/00-screensaver'
default['rhel7STIG']['stigrule_86525']['Setting']['_etc_dconf_db_local_d_00_screensaver_Section'] = 'org/gnome/desktop/screensaver'
default['rhel7STIG']['stigrule_86525']['Setting']['_etc_dconf_db_local_d_00_screensaver_Option'] = 'lock-delay'
default['rhel7STIG']['stigrule_86525']['Setting']['_etc_dconf_db_local_d_00_screensaver_Value'] = 'uint32 5'
default['rhel7STIG']['stigrule_86525']['Setting']['_etc_dconf_db_local_d_00_screensaver_Only_if'] = "rpm -q dconf"

# R-86521 RHEL-07-010090
default['rhel7STIG']['stigrule_86521']['Manage'] = true
default['rhel7STIG']['stigrule_86521']['Title'] = "The Red Hat Enterprise Linux operating system must have the screen package installed."
default['rhel7STIG']['stigrule_86521']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86521']['Setting']['screen_PackageName'] = 'screen'
default['rhel7STIG']['stigrule_86521']['Setting']['screen_Action'] = :install

# R-86527 RHEL-07-010120
default['rhel7STIG']['stigrule_86527']['Manage'] = true
default['rhel7STIG']['stigrule_86527']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed or new passwords are established, the new password must contain at least one upper-case character."
default['rhel7STIG']['stigrule_86527']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86527']['Setting']['_etc_security_pwquality_conf_Path'] = '/etc/security/pwquality.conf'
default['rhel7STIG']['stigrule_86527']['Setting']['_etc_security_pwquality_conf_Regexp'] = '^ucredit'
default['rhel7STIG']['stigrule_86527']['Setting']['_etc_security_pwquality_conf_Line'] = 'ucredit = -1'

# R-86529 RHEL-07-010130
default['rhel7STIG']['stigrule_86529']['Manage'] = true
default['rhel7STIG']['stigrule_86529']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed or new passwords are established, the new password must contain at least one lower-case character."
default['rhel7STIG']['stigrule_86529']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86529']['Setting']['_etc_security_pwquality_conf_Path'] = '/etc/security/pwquality.conf'
default['rhel7STIG']['stigrule_86529']['Setting']['_etc_security_pwquality_conf_Regexp'] = '^lcredit'
default['rhel7STIG']['stigrule_86529']['Setting']['_etc_security_pwquality_conf_Line'] = 'lcredit = -1'

# R-86531 RHEL-07-010140
default['rhel7STIG']['stigrule_86531']['Manage'] = true
default['rhel7STIG']['stigrule_86531']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed or new passwords are assigned, the new password must contain at least one numeric character."
default['rhel7STIG']['stigrule_86531']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86531']['Setting']['_etc_security_pwquality_conf_Path'] = '/etc/security/pwquality.conf'
default['rhel7STIG']['stigrule_86531']['Setting']['_etc_security_pwquality_conf_Regexp'] = '^dcredit'
default['rhel7STIG']['stigrule_86531']['Setting']['_etc_security_pwquality_conf_Line'] = 'dcredit = -1'

# R-86533 RHEL-07-010150
default['rhel7STIG']['stigrule_86533']['Manage'] = true
default['rhel7STIG']['stigrule_86533']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed or new passwords are established, the new password must contain at least one special character."
default['rhel7STIG']['stigrule_86533']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86533']['Setting']['_etc_security_pwquality_conf_Path'] = '/etc/security/pwquality.conf'
default['rhel7STIG']['stigrule_86533']['Setting']['_etc_security_pwquality_conf_Regexp'] = '^ocredit'
default['rhel7STIG']['stigrule_86533']['Setting']['_etc_security_pwquality_conf_Line'] = 'ocredit = -1'

# R-86535 RHEL-07-010160
default['rhel7STIG']['stigrule_86535']['Manage'] = true
default['rhel7STIG']['stigrule_86535']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed a minimum of eight of the total number of characters must be changed."
default['rhel7STIG']['stigrule_86535']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86535']['Setting']['_etc_security_pwquality_conf_Path'] = '/etc/security/pwquality.conf'
default['rhel7STIG']['stigrule_86535']['Setting']['_etc_security_pwquality_conf_Regexp'] = '^difok'
default['rhel7STIG']['stigrule_86535']['Setting']['_etc_security_pwquality_conf_Line'] = 'difok = 8'

# R-86537 RHEL-07-010170
default['rhel7STIG']['stigrule_86537']['Manage'] = true
default['rhel7STIG']['stigrule_86537']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed a minimum of four character classes must be changed."
default['rhel7STIG']['stigrule_86537']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86537']['Setting']['_etc_security_pwquality_conf_Path'] = '/etc/security/pwquality.conf'
default['rhel7STIG']['stigrule_86537']['Setting']['_etc_security_pwquality_conf_Regexp'] = '^minclass'
default['rhel7STIG']['stigrule_86537']['Setting']['_etc_security_pwquality_conf_Line'] = 'minclass = 4'

# R-86539 RHEL-07-010180
default['rhel7STIG']['stigrule_86539']['Manage'] = true
default['rhel7STIG']['stigrule_86539']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed the number of repeating consecutive characters must not be more than three characters."
default['rhel7STIG']['stigrule_86539']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86539']['Setting']['_etc_security_pwquality_conf_Path'] = '/etc/security/pwquality.conf'
default['rhel7STIG']['stigrule_86539']['Setting']['_etc_security_pwquality_conf_Regexp'] = '^maxrepeat'
default['rhel7STIG']['stigrule_86539']['Setting']['_etc_security_pwquality_conf_Line'] = 'maxrepeat = 3'

# R-86541 RHEL-07-010190
default['rhel7STIG']['stigrule_86541']['Manage'] = true
default['rhel7STIG']['stigrule_86541']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed the number of repeating characters of the same character class must not be more than four characters."
default['rhel7STIG']['stigrule_86541']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86541']['Setting']['_etc_security_pwquality_conf_Path'] = '/etc/security/pwquality.conf'
default['rhel7STIG']['stigrule_86541']['Setting']['_etc_security_pwquality_conf_Regexp'] = '^maxclassrepeat'
default['rhel7STIG']['stigrule_86541']['Setting']['_etc_security_pwquality_conf_Line'] = 'maxclassrepeat = 4'

# R-86559 RHEL-07-010280
default['rhel7STIG']['stigrule_86559']['Manage'] = true
default['rhel7STIG']['stigrule_86559']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that passwords are a minimum of 15 characters in length."
default['rhel7STIG']['stigrule_86559']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86559']['Setting']['_etc_security_pwquality_conf_Path'] = '/etc/security/pwquality.conf'
default['rhel7STIG']['stigrule_86559']['Setting']['_etc_security_pwquality_conf_Regexp'] = '^minlen'
default['rhel7STIG']['stigrule_86559']['Setting']['_etc_security_pwquality_conf_Line'] = 'minlen = 15'

# R-86545 RHEL-07-010210
default['rhel7STIG']['stigrule_86545']['Manage'] = true
default['rhel7STIG']['stigrule_86545']['Title'] = "The Red Hat Enterprise Linux operating system must be configured to use the shadow file to store only encrypted representations of passwords."
default['rhel7STIG']['stigrule_86545']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86545']['Setting']['_etc_login_defs_Path'] = '/etc/login.defs'
default['rhel7STIG']['stigrule_86545']['Setting']['_etc_login_defs_Regexp'] = '^ENCRYPT_METHOD'
default['rhel7STIG']['stigrule_86545']['Setting']['_etc_login_defs_Line'] = 'ENCRYPT_METHOD SHA512'

# R-86549 RHEL-07-010230
default['rhel7STIG']['stigrule_86549']['Manage'] = true
default['rhel7STIG']['stigrule_86549']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that passwords for new users are restricted to a 24 hours/1 day minimum lifetime."
default['rhel7STIG']['stigrule_86549']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86549']['Setting']['_etc_login_defs_Path'] = '/etc/login.defs'
default['rhel7STIG']['stigrule_86549']['Setting']['_etc_login_defs_Regexp'] = '^PASS_MIN_DAYS'
default['rhel7STIG']['stigrule_86549']['Setting']['_etc_login_defs_Line'] = 'PASS_MIN_DAYS 1'

# R-86553 RHEL-07-010250
default['rhel7STIG']['stigrule_86553']['Manage'] = true
default['rhel7STIG']['stigrule_86553']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that passwords for new users are restricted to a 60-day maximum lifetime."
default['rhel7STIG']['stigrule_86553']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86553']['Setting']['_etc_login_defs_Path'] = '/etc/login.defs'
default['rhel7STIG']['stigrule_86553']['Setting']['_etc_login_defs_Regexp'] = '^PASS_MAX_DAYS'
default['rhel7STIG']['stigrule_86553']['Setting']['_etc_login_defs_Line'] = 'PASS_MAX_DAYS 60'

# R-86575 RHEL-07-010430
default['rhel7STIG']['stigrule_86575']['Manage'] = true
default['rhel7STIG']['stigrule_86575']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the delay between logon prompts following a failed console logon attempt is at least four seconds."
default['rhel7STIG']['stigrule_86575']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86575']['Setting']['_etc_login_defs_Path'] = '/etc/login.defs'
default['rhel7STIG']['stigrule_86575']['Setting']['_etc_login_defs_Regexp'] = '^FAIL_DELAY'
default['rhel7STIG']['stigrule_86575']['Setting']['_etc_login_defs_Line'] = 'FAIL_DELAY 4'

# R-86619 RHEL-07-020240
default['rhel7STIG']['stigrule_86619']['Manage'] = true
default['rhel7STIG']['stigrule_86619']['Title'] = "The Red Hat Enterprise Linux operating system must define default permissions for all authenticated users in such a way that the user can only read and modify their own files."
default['rhel7STIG']['stigrule_86619']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86619']['Setting']['_etc_login_defs_Path'] = '/etc/login.defs'
default['rhel7STIG']['stigrule_86619']['Setting']['_etc_login_defs_Regexp'] = '^UMASK'
default['rhel7STIG']['stigrule_86619']['Setting']['_etc_login_defs_Line'] = 'UMASK 077'

# R-86637 RHEL-07-020610
default['rhel7STIG']['stigrule_86637']['Manage'] = true
default['rhel7STIG']['stigrule_86637']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that all local interactive user accounts, upon creation, are assigned a home directory."
default['rhel7STIG']['stigrule_86637']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86637']['Setting']['_etc_login_defs_Path'] = '/etc/login.defs'
default['rhel7STIG']['stigrule_86637']['Setting']['_etc_login_defs_Regexp'] = '^CREATE_HOME'
default['rhel7STIG']['stigrule_86637']['Setting']['_etc_login_defs_Line'] = 'CREATE_HOME yes'

# R-86547 RHEL-07-010220
default['rhel7STIG']['stigrule_86547']['Manage'] = true
default['rhel7STIG']['stigrule_86547']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that user and group account administration utilities are configured to store only encrypted representations of passwords."
default['rhel7STIG']['stigrule_86547']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86547']['Setting']['_etc_libuser_conf_Path'] = '/etc/libuser.conf'
default['rhel7STIG']['stigrule_86547']['Setting']['_etc_libuser_conf_Section'] = 'defaults'
default['rhel7STIG']['stigrule_86547']['Setting']['_etc_libuser_conf_Option'] = 'crypt_style'
default['rhel7STIG']['stigrule_86547']['Setting']['_etc_libuser_conf_Value'] = 'sha512'

# R-86551 RHEL-07-010240
default['rhel7STIG']['stigrule_86551']['Manage'] = true
default['rhel7STIG']['stigrule_86551']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that passwords are restricted to a 24 hours/1 day minimum lifetime."
default['rhel7STIG']['stigrule_86551']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86551']['Setting']['chage__m_1_user_Command'] = "chage -m 1"

# R-86555 RHEL-07-010260
default['rhel7STIG']['stigrule_86555']['Manage'] = true
default['rhel7STIG']['stigrule_86555']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that existing passwords are restricted to a 60-day maximum lifetime."
default['rhel7STIG']['stigrule_86555']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86555']['Setting']['chage__M_60_user_Command'] = "chage -M 60"

# R-86563 RHEL-07-010300
default['rhel7STIG']['stigrule_86563']['Manage'] = true
default['rhel7STIG']['stigrule_86563']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the SSH daemon does not allow authentication using an empty password."
default['rhel7STIG']['stigrule_86563']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86563']['Setting']['PermitEmptyPasswords_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86563']['Setting']['PermitEmptyPasswords_Regexp'] = '^\s*(?i)PermitEmptyPasswords\s+'
default['rhel7STIG']['stigrule_86563']['Setting']['PermitEmptyPasswords_Line'] = 'PermitEmptyPasswords no'
default['rhel7STIG']['stigrule_86563']['Setting']['PermitEmptyPasswords_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86565 RHEL-07-010310
default['rhel7STIG']['stigrule_86565']['Manage'] = true
default['rhel7STIG']['stigrule_86565']['Title'] = "The Red Hat Enterprise Linux operating system must disable account identifiers (individuals, groups, roles, and devices) if the password expires."
default['rhel7STIG']['stigrule_86565']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86565']['Setting']['_etc_default_useradd_Path'] = '/etc/default/useradd'
default['rhel7STIG']['stigrule_86565']['Setting']['_etc_default_useradd_Regexp'] = '^INACTIVE'
default['rhel7STIG']['stigrule_86565']['Setting']['_etc_default_useradd_Line'] = 'INACTIVE=0'

# R-86577 RHEL-07-010440
default['rhel7STIG']['stigrule_86577']['Manage'] = true
default['rhel7STIG']['stigrule_86577']['Title'] = "The Red Hat Enterprise Linux operating system must not allow an unattended or automatic logon to the system via a graphical user interface."
default['rhel7STIG']['stigrule_86577']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86577']['Setting']['_etc_gdm_custom_conf_Path'] = '/etc/gdm/custom.conf'
default['rhel7STIG']['stigrule_86577']['Setting']['_etc_gdm_custom_conf_Section'] = 'daemon'
default['rhel7STIG']['stigrule_86577']['Setting']['_etc_gdm_custom_conf_Option'] = 'AutomaticLoginEnable'
default['rhel7STIG']['stigrule_86577']['Setting']['_etc_gdm_custom_conf_Value'] = 'false'
default['rhel7STIG']['stigrule_86577']['Setting']['_etc_gdm_custom_conf_Only_if'] = "rpm -q gdm"

# R-86579 RHEL-07-010450
default['rhel7STIG']['stigrule_86579']['Manage'] = true
default['rhel7STIG']['stigrule_86579']['Title'] = "The Red Hat Enterprise Linux operating system must not allow an unrestricted logon to the system."
default['rhel7STIG']['stigrule_86579']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86579']['Setting']['_etc_gdm_custom_conf_Path'] = '/etc/gdm/custom.conf'
default['rhel7STIG']['stigrule_86579']['Setting']['_etc_gdm_custom_conf_Section'] = 'daemon'
default['rhel7STIG']['stigrule_86579']['Setting']['_etc_gdm_custom_conf_Option'] = 'TimedLoginEnable'
default['rhel7STIG']['stigrule_86579']['Setting']['_etc_gdm_custom_conf_Value'] = 'false'
default['rhel7STIG']['stigrule_86579']['Setting']['_etc_gdm_custom_conf_Only_if'] = "rpm -q gdm"

# R-86581 RHEL-07-010460
default['rhel7STIG']['stigrule_86581']['Manage'] = true
default['rhel7STIG']['stigrule_86581']['Title'] = "The Red Hat Enterprise Linux operating system must not allow users to override SSH environment variables."
default['rhel7STIG']['stigrule_86581']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86581']['Setting']['PermitUserEnvironment_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86581']['Setting']['PermitUserEnvironment_Regexp'] = '^\s*(?i)PermitUserEnvironment\s+'
default['rhel7STIG']['stigrule_86581']['Setting']['PermitUserEnvironment_Line'] = 'PermitUserEnvironment no'
default['rhel7STIG']['stigrule_86581']['Setting']['PermitUserEnvironment_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86583 RHEL-07-010470
default['rhel7STIG']['stigrule_86583']['Manage'] = true
default['rhel7STIG']['stigrule_86583']['Title'] = "The Red Hat Enterprise Linux operating system must not allow a non-certificate trusted host SSH logon to the system."
default['rhel7STIG']['stigrule_86583']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86583']['Setting']['HostbasedAuthentication_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86583']['Setting']['HostbasedAuthentication_Regexp'] = '^\s*(?i)HostbasedAuthentication\s+'
default['rhel7STIG']['stigrule_86583']['Setting']['HostbasedAuthentication_Line'] = 'HostbasedAuthentication no'
default['rhel7STIG']['stigrule_86583']['Setting']['HostbasedAuthentication_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86591 RHEL-07-020000
default['rhel7STIG']['stigrule_86591']['Manage'] = true
default['rhel7STIG']['stigrule_86591']['Title'] = "The Red Hat Enterprise Linux operating system must not have the rsh-server package installed."
default['rhel7STIG']['stigrule_86591']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86591']['Setting']['rsh_server_PackageName'] = 'rsh-server'
default['rhel7STIG']['stigrule_86591']['Setting']['rsh_server_Action'] = :remove

# R-86593 RHEL-07-020010
default['rhel7STIG']['stigrule_86593']['Manage'] = true
default['rhel7STIG']['stigrule_86593']['Title'] = "The Red Hat Enterprise Linux operating system must not have the ypserv package installed."
default['rhel7STIG']['stigrule_86593']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86593']['Setting']['ypserv_PackageName'] = 'ypserv'
default['rhel7STIG']['stigrule_86593']['Setting']['ypserv_Action'] = :remove

# R-86597 RHEL-07-020030
# Edit email address.
default['rhel7STIG']['stigrule_86597']['Manage'] = true
default['rhel7STIG']['stigrule_86597']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that a file integrity tool verifies the baseline operating system configuration at least weekly."
default['rhel7STIG']['stigrule_86597']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86597']['Setting']['_etc_cron_daily_aide_Path'] = '/etc/cron.daily/aide'
default['rhel7STIG']['stigrule_86597']['Setting']['_etc_cron_daily_aide_Content'] = '#!/bin/bash

/usr/sbin/aide --check | /bin/mail -s "$HOSTNAME - Daily aide integrity check run" root'
default['rhel7STIG']['stigrule_86597']['Setting']['_etc_cron_daily_aide_Mode'] = '700'

default['rhel7STIG']['stigrule_86597']['Setting']['aide_PackageName'] = 'aide'
default['rhel7STIG']['stigrule_86597']['Setting']['aide_Action'] = :install

# R-86599 RHEL-07-020040
# Edit email address.
default['rhel7STIG']['stigrule_86599']['Manage'] = true
default['rhel7STIG']['stigrule_86599']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that designated personnel are notified if baseline configurations are changed in an unauthorized manner."
default['rhel7STIG']['stigrule_86599']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86599']['Setting']['_etc_cron_daily_aide_notify_Path'] = '/etc/cron.daily/aide'
default['rhel7STIG']['stigrule_86599']['Setting']['_etc_cron_daily_aide_notify_Content'] = '#!/bin/bash

/usr/sbin/aide --check | /bin/mail -s "$HOSTNAME - Daily aide integrity check run" root'
default['rhel7STIG']['stigrule_86599']['Setting']['_etc_cron_daily_aide_notify_Mode'] = '755'

default['rhel7STIG']['stigrule_86599']['Setting']['aide_notify_PackageName'] = 'aide'
default['rhel7STIG']['stigrule_86599']['Setting']['aide_notify_Action'] = :install

# R-86601 RHEL-07-020050
default['rhel7STIG']['stigrule_86601']['Manage'] = true
default['rhel7STIG']['stigrule_86601']['Title'] = "The Red Hat Enterprise Linux operating system must prevent the installation of software, patches, service packs, device drivers, or operating system components from a repository without verification they have been digitally signed using a certificate that is issued by a Certificate Authority (CA) that is recognized and approved by the organization."
default['rhel7STIG']['stigrule_86601']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86601']['Setting']['_etc_yum_conf_Path'] = '/etc/yum.conf'
default['rhel7STIG']['stigrule_86601']['Setting']['_etc_yum_conf_Section'] = 'main'
default['rhel7STIG']['stigrule_86601']['Setting']['_etc_yum_conf_Option'] = 'gpgcheck'
default['rhel7STIG']['stigrule_86601']['Setting']['_etc_yum_conf_Value'] = '1'

# R-86603 RHEL-07-020060
default['rhel7STIG']['stigrule_86603']['Manage'] = true
default['rhel7STIG']['stigrule_86603']['Title'] = "The Red Hat Enterprise Linux operating system must prevent the installation of software, patches, service packs, device drivers, or operating system components of local packages without verification they have been digitally signed using a certificate that is issued by a Certificate Authority (CA) that is recognized and approved by the organization."
default['rhel7STIG']['stigrule_86603']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86603']['Setting']['_etc_yum_conf_Path'] = '/etc/yum.conf'
default['rhel7STIG']['stigrule_86603']['Setting']['_etc_yum_conf_Section'] = 'main'
default['rhel7STIG']['stigrule_86603']['Setting']['_etc_yum_conf_Option'] = 'localpkg_gpgcheck'
default['rhel7STIG']['stigrule_86603']['Setting']['_etc_yum_conf_Value'] = '1'

# R-86611 RHEL-07-020200
default['rhel7STIG']['stigrule_86611']['Manage'] = true
default['rhel7STIG']['stigrule_86611']['Title'] = "The Red Hat Enterprise Linux operating system must remove all software components after updated versions have been installed."
default['rhel7STIG']['stigrule_86611']['Severity'] = 'low'
default['rhel7STIG']['stigrule_86611']['Setting']['_etc_yum_conf_Path'] = '/etc/yum.conf'
default['rhel7STIG']['stigrule_86611']['Setting']['_etc_yum_conf_Section'] = 'main'
default['rhel7STIG']['stigrule_86611']['Setting']['_etc_yum_conf_Option'] = 'clean_requirements_on_remove'
default['rhel7STIG']['stigrule_86611']['Setting']['_etc_yum_conf_Value'] = '1'

# R-86607 RHEL-07-020100
default['rhel7STIG']['stigrule_86607']['Manage'] = true
default['rhel7STIG']['stigrule_86607']['Title'] = "The Red Hat Enterprise Linux operating system must be configured to disable USB mass storage."
default['rhel7STIG']['stigrule_86607']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86607']['Setting']['_etc_modprobe_d_blacklist_conf_Path'] = '/etc/modprobe.d/blacklist.conf'
default['rhel7STIG']['stigrule_86607']['Setting']['_etc_modprobe_d_blacklist_conf_Regexp'] = '^blacklist'
default['rhel7STIG']['stigrule_86607']['Setting']['_etc_modprobe_d_blacklist_conf_Line'] = 'blacklist usb-storage'

# R-86609 RHEL-07-020110
default['rhel7STIG']['stigrule_86609']['Manage'] = true
default['rhel7STIG']['stigrule_86609']['Title'] = "The Red Hat Enterprise Linux operating system must disable the file system automounter unless required."
default['rhel7STIG']['stigrule_86609']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86609']['Setting']['autofs_disable_ServiceName'] = 'autofs'
default['rhel7STIG']['stigrule_86609']['Setting']['autofs_disable_Action'] = :disable

default['rhel7STIG']['stigrule_86609']['Setting']['autofs_stop_ServiceName'] = 'autofs'
default['rhel7STIG']['stigrule_86609']['Setting']['autofs_stop_Action'] = :stop

# R-86613 RHEL-07-020210
default['rhel7STIG']['stigrule_86613']['Manage'] = true
default['rhel7STIG']['stigrule_86613']['Title'] = "The Red Hat Enterprise Linux operating system must enable SELinux."
default['rhel7STIG']['stigrule_86613']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86613']['Setting']['_etc_selinux_config_Path'] = '/etc/selinux/config'
default['rhel7STIG']['stigrule_86613']['Setting']['_etc_selinux_config_Regexp'] = '^SELINUX='
default['rhel7STIG']['stigrule_86613']['Setting']['_etc_selinux_config_Line'] = 'SELINUX=enforcing'

# R-86615 RHEL-07-020220
default['rhel7STIG']['stigrule_86615']['Manage'] = true
default['rhel7STIG']['stigrule_86615']['Title'] = "The Red Hat Enterprise Linux operating system must enable the SELinux targeted policy."
default['rhel7STIG']['stigrule_86615']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86615']['Setting']['_etc_selinux_config_Path'] = '/etc/selinux/config'
default['rhel7STIG']['stigrule_86615']['Setting']['_etc_selinux_config_Regexp'] = '^SELINUXTYPE='
default['rhel7STIG']['stigrule_86615']['Setting']['_etc_selinux_config_Line'] = 'SELINUXTYPE=targeted'

# R-86617 RHEL-07-020230
default['rhel7STIG']['stigrule_86617']['Manage'] = true
default['rhel7STIG']['stigrule_86617']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the x86 Ctrl-Alt-Delete key sequence is disabled."
default['rhel7STIG']['stigrule_86617']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86617']['Setting']['systemctl_mask_ctrl_alt_del_target_Command'] = "systemctl mask ctrl-alt-del.target"
default['rhel7STIG']['stigrule_86617']['Setting']['systemctl_mask_ctrl_alt_del_target_Only_if'] = "! systemctl status ctrl-alt-del.target | grep -q 'Loaded: masked'"

default['rhel7STIG']['stigrule_86617']['Setting']['_etc_dconf_db_local_d_00_disable_CAD_Path'] = '/etc/dconf/db/local.d/00-disable-CAD'
default['rhel7STIG']['stigrule_86617']['Setting']['_etc_dconf_db_local_d_00_disable_CAD_Section'] = 'org/gnome/settings-daemon/plugins/media-keys'
default['rhel7STIG']['stigrule_86617']['Setting']['_etc_dconf_db_local_d_00_disable_CAD_Option'] = 'logout'
default['rhel7STIG']['stigrule_86617']['Setting']['_etc_dconf_db_local_d_00_disable_CAD_Value'] = '\'\''
default['rhel7STIG']['stigrule_86617']['Setting']['_etc_dconf_db_local_d_00_disable_CAD_Only_if'] = "rpm -q dconf"

# R-86675 RHEL-07-021100
default['rhel7STIG']['stigrule_86675']['Manage'] = true
default['rhel7STIG']['stigrule_86675']['Title'] = "The Red Hat Enterprise Linux operating system must have cron logging implemented."
default['rhel7STIG']['stigrule_86675']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86675']['Setting']['_etc_rsyslog_conf_Path'] = '/etc/rsyslog.conf'
default['rhel7STIG']['stigrule_86675']['Setting']['_etc_rsyslog_conf_Regexp'] = '^cron\.\* '
default['rhel7STIG']['stigrule_86675']['Setting']['_etc_rsyslog_conf_Line'] = 'cron.* /var/log/cron.log'

# R-86677 RHEL-07-021110
default['rhel7STIG']['stigrule_86677']['Manage'] = true
default['rhel7STIG']['stigrule_86677']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the cron.allow file, if it exists, is owned by root."
default['rhel7STIG']['stigrule_86677']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86677']['Setting']['_etc_cron_allow_Path'] = '/etc/cron.allow'
default['rhel7STIG']['stigrule_86677']['Setting']['_etc_cron_allow_Owner'] = 'root'
default['rhel7STIG']['stigrule_86677']['Setting']['_etc_cron_allow_Only_if'] = "[[ -e /etc/cron.allow ]] && exit 0"

# R-86679 RHEL-07-021120
default['rhel7STIG']['stigrule_86679']['Manage'] = true
default['rhel7STIG']['stigrule_86679']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the cron.allow file, if it exists, is group-owned by root."
default['rhel7STIG']['stigrule_86679']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86679']['Setting']['_etc_cron_allow_Path'] = '/etc/cron.allow'
default['rhel7STIG']['stigrule_86679']['Setting']['_etc_cron_allow_Group'] = 'root'
default['rhel7STIG']['stigrule_86679']['Setting']['_etc_cron_allow_Only_if'] = "[[ -e /etc/cron.allow ]] && exit 0"

# R-86681 RHEL-07-021300
# If kernel core dumps are required, document the need with the ISSO.
default['rhel7STIG']['stigrule_86681']['Manage'] = true
default['rhel7STIG']['stigrule_86681']['Title'] = "The Red Hat Enterprise Linux operating system must disable Kernel core dumps unless needed."
default['rhel7STIG']['stigrule_86681']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86681']['Setting']['kdump_disable_ServiceName'] = 'kdump'
default['rhel7STIG']['stigrule_86681']['Setting']['kdump_disable_Action'] = :disable

default['rhel7STIG']['stigrule_86681']['Setting']['kdump_stop_ServiceName'] = 'kdump'
default['rhel7STIG']['stigrule_86681']['Setting']['kdump_stop_Action'] = :stop

# R-86689 RHEL-07-021340
default['rhel7STIG']['stigrule_86689']['Manage'] = false
default['rhel7STIG']['stigrule_86689']['Title'] = "The Red Hat Enterprise Linux operating system must use a separate file system for /tmp (or equivalent)."
default['rhel7STIG']['stigrule_86689']['Severity'] = 'low'
default['rhel7STIG']['stigrule_86689']['Setting']['tmp_mount_ServiceName'] = 'tmp.mount'
default['rhel7STIG']['stigrule_86689']['Setting']['tmp_mount_Action'] = :enable

# R-86701 RHEL-07-021710
default['rhel7STIG']['stigrule_86701']['Manage'] = true
default['rhel7STIG']['stigrule_86701']['Title'] = "The Red Hat Enterprise Linux operating system must not have the telnet-server package installed."
default['rhel7STIG']['stigrule_86701']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86701']['Setting']['telnet_server_PackageName'] = 'telnet-server'
default['rhel7STIG']['stigrule_86701']['Setting']['telnet_server_Action'] = :remove

# R-86703 RHEL-07-030000
default['rhel7STIG']['stigrule_86703']['Manage'] = false
default['rhel7STIG']['stigrule_86703']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that auditing is configured to produce records containing information to establish what type of events occurred, where the events occurred, the source of the events, and the outcome of the events. These audit records must also identify individual identities of group account users."
default['rhel7STIG']['stigrule_86703']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86703']['Setting']['auditd_enable_ServiceName'] = 'auditd'
default['rhel7STIG']['stigrule_86703']['Setting']['auditd_enable_Action'] = :enable

default['rhel7STIG']['stigrule_86703']['Setting']['auditd_start_ServiceName'] = 'auditd'
default['rhel7STIG']['stigrule_86703']['Setting']['auditd_start_Action'] = :start

# R-86705 RHEL-07-030010
default['rhel7STIG']['stigrule_86705']['Manage'] = true
default['rhel7STIG']['stigrule_86705']['Title'] = "The Red Hat Enterprise Linux operating system must shut down upon audit processing failure, unless availability is an overriding concern. If availability is a concern, the system must alert the designated staff (System Administrator [SA] and Information System Security Officer [ISSO] at a minimum) in the event of an audit processing failure."
default['rhel7STIG']['stigrule_86705']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86705']['Setting']['_etc_audit_rules_d_audit_rules_critical_error_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86705']['Setting']['_etc_audit_rules_d_audit_rules_critical_error_Regexp'] = '^-f '
default['rhel7STIG']['stigrule_86705']['Setting']['_etc_audit_rules_d_audit_rules_critical_error_Line'] = '-f 2'

# R-86707 RHEL-07-030300
# Ensure to set the IP address of the log aggregation server.
default['rhel7STIG']['stigrule_86707']['Manage'] = false
default['rhel7STIG']['stigrule_86707']['Title'] = "The Red Hat Enterprise Linux operating system must off-load audit records onto a different system or media from the system being audited."
default['rhel7STIG']['stigrule_86707']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86707']['Setting']['_etc_audisp_audisp_remote_conf_Path'] = '/etc/audisp/audisp-remote.conf'
default['rhel7STIG']['stigrule_86707']['Setting']['_etc_audisp_audisp_remote_conf_Regexp'] = '^remote_server = '
default['rhel7STIG']['stigrule_86707']['Setting']['_etc_audisp_audisp_remote_conf_Line'] = 'remote_server = 192.0.2.255'

# R-86709 RHEL-07-030310
# Ensure to set the IP address of the log aggregation server.
default['rhel7STIG']['stigrule_86709']['Manage'] = true
default['rhel7STIG']['stigrule_86709']['Title'] = "The Red Hat Enterprise Linux operating system must encrypt the transfer of audit records off-loaded onto a different system or media from the system being audited."
default['rhel7STIG']['stigrule_86709']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86709']['Setting']['_etc_audisp_audisp_remote_conf_Path'] = '/etc/audisp/audisp-remote.conf'
default['rhel7STIG']['stigrule_86709']['Setting']['_etc_audisp_audisp_remote_conf_Regexp'] = '^enable_krb5 = '
default['rhel7STIG']['stigrule_86709']['Setting']['_etc_audisp_audisp_remote_conf_Line'] = 'enable_krb5 = yes'

# R-86711 RHEL-07-030320
default['rhel7STIG']['stigrule_86711']['Manage'] = true
default['rhel7STIG']['stigrule_86711']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the audit system takes appropriate action when the audit storage volume is full."
default['rhel7STIG']['stigrule_86711']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86711']['Setting']['_etc_audisp_audisp_remote_conf_Path'] = '/etc/audisp/audisp-remote.conf'
default['rhel7STIG']['stigrule_86711']['Setting']['_etc_audisp_audisp_remote_conf_Regexp'] = '^disk_full_action = '
default['rhel7STIG']['stigrule_86711']['Setting']['_etc_audisp_audisp_remote_conf_Line'] = 'disk_full_action = single'

# R-87815 RHEL-07-030321
default['rhel7STIG']['stigrule_87815']['Manage'] = true
default['rhel7STIG']['stigrule_87815']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the audit system takes appropriate action when there is an error sending audit records to a remote system."
default['rhel7STIG']['stigrule_87815']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_87815']['Setting']['_etc_audisp_audisp_remote_conf_Path'] = '/etc/audisp/audisp-remote.conf'
default['rhel7STIG']['stigrule_87815']['Setting']['_etc_audisp_audisp_remote_conf_Regexp'] = '^network_failure_action = '
default['rhel7STIG']['stigrule_87815']['Setting']['_etc_audisp_audisp_remote_conf_Line'] = 'network_failure_action = syslog'

# R-86715 RHEL-07-030340
default['rhel7STIG']['stigrule_86715']['Manage'] = true
default['rhel7STIG']['stigrule_86715']['Title'] = "The Red Hat Enterprise Linux operating system must immediately notify the System Administrator (SA) and Information System Security Officer (ISSO) (at a minimum) via email when the threshold for the repository maximum audit record storage capacity is reached."
default['rhel7STIG']['stigrule_86715']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86715']['Setting']['_etc_audit_auditd_conf_Path'] = '/etc/audit/auditd.conf'
default['rhel7STIG']['stigrule_86715']['Setting']['_etc_audit_auditd_conf_Regexp'] = '^space_left_action = '
default['rhel7STIG']['stigrule_86715']['Setting']['_etc_audit_auditd_conf_Line'] = 'space_left_action = email'

# R-86717 RHEL-07-030350
default['rhel7STIG']['stigrule_86717']['Manage'] = true
default['rhel7STIG']['stigrule_86717']['Title'] = "The Red Hat Enterprise Linux operating system must immediately notify the System Administrator (SA) and Information System Security Officer (ISSO) (at a minimum) when the threshold for the repository maximum audit record storage capacity is reached."
default['rhel7STIG']['stigrule_86717']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86717']['Setting']['_etc_audit_auditd_conf_Path'] = '/etc/audit/auditd.conf'
default['rhel7STIG']['stigrule_86717']['Setting']['_etc_audit_auditd_conf_Regexp'] = '^action_mail_acct = '
default['rhel7STIG']['stigrule_86717']['Setting']['_etc_audit_auditd_conf_Line'] = 'action_mail_acct = root'

# R-86719 RHEL-07-030360
default['rhel7STIG']['stigrule_86719']['Manage'] = true
default['rhel7STIG']['stigrule_86719']['Title'] = "The Red Hat Enterprise Linux operating system must audit all executions of privileged functions."
default['rhel7STIG']['stigrule_86719']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_euid_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_euid_b32_Regexp'] = '^-a always,exit -F arch=b32 -S execve -C uid!=euid -F euid=0 -k setuid$'
default['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_euid_b32_Line'] = '-a always,exit -F arch=b32 -S execve -C uid!=euid -F euid=0 -k setuid'

default['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_euid_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_euid_b64_Regexp'] = '^-a always,exit -F arch=b64 -S execve -C uid!=euid -F euid=0 -k setuid$'
default['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_euid_b64_Line'] = '-a always,exit -F arch=b64 -S execve -C uid!=euid -F euid=0 -k setuid'

default['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_egid_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_egid_b32_Regexp'] = '^-a always,exit -F arch=b32 -S execve -C gid!=egid -F egid=0 -k setgid$'
default['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_egid_b32_Line'] = '-a always,exit -F arch=b32 -S execve -C gid!=egid -F egid=0 -k setgid'

default['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_egid_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_egid_b64_Regexp'] = '^-a always,exit -F arch=b64 -S execve -C gid!=egid -F egid=0 -k setgid$'
default['rhel7STIG']['stigrule_86719']['Setting']['_etc_audit_rules_d_audit_rules_egid_b64_Line'] = '-a always,exit -F arch=b64 -S execve -C gid!=egid -F egid=0 -k setgid'

# R-86721 RHEL-07-030370
default['rhel7STIG']['stigrule_86721']['Manage'] = true
default['rhel7STIG']['stigrule_86721']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the chown syscall."
default['rhel7STIG']['stigrule_86721']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86721']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86721']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S chown -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86721']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S chown -F auid>=1000 -F auid!=4294967295 -k perm_mod'

# R-86723 RHEL-07-030380
default['rhel7STIG']['stigrule_86723']['Manage'] = true
default['rhel7STIG']['stigrule_86723']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the fchown syscall."
default['rhel7STIG']['stigrule_86723']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86723']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86723']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S fchown -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86723']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S fchown -F auid>=1000 -F auid!=4294967295 -k perm_mod'

# R-86725 RHEL-07-030390
default['rhel7STIG']['stigrule_86725']['Manage'] = true
default['rhel7STIG']['stigrule_86725']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the lchown syscall."
default['rhel7STIG']['stigrule_86725']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86725']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86725']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S lchown -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86725']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S lchown -F auid>=1000 -F auid!=4294967295 -k perm_mod'

# R-86727 RHEL-07-030400
default['rhel7STIG']['stigrule_86727']['Manage'] = true
default['rhel7STIG']['stigrule_86727']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the fchownat syscall."
default['rhel7STIG']['stigrule_86727']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86727']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86727']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S fchownat -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86727']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S fchownat -F auid>=1000 -F auid!=4294967295 -k perm_mod'

# R-86729 RHEL-07-030410
default['rhel7STIG']['stigrule_86729']['Manage'] = true
default['rhel7STIG']['stigrule_86729']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the chmod syscall."
default['rhel7STIG']['stigrule_86729']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86729']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86729']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S chmod -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86729']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S chmod -F auid>=1000 -F auid!=4294967295 -k perm_mod'

# R-86731 RHEL-07-030420
default['rhel7STIG']['stigrule_86731']['Manage'] = true
default['rhel7STIG']['stigrule_86731']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the fchmod syscall."
default['rhel7STIG']['stigrule_86731']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86731']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86731']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S fchmod -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86731']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S fchmod -F auid>=1000 -F auid!=4294967295 -k perm_mod'

# R-86733 RHEL-07-030430
default['rhel7STIG']['stigrule_86733']['Manage'] = true
default['rhel7STIG']['stigrule_86733']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the fchmodat syscall."
default['rhel7STIG']['stigrule_86733']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86733']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86733']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S fchmodat -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86733']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S fchmodat -F auid>=1000 -F auid!=4294967295 -k perm_mod'

# R-86735 RHEL-07-030440
default['rhel7STIG']['stigrule_86735']['Manage'] = true
default['rhel7STIG']['stigrule_86735']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the setxattr syscall."
default['rhel7STIG']['stigrule_86735']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86735']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86735']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S setxattr -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86735']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S setxattr -F auid>=1000 -F auid!=4294967295 -k perm_mod'

# R-86737 RHEL-07-030450
default['rhel7STIG']['stigrule_86737']['Manage'] = true
default['rhel7STIG']['stigrule_86737']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the fsetxattr syscall."
default['rhel7STIG']['stigrule_86737']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86737']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86737']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S fsetxattr -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86737']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S fsetxattr -F auid>=1000 -F auid!=4294967295 -k perm_mod'

# R-86739 RHEL-07-030460
default['rhel7STIG']['stigrule_86739']['Manage'] = true
default['rhel7STIG']['stigrule_86739']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the lsetxattr syscall."
default['rhel7STIG']['stigrule_86739']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86739']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86739']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S lsetxattr -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86739']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S lsetxattr -F auid>=1000 -F auid!=4294967295 -k perm_mod'

# R-86741 RHEL-07-030470
default['rhel7STIG']['stigrule_86741']['Manage'] = true
default['rhel7STIG']['stigrule_86741']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the removexattr syscall."
default['rhel7STIG']['stigrule_86741']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86741']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86741']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S removexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86741']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S removexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod'

# R-86743 RHEL-07-030480
default['rhel7STIG']['stigrule_86743']['Manage'] = true
default['rhel7STIG']['stigrule_86743']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the fremovexattr syscall."
default['rhel7STIG']['stigrule_86743']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86743']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86743']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S fremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86743']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S fremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod'

# R-86745 RHEL-07-030490
default['rhel7STIG']['stigrule_86745']['Manage'] = true
default['rhel7STIG']['stigrule_86745']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the lremovexattr syscall."
default['rhel7STIG']['stigrule_86745']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86745']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86745']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S lremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86745']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S lremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod'

# R-86811 RHEL-07-030820
default['rhel7STIG']['stigrule_86811']['Manage'] = true
default['rhel7STIG']['stigrule_86811']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the init_module syscall."
default['rhel7STIG']['stigrule_86811']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86811']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86811']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S init_module -k module-change$'
default['rhel7STIG']['stigrule_86811']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S init_module -k module-change'

# R-86813 RHEL-07-030830
default['rhel7STIG']['stigrule_86813']['Manage'] = true
default['rhel7STIG']['stigrule_86813']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the delete_module syscall."
default['rhel7STIG']['stigrule_86813']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86813']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86813']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S delete_module -k module-change$'
default['rhel7STIG']['stigrule_86813']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S delete_module -k module-change'

# R-86823 RHEL-07-030880
default['rhel7STIG']['stigrule_86823']['Manage'] = true
default['rhel7STIG']['stigrule_86823']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the rename syscall."
default['rhel7STIG']['stigrule_86823']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86823']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86823']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S rename -F auid>=1000 -F auid!=4294967295 -k delete$'
default['rhel7STIG']['stigrule_86823']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S rename -F auid>=1000 -F auid!=4294967295 -k delete'

# R-86825 RHEL-07-030890
default['rhel7STIG']['stigrule_86825']['Manage'] = true
default['rhel7STIG']['stigrule_86825']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the renameat syscall."
default['rhel7STIG']['stigrule_86825']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86825']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86825']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S renameat -F auid>=1000 -F auid!=4294967295 -k delete$'
default['rhel7STIG']['stigrule_86825']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S renameat -F auid>=1000 -F auid!=4294967295 -k delete'

# R-86827 RHEL-07-030900
default['rhel7STIG']['stigrule_86827']['Manage'] = true
default['rhel7STIG']['stigrule_86827']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the rmdir syscall."
default['rhel7STIG']['stigrule_86827']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86827']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86827']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S rmdir -F auid>=1000 -F auid!=4294967295 -k delete$'
default['rhel7STIG']['stigrule_86827']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S rmdir -F auid>=1000 -F auid!=4294967295 -k delete'

# R-86829 RHEL-07-030910
default['rhel7STIG']['stigrule_86829']['Manage'] = true
default['rhel7STIG']['stigrule_86829']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the unlink syscall."
default['rhel7STIG']['stigrule_86829']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86829']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86829']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S unlink -F auid>=1000 -F auid!=4294967295 -k delete$'
default['rhel7STIG']['stigrule_86829']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S unlink -F auid>=1000 -F auid!=4294967295 -k delete'

# R-86831 RHEL-07-030920
default['rhel7STIG']['stigrule_86831']['Manage'] = true
default['rhel7STIG']['stigrule_86831']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the unlinkat syscall."
default['rhel7STIG']['stigrule_86831']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86831']['Setting']['_etc_audit_rules_d_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86831']['Setting']['_etc_audit_rules_d_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S unlinkat -F auid>=1000 -F auid!=4294967295 -k delete$'
default['rhel7STIG']['stigrule_86831']['Setting']['_etc_audit_rules_d_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S unlinkat -F auid>=1000 -F auid!=4294967295 -k delete'

default['rhel7STIG']['stigrule_86721']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86721']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S chown -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86721']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S chown -F auid>=1000 -F auid!=4294967295 -k perm_mod'

default['rhel7STIG']['stigrule_86723']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86723']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S fchown -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86723']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S fchown -F auid>=1000 -F auid!=4294967295 -k perm_mod'

default['rhel7STIG']['stigrule_86725']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86725']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S lchown -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86725']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S lchown -F auid>=1000 -F auid!=4294967295 -k perm_mod'

default['rhel7STIG']['stigrule_86727']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86727']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S fchownat -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86727']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S fchownat -F auid>=1000 -F auid!=4294967295 -k perm_mod'

default['rhel7STIG']['stigrule_86729']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86729']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S chmod -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86729']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S chmod -F auid>=1000 -F auid!=4294967295 -k perm_mod'

default['rhel7STIG']['stigrule_86731']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86731']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S fchmod -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86731']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S fchmod -F auid>=1000 -F auid!=4294967295 -k perm_mod'

default['rhel7STIG']['stigrule_86733']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86733']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S fchmodat -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86733']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S fchmodat -F auid>=1000 -F auid!=4294967295 -k perm_mod'

default['rhel7STIG']['stigrule_86735']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86735']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S setxattr -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86735']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S setxattr -F auid>=1000 -F auid!=4294967295 -k perm_mod'

default['rhel7STIG']['stigrule_86737']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86737']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S fsetxattr -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86737']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S fsetxattr -F auid>=1000 -F auid!=4294967295 -k perm_mod'

default['rhel7STIG']['stigrule_86739']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86739']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S lsetxattr -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86739']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S lsetxattr -F auid>=1000 -F auid!=4294967295 -k perm_mod'

default['rhel7STIG']['stigrule_86741']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86741']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S removexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86741']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S removexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod'

default['rhel7STIG']['stigrule_86743']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86743']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S fremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86743']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S fremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod'

default['rhel7STIG']['stigrule_86745']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86745']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S lremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod$'
default['rhel7STIG']['stigrule_86745']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S lremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod'

default['rhel7STIG']['stigrule_86811']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86811']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S init_module -k module-change$'
default['rhel7STIG']['stigrule_86811']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S init_module -k module-change'

default['rhel7STIG']['stigrule_86813']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86813']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S delete_module -k module-change$'
default['rhel7STIG']['stigrule_86813']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S delete_module -k module-change'

default['rhel7STIG']['stigrule_86823']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86823']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S rename -F auid>=1000 -F auid!=4294967295 -k delete$'
default['rhel7STIG']['stigrule_86823']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S rename -F auid>=1000 -F auid!=4294967295 -k delete'

default['rhel7STIG']['stigrule_86825']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86825']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S renameat -F auid>=1000 -F auid!=4294967295 -k delete$'
default['rhel7STIG']['stigrule_86825']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S renameat -F auid>=1000 -F auid!=4294967295 -k delete'

default['rhel7STIG']['stigrule_86827']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86827']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S rmdir -F auid>=1000 -F auid!=4294967295 -k delete$'
default['rhel7STIG']['stigrule_86827']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S rmdir -F auid>=1000 -F auid!=4294967295 -k delete'

default['rhel7STIG']['stigrule_86829']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86829']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S unlink -F auid>=1000 -F auid!=4294967295 -k delete$'
default['rhel7STIG']['stigrule_86829']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S unlink -F auid>=1000 -F auid!=4294967295 -k delete'

default['rhel7STIG']['stigrule_86831']['Setting']['_etc_audit_rules_d_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86831']['Setting']['_etc_audit_rules_d_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S unlinkat -F auid>=1000 -F auid!=4294967295 -k delete$'
default['rhel7STIG']['stigrule_86831']['Setting']['_etc_audit_rules_d_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S unlinkat -F auid>=1000 -F auid!=4294967295 -k delete'

# R-86747 RHEL-07-030500
default['rhel7STIG']['stigrule_86747']['Manage'] = true
default['rhel7STIG']['stigrule_86747']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the creat syscall."
default['rhel7STIG']['stigrule_86747']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Regexp'] = '^-a always,exit -F arch=b32 -S creat -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Line'] = '-a always,exit -F arch=b32 -S creat -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access'

# R-86749 RHEL-07-030510
default['rhel7STIG']['stigrule_86749']['Manage'] = true
default['rhel7STIG']['stigrule_86749']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the open syscall."
default['rhel7STIG']['stigrule_86749']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Regexp'] = '^-a always,exit -F arch=b32 -S open -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Line'] = '-a always,exit -F arch=b32 -S open -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access'

# R-86751 RHEL-07-030520
default['rhel7STIG']['stigrule_86751']['Manage'] = true
default['rhel7STIG']['stigrule_86751']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the openat syscall."
default['rhel7STIG']['stigrule_86751']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Regexp'] = '^-a always,exit -F arch=b32 -S openat -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Line'] = '-a always,exit -F arch=b32 -S openat -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access'

# R-86753 RHEL-07-030530
default['rhel7STIG']['stigrule_86753']['Manage'] = true
default['rhel7STIG']['stigrule_86753']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the open_by_handle_at syscall."
default['rhel7STIG']['stigrule_86753']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Regexp'] = '^-a always,exit -F arch=b32 -S open_by_handle_at -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Line'] = '-a always,exit -F arch=b32 -S open_by_handle_at -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access'

# R-86755 RHEL-07-030540
default['rhel7STIG']['stigrule_86755']['Manage'] = true
default['rhel7STIG']['stigrule_86755']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the truncate syscall."
default['rhel7STIG']['stigrule_86755']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Regexp'] = '^-a always,exit -F arch=b32 -S truncate -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Line'] = '-a always,exit -F arch=b32 -S truncate -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access'

# R-86757 RHEL-07-030550
default['rhel7STIG']['stigrule_86757']['Manage'] = true
default['rhel7STIG']['stigrule_86757']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the ftruncate syscall."
default['rhel7STIG']['stigrule_86757']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Regexp'] = '^-a always,exit -F arch=b32 -S ftruncate -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b32_Line'] = '-a always,exit -F arch=b32 -S ftruncate -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Regexp'] = '^-a always,exit -F arch=b64 -S creat -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Line'] = '-a always,exit -F arch=b64 -S creat -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Regexp'] = '^-a always,exit -F arch=b64 -S open -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Line'] = '-a always,exit -F arch=b64 -S open -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Regexp'] = '^-a always,exit -F arch=b64 -S openat -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Line'] = '-a always,exit -F arch=b64 -S openat -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Regexp'] = '^-a always,exit -F arch=b64 -S open_by_handle_at -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Line'] = '-a always,exit -F arch=b64 -S open_by_handle_at -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Regexp'] = '^-a always,exit -F arch=b64 -S truncate -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Line'] = '-a always,exit -F arch=b64 -S truncate -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Regexp'] = '^-a always,exit -F arch=b64 -S ftruncate -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EPERM_b64_Line'] = '-a always,exit -F arch=b64 -S ftruncate -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Regexp'] = '^-a always,exit -F arch=b32 -S creat -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Line'] = '-a always,exit -F arch=b32 -S creat -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Regexp'] = '^-a always,exit -F arch=b32 -S open -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Line'] = '-a always,exit -F arch=b32 -S open -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Regexp'] = '^-a always,exit -F arch=b32 -S openat -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Line'] = '-a always,exit -F arch=b32 -S openat -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Regexp'] = '^-a always,exit -F arch=b32 -S open_by_handle_at -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Line'] = '-a always,exit -F arch=b32 -S open_by_handle_at -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Regexp'] = '^-a always,exit -F arch=b32 -S truncate -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Line'] = '-a always,exit -F arch=b32 -S truncate -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Regexp'] = '^-a always,exit -F arch=b32 -S ftruncate -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b32_Line'] = '-a always,exit -F arch=b32 -S ftruncate -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Regexp'] = '^-a always,exit -F arch=b64 -S creat -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86747']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Line'] = '-a always,exit -F arch=b64 -S creat -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Regexp'] = '^-a always,exit -F arch=b64 -S open -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86749']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Line'] = '-a always,exit -F arch=b64 -S open -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Regexp'] = '^-a always,exit -F arch=b64 -S openat -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86751']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Line'] = '-a always,exit -F arch=b64 -S openat -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Regexp'] = '^-a always,exit -F arch=b64 -S open_by_handle_at -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86753']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Line'] = '-a always,exit -F arch=b64 -S open_by_handle_at -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Regexp'] = '^-a always,exit -F arch=b64 -S truncate -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86755']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Line'] = '-a always,exit -F arch=b64 -S truncate -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access'

default['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Regexp'] = '^-a always,exit -F arch=b64 -S ftruncate -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access$'
default['rhel7STIG']['stigrule_86757']['Setting']['_etc_audit_rules_d_audit_rules_EACCES_b64_Line'] = '-a always,exit -F arch=b64 -S ftruncate -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access'

# R-86759 RHEL-07-030560
default['rhel7STIG']['stigrule_86759']['Manage'] = true
default['rhel7STIG']['stigrule_86759']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the semanage command."
default['rhel7STIG']['stigrule_86759']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86759']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86759']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/sbin/semanage -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change$'
default['rhel7STIG']['stigrule_86759']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/sbin/semanage -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change'

# R-86761 RHEL-07-030570
default['rhel7STIG']['stigrule_86761']['Manage'] = true
default['rhel7STIG']['stigrule_86761']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the setsebool command."
default['rhel7STIG']['stigrule_86761']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86761']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86761']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/sbin/setsebool -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change$'
default['rhel7STIG']['stigrule_86761']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/sbin/setsebool -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change'

# R-86763 RHEL-07-030580
default['rhel7STIG']['stigrule_86763']['Manage'] = true
default['rhel7STIG']['stigrule_86763']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the chcon command."
default['rhel7STIG']['stigrule_86763']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86763']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86763']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/bin/chcon -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change$'
default['rhel7STIG']['stigrule_86763']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/bin/chcon -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change'

# R-86765 RHEL-07-030590
default['rhel7STIG']['stigrule_86765']['Manage'] = true
default['rhel7STIG']['stigrule_86765']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the setfiles command."
default['rhel7STIG']['stigrule_86765']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86765']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86765']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/sbin/setfiles -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change$'
default['rhel7STIG']['stigrule_86765']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/sbin/setfiles -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change'

# R-86769 RHEL-07-030610
default['rhel7STIG']['stigrule_86769']['Manage'] = true
default['rhel7STIG']['stigrule_86769']['Title'] = "The Red Hat Enterprise Linux operating system must generate audit records for all unsuccessful account access events."
default['rhel7STIG']['stigrule_86769']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86769']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86769']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-w /var/run/faillock -p wa -k logins$'
default['rhel7STIG']['stigrule_86769']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-w /var/run/faillock -p wa -k logins'

# R-86771 RHEL-07-030620
default['rhel7STIG']['stigrule_86771']['Manage'] = true
default['rhel7STIG']['stigrule_86771']['Title'] = "The Red Hat Enterprise Linux operating system must generate audit records for all successful account access events."
default['rhel7STIG']['stigrule_86771']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86771']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86771']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-w /var/log/lastlog -p wa -k logins$'
default['rhel7STIG']['stigrule_86771']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-w /var/log/lastlog -p wa -k logins'

# R-86773 RHEL-07-030630
default['rhel7STIG']['stigrule_86773']['Manage'] = true
default['rhel7STIG']['stigrule_86773']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the passwd command."
default['rhel7STIG']['stigrule_86773']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86773']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86773']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/bin/passwd -F perm=x -F auid>=1000 -F auid!=4294967295 -k privileged-passwd$'
default['rhel7STIG']['stigrule_86773']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/bin/passwd -F perm=x -F auid>=1000 -F auid!=4294967295 -k privileged-passwd'

# R-86775 RHEL-07-030640
default['rhel7STIG']['stigrule_86775']['Manage'] = true
default['rhel7STIG']['stigrule_86775']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the unix_chkpwd command."
default['rhel7STIG']['stigrule_86775']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86775']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86775']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/sbin/unix_chkpwd -F auid>=1000 -F auid!=4294967295 -k privileged-passwd$'
default['rhel7STIG']['stigrule_86775']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/sbin/unix_chkpwd -F auid>=1000 -F auid!=4294967295 -k privileged-passwd'

# R-86777 RHEL-07-030650
default['rhel7STIG']['stigrule_86777']['Manage'] = true
default['rhel7STIG']['stigrule_86777']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the gpasswd command."
default['rhel7STIG']['stigrule_86777']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86777']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86777']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/bin/gpasswd -F perm=x -F auid>=1000 -F auid!=4294967295 -k privileged-passwd$'
default['rhel7STIG']['stigrule_86777']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/bin/gpasswd -F perm=x -F auid>=1000 -F auid!=4294967295 -k privileged-passwd'

# R-86779 RHEL-07-030660
default['rhel7STIG']['stigrule_86779']['Manage'] = true
default['rhel7STIG']['stigrule_86779']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the chage command."
default['rhel7STIG']['stigrule_86779']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86779']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86779']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/bin/chage -F perm=x -F auid>=1000 -F auid!=4294967295 -k privileged-passwd$'
default['rhel7STIG']['stigrule_86779']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/bin/chage -F perm=x -F auid>=1000 -F auid!=4294967295 -k privileged-passwd'

# R-86781 RHEL-07-030670
default['rhel7STIG']['stigrule_86781']['Manage'] = true
default['rhel7STIG']['stigrule_86781']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the userhelper command."
default['rhel7STIG']['stigrule_86781']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86781']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86781']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/sbin/userhelper -F perm=x -F auid>=1000 -F auid!=4294967295 -k privileged-passwd$'
default['rhel7STIG']['stigrule_86781']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/sbin/userhelper -F perm=x -F auid>=1000 -F auid!=4294967295 -k privileged-passwd'

# R-86783 RHEL-07-030680
default['rhel7STIG']['stigrule_86783']['Manage'] = true
default['rhel7STIG']['stigrule_86783']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the su command."
default['rhel7STIG']['stigrule_86783']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86783']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86783']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/bin/su -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change$'
default['rhel7STIG']['stigrule_86783']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/bin/su -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change'

# R-86785 RHEL-07-030690
default['rhel7STIG']['stigrule_86785']['Manage'] = true
default['rhel7STIG']['stigrule_86785']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the sudo command."
default['rhel7STIG']['stigrule_86785']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86785']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86785']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/bin/sudo -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change$'
default['rhel7STIG']['stigrule_86785']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/bin/sudo -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change'

# R-86789 RHEL-07-030710
default['rhel7STIG']['stigrule_86789']['Manage'] = true
default['rhel7STIG']['stigrule_86789']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the newgrp command."
default['rhel7STIG']['stigrule_86789']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86789']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86789']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/bin/newgrp -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change$'
default['rhel7STIG']['stigrule_86789']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/bin/newgrp -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change'

# R-86791 RHEL-07-030720
default['rhel7STIG']['stigrule_86791']['Manage'] = true
default['rhel7STIG']['stigrule_86791']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the chsh command."
default['rhel7STIG']['stigrule_86791']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86791']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86791']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/bin/chsh -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change$'
default['rhel7STIG']['stigrule_86791']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/bin/chsh -F auid>=1000 -F auid!=4294967295 -k privileged-priv_change'

# R-86797 RHEL-07-030750
default['rhel7STIG']['stigrule_86797']['Manage'] = true
default['rhel7STIG']['stigrule_86797']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the umount command."
default['rhel7STIG']['stigrule_86797']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86797']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86797']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/bin/umount -F auid>=1000 -F auid!=4294967295 -k privileged-mount$'
default['rhel7STIG']['stigrule_86797']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/bin/umount -F auid>=1000 -F auid!=4294967295 -k privileged-mount'

# R-86799 RHEL-07-030760
default['rhel7STIG']['stigrule_86799']['Manage'] = true
default['rhel7STIG']['stigrule_86799']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the postdrop command."
default['rhel7STIG']['stigrule_86799']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86799']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86799']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/sbin/postdrop -F auid>=1000 -F auid!=4294967295 -k privileged-postfix$'
default['rhel7STIG']['stigrule_86799']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/sbin/postdrop -F auid>=1000 -F auid!=4294967295 -k privileged-postfix'

# R-86801 RHEL-07-030770
default['rhel7STIG']['stigrule_86801']['Manage'] = true
default['rhel7STIG']['stigrule_86801']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the postqueue command."
default['rhel7STIG']['stigrule_86801']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86801']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86801']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/sbin/postqueue -F auid>=1000 -F auid!=4294967295 -k privileged-postfix$'
default['rhel7STIG']['stigrule_86801']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/sbin/postqueue -F auid>=1000 -F auid!=4294967295 -k privileged-postfix'

# R-86803 RHEL-07-030780
default['rhel7STIG']['stigrule_86803']['Manage'] = true
default['rhel7STIG']['stigrule_86803']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the ssh-keysign command."
default['rhel7STIG']['stigrule_86803']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86803']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86803']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/libexec/openssh/ssh-keysign -F auid>=1000 -F auid!=4294967295 -k privileged-ssh$'
default['rhel7STIG']['stigrule_86803']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/libexec/openssh/ssh-keysign -F auid>=1000 -F auid!=4294967295 -k privileged-ssh'

# R-86807 RHEL-07-030800
default['rhel7STIG']['stigrule_86807']['Manage'] = true
default['rhel7STIG']['stigrule_86807']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the crontab command."
default['rhel7STIG']['stigrule_86807']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86807']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86807']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/bin/crontab -F auid>=1000 -F auid!=4294967295 -k privileged-cron$'
default['rhel7STIG']['stigrule_86807']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/bin/crontab -F auid>=1000 -F auid!=4294967295 -k privileged-cron'

# R-86809 RHEL-07-030810
default['rhel7STIG']['stigrule_86809']['Manage'] = true
default['rhel7STIG']['stigrule_86809']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the pam_timestamp_check command."
default['rhel7STIG']['stigrule_86809']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86809']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86809']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-a always,exit -F path=/usr/sbin/pam_timestamp_check -F auid>=1000 -F auid!=4294967295 -k privileged-pam$'
default['rhel7STIG']['stigrule_86809']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-a always,exit -F path=/usr/sbin/pam_timestamp_check -F auid>=1000 -F auid!=4294967295 -k privileged-pam'

# R-86815 RHEL-07-030840
default['rhel7STIG']['stigrule_86815']['Manage'] = true
default['rhel7STIG']['stigrule_86815']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the kmod command."
default['rhel7STIG']['stigrule_86815']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86815']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86815']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-w /usr/bin/kmod -p x -F auid!=4294967295 -k module-change$'
default['rhel7STIG']['stigrule_86815']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-w /usr/bin/kmod -p x -F auid!=4294967295 -k module-change'

# R-86821 RHEL-07-030870
default['rhel7STIG']['stigrule_86821']['Manage'] = true
default['rhel7STIG']['stigrule_86821']['Title'] = "The Red Hat Enterprise Linux operating system must generate audit records for all account creations, modifications, disabling, and termination events that affect /etc/passwd."
default['rhel7STIG']['stigrule_86821']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86821']['Setting']['_etc_audit_rules_d_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86821']['Setting']['_etc_audit_rules_d_audit_rules_Regexp'] = '^-w /etc/passwd -p wa -k identity$'
default['rhel7STIG']['stigrule_86821']['Setting']['_etc_audit_rules_d_audit_rules_Line'] = '-w /etc/passwd -p wa -k identity'

# R-86787 RHEL-07-030700
default['rhel7STIG']['stigrule_86787']['Manage'] = true
default['rhel7STIG']['stigrule_86787']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the sudoers file and all files in the /etc/sudoers.d/ directory."
default['rhel7STIG']['stigrule_86787']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86787']['Setting']['_etc_audit_rules_d_audit_rules_sudoers_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86787']['Setting']['_etc_audit_rules_d_audit_rules_sudoers_Regexp'] = '^-w /etc/sudoers -p wa -k privileged-actions$'
default['rhel7STIG']['stigrule_86787']['Setting']['_etc_audit_rules_d_audit_rules_sudoers_Line'] = '-w /etc/sudoers -p wa -k privileged-actions'

default['rhel7STIG']['stigrule_86787']['Setting']['_etc_audit_rules_d_audit_rules_sudoers_d_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86787']['Setting']['_etc_audit_rules_d_audit_rules_sudoers_d_Regexp'] = '^-w /etc/sudoers.d/ -p wa -k privileged-actions$'
default['rhel7STIG']['stigrule_86787']['Setting']['_etc_audit_rules_d_audit_rules_sudoers_d_Line'] = '-w /etc/sudoers.d/ -p wa -k privileged-actions'

# R-86795 RHEL-07-030740
default['rhel7STIG']['stigrule_86795']['Manage'] = true
default['rhel7STIG']['stigrule_86795']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the mount command and syscall."
default['rhel7STIG']['stigrule_86795']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules_mount_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules_mount_b32_Regexp'] = '^-a always,exit -F arch=b32 -S mount -F auid>=1000 -F auid!=4294967295 -k privileged-mount$'
default['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules_mount_b32_Line'] = '-a always,exit -F arch=b32 -S mount -F auid>=1000 -F auid!=4294967295 -k privileged-mount'

default['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules_mount_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules_mount_b64_Regexp'] = '^-a always,exit -F arch=b64 -S mount -F auid>=1000 -F auid!=4294967295 -k privileged-mount$'
default['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules_mount_b64_Line'] = '-a always,exit -F arch=b64 -S mount -F auid>=1000 -F auid!=4294967295 -k privileged-mount'

default['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules__usr_bin_mount_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules__usr_bin_mount_Regexp'] = '^-a always,exit -F path=/usr/bin/mount -F auid>=1000 -F auid!=4294967295 -k privileged-mount$'
default['rhel7STIG']['stigrule_86795']['Setting']['_etc_audit_rules_d_audit_rules__usr_bin_mount_Line'] = '-a always,exit -F path=/usr/bin/mount -F auid>=1000 -F auid!=4294967295 -k privileged-mount'

# R-86841 RHEL-07-040000
default['rhel7STIG']['stigrule_86841']['Manage'] = true
default['rhel7STIG']['stigrule_86841']['Title'] = "The Red Hat Enterprise Linux operating system must limit the number of concurrent sessions to 10 for all accounts and/or account types."
default['rhel7STIG']['stigrule_86841']['Severity'] = 'low'
default['rhel7STIG']['stigrule_86841']['Setting']['_etc_security_limits_conf_Path'] = '/etc/security/limits.conf'
default['rhel7STIG']['stigrule_86841']['Setting']['_etc_security_limits_conf_Regexp'] = '^\* hard maxlogins'
default['rhel7STIG']['stigrule_86841']['Setting']['_etc_security_limits_conf_Line'] = '* hard maxlogins 10'

# R-86845 RHEL-07-040110
default['rhel7STIG']['stigrule_86845']['Manage'] = true
default['rhel7STIG']['stigrule_86845']['Title'] = "The Red Hat Enterprise Linux operating system must use a FIPS 140-2 approved cryptographic algorithm for SSH communications."
default['rhel7STIG']['stigrule_86845']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86845']['Setting']['Ciphers_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86845']['Setting']['Ciphers_Regexp'] = '^\s*(?i)Ciphers\s+'
default['rhel7STIG']['stigrule_86845']['Setting']['Ciphers_Line'] = 'Ciphers aes128-ctr,aes192-ctr,aes256-ctr'
default['rhel7STIG']['stigrule_86845']['Setting']['Ciphers_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86847 RHEL-07-040160
default['rhel7STIG']['stigrule_86847']['Manage'] = true
default['rhel7STIG']['stigrule_86847']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that all network connections associated with a communication session are terminated at the end of the session or after 10 minutes of inactivity from the user at a command prompt, except to fulfill documented and validated mission requirements."
default['rhel7STIG']['stigrule_86847']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86847']['Setting']['_etc_profile_d_tmout_sh_Path'] = '/etc/profile.d/tmout.sh'
default['rhel7STIG']['stigrule_86847']['Setting']['_etc_profile_d_tmout_sh_Content'] = '#!/bin/bash

TMOUT=600
readonly TMOUT
export TMOUT'

# R-86849 RHEL-07-040170
default['rhel7STIG']['stigrule_86849']['Manage'] = true
default['rhel7STIG']['stigrule_86849']['Title'] = "The Red Hat Enterprise Linux operating system must display the Standard Mandatory DoD Notice and Consent Banner immediately prior to, or as part of, remote access logon prompts."
default['rhel7STIG']['stigrule_86849']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86849']['Setting']['banner_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86849']['Setting']['banner_Regexp'] = '^\s*(?i)banner\s+'
default['rhel7STIG']['stigrule_86849']['Setting']['banner_Line'] = 'banner /etc/issue'
default['rhel7STIG']['stigrule_86849']['Setting']['banner_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86857 RHEL-07-040300
default['rhel7STIG']['stigrule_86857']['Manage'] = true
default['rhel7STIG']['stigrule_86857']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that all networked systems have SSH installed."
default['rhel7STIG']['stigrule_86857']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86857']['Setting']['openssh_clients_x86_64_PackageName'] = 'openssh-clients.x86_64'
default['rhel7STIG']['stigrule_86857']['Setting']['openssh_clients_x86_64_Action'] = :install

default['rhel7STIG']['stigrule_86857']['Setting']['openssh_server_x86_64_PackageName'] = 'openssh-server.x86_64'
default['rhel7STIG']['stigrule_86857']['Setting']['openssh_server_x86_64_Action'] = :install

# R-86859 RHEL-07-040310
default['rhel7STIG']['stigrule_86859']['Manage'] = true
default['rhel7STIG']['stigrule_86859']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that all networked systems use SSH for confidentiality and integrity of transmitted and received information as well as information during preparation for transmission."
default['rhel7STIG']['stigrule_86859']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86859']['Setting']['sshd_enable_ServiceName'] = 'sshd'
default['rhel7STIG']['stigrule_86859']['Setting']['sshd_enable_Action'] = :enable

default['rhel7STIG']['stigrule_86859']['Setting']['sshd_start_ServiceName'] = 'sshd'
default['rhel7STIG']['stigrule_86859']['Setting']['sshd_start_Action'] = :start

# R-86861 RHEL-07-040320
default['rhel7STIG']['stigrule_86861']['Manage'] = true
default['rhel7STIG']['stigrule_86861']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that all network connections associated with SSH traffic are terminated at the end of the session or after 10 minutes of inactivity, except to fulfill documented and validated mission requirements."
default['rhel7STIG']['stigrule_86861']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86861']['Setting']['ClientAliveInterval_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86861']['Setting']['ClientAliveInterval_Regexp'] = '^\s*(?i)ClientAliveInterval\s+'
default['rhel7STIG']['stigrule_86861']['Setting']['ClientAliveInterval_Line'] = 'ClientAliveInterval 600'
default['rhel7STIG']['stigrule_86861']['Setting']['ClientAliveInterval_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86863 RHEL-07-040330
default['rhel7STIG']['stigrule_86863']['Manage'] = true
default['rhel7STIG']['stigrule_86863']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the SSH daemon does not allow authentication using RSA rhosts authentication."
default['rhel7STIG']['stigrule_86863']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86863']['Setting']['RhostsRSAAuthentication_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86863']['Setting']['RhostsRSAAuthentication_Regexp'] = '^\s*(?i)RhostsRSAAuthentication\s+'
default['rhel7STIG']['stigrule_86863']['Setting']['RhostsRSAAuthentication_Line'] = 'RhostsRSAAuthentication no'
default['rhel7STIG']['stigrule_86863']['Setting']['RhostsRSAAuthentication_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86865 RHEL-07-040340
default['rhel7STIG']['stigrule_86865']['Manage'] = true
default['rhel7STIG']['stigrule_86865']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that all network connections associated with SSH traffic terminate after a period of inactivity."
default['rhel7STIG']['stigrule_86865']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86865']['Setting']['ClientAliveCountMax_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86865']['Setting']['ClientAliveCountMax_Regexp'] = '^\s*(?i)ClientAliveCountMax\s+'
default['rhel7STIG']['stigrule_86865']['Setting']['ClientAliveCountMax_Line'] = 'ClientAliveCountMax 0'
default['rhel7STIG']['stigrule_86865']['Setting']['ClientAliveCountMax_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86867 RHEL-07-040350
default['rhel7STIG']['stigrule_86867']['Manage'] = true
default['rhel7STIG']['stigrule_86867']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the SSH daemon does not allow authentication using rhosts authentication."
default['rhel7STIG']['stigrule_86867']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86867']['Setting']['IgnoreRhosts_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86867']['Setting']['IgnoreRhosts_Regexp'] = '^\s*(?i)IgnoreRhosts\s+'
default['rhel7STIG']['stigrule_86867']['Setting']['IgnoreRhosts_Line'] = 'IgnoreRhosts yes'
default['rhel7STIG']['stigrule_86867']['Setting']['IgnoreRhosts_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86869 RHEL-07-040360
default['rhel7STIG']['stigrule_86869']['Manage'] = true
default['rhel7STIG']['stigrule_86869']['Title'] = "The Red Hat Enterprise Linux operating system must display the date and time of the last successful account logon upon an SSH logon."
default['rhel7STIG']['stigrule_86869']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86869']['Setting']['PrintLastLog_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86869']['Setting']['PrintLastLog_Regexp'] = '^\s*(?i)PrintLastLog\s+'
default['rhel7STIG']['stigrule_86869']['Setting']['PrintLastLog_Line'] = 'PrintLastLog yes'
default['rhel7STIG']['stigrule_86869']['Setting']['PrintLastLog_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86871 RHEL-07-040370
default['rhel7STIG']['stigrule_86871']['Manage'] = false
default['rhel7STIG']['stigrule_86871']['Title'] = "The Red Hat Enterprise Linux operating system must not permit direct logons to the root account using remote access via SSH."
default['rhel7STIG']['stigrule_86871']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86871']['Setting']['PermitRootLogin_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86871']['Setting']['PermitRootLogin_Regexp'] = '^\s*(?i)PermitRootLogin\s+'
default['rhel7STIG']['stigrule_86871']['Setting']['PermitRootLogin_Line'] = 'PermitRootLogin no'
default['rhel7STIG']['stigrule_86871']['Setting']['PermitRootLogin_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86873 RHEL-07-040380
default['rhel7STIG']['stigrule_86873']['Manage'] = true
default['rhel7STIG']['stigrule_86873']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the SSH daemon does not allow authentication using known hosts authentication."
default['rhel7STIG']['stigrule_86873']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86873']['Setting']['IgnoreUserKnownHosts_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86873']['Setting']['IgnoreUserKnownHosts_Regexp'] = '^\s*(?i)IgnoreUserKnownHosts\s+'
default['rhel7STIG']['stigrule_86873']['Setting']['IgnoreUserKnownHosts_Line'] = 'IgnoreUserKnownHosts yes'
default['rhel7STIG']['stigrule_86873']['Setting']['IgnoreUserKnownHosts_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86875 RHEL-07-040390
default['rhel7STIG']['stigrule_86875']['Manage'] = true
default['rhel7STIG']['stigrule_86875']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the SSH daemon is configured to only use the SSHv2 protocol."
default['rhel7STIG']['stigrule_86875']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86875']['Setting']['Protocol_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86875']['Setting']['Protocol_Regexp'] = '^\s*(?i)Protocol\s+'
default['rhel7STIG']['stigrule_86875']['Setting']['Protocol_Line'] = 'Protocol 2'
default['rhel7STIG']['stigrule_86875']['Setting']['Protocol_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86877 RHEL-07-040400
default['rhel7STIG']['stigrule_86877']['Manage'] = true
default['rhel7STIG']['stigrule_86877']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the SSH daemon is configured to only use Message Authentication Codes (MACs) employing FIPS 140-2 approved cryptographic hash algorithms."
default['rhel7STIG']['stigrule_86877']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86877']['Setting']['MACs_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86877']['Setting']['MACs_Regexp'] = '^\s*(?i)MACs\s+'
default['rhel7STIG']['stigrule_86877']['Setting']['MACs_Line'] = 'MACs hmac-sha2-256,hmac-sha2-512'
default['rhel7STIG']['stigrule_86877']['Setting']['MACs_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86883 RHEL-07-040430
default['rhel7STIG']['stigrule_86883']['Manage'] = true
default['rhel7STIG']['stigrule_86883']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the SSH daemon does not permit Generic Security Service Application Program Interface (GSSAPI) authentication unless needed."
default['rhel7STIG']['stigrule_86883']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86883']['Setting']['GSSAPIAuthentication_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86883']['Setting']['GSSAPIAuthentication_Regexp'] = '^\s*(?i)GSSAPIAuthentication\s+'
default['rhel7STIG']['stigrule_86883']['Setting']['GSSAPIAuthentication_Line'] = 'GSSAPIAuthentication no'
default['rhel7STIG']['stigrule_86883']['Setting']['GSSAPIAuthentication_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86885 RHEL-07-040440
default['rhel7STIG']['stigrule_86885']['Manage'] = true
default['rhel7STIG']['stigrule_86885']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the SSH daemon does not permit Kerberos authentication unless needed."
default['rhel7STIG']['stigrule_86885']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86885']['Setting']['KerberosAuthentication_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86885']['Setting']['KerberosAuthentication_Regexp'] = '^\s*(?i)KerberosAuthentication\s+'
default['rhel7STIG']['stigrule_86885']['Setting']['KerberosAuthentication_Line'] = 'KerberosAuthentication no'
default['rhel7STIG']['stigrule_86885']['Setting']['KerberosAuthentication_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86887 RHEL-07-040450
default['rhel7STIG']['stigrule_86887']['Manage'] = true
default['rhel7STIG']['stigrule_86887']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the SSH daemon performs strict mode checking of home directory configuration files."
default['rhel7STIG']['stigrule_86887']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86887']['Setting']['StrictModes_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86887']['Setting']['StrictModes_Regexp'] = '^\s*(?i)StrictModes\s+'
default['rhel7STIG']['stigrule_86887']['Setting']['StrictModes_Line'] = 'StrictModes yes'
default['rhel7STIG']['stigrule_86887']['Setting']['StrictModes_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86889 RHEL-07-040460
default['rhel7STIG']['stigrule_86889']['Manage'] = true
default['rhel7STIG']['stigrule_86889']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the SSH daemon uses privilege separation."
default['rhel7STIG']['stigrule_86889']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86889']['Setting']['UsePrivilegeSeparation_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86889']['Setting']['UsePrivilegeSeparation_Regexp'] = '^\s*(?i)UsePrivilegeSeparation\s+'
default['rhel7STIG']['stigrule_86889']['Setting']['UsePrivilegeSeparation_Line'] = 'UsePrivilegeSeparation sandbox'
default['rhel7STIG']['stigrule_86889']['Setting']['UsePrivilegeSeparation_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86891 RHEL-07-040470
default['rhel7STIG']['stigrule_86891']['Manage'] = true
default['rhel7STIG']['stigrule_86891']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the SSH daemon does not allow compression or only allows compression after successful authentication."
default['rhel7STIG']['stigrule_86891']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86891']['Setting']['Compression_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86891']['Setting']['Compression_Regexp'] = '^\s*(?i)Compression\s+'
default['rhel7STIG']['stigrule_86891']['Setting']['Compression_Line'] = 'Compression no'
default['rhel7STIG']['stigrule_86891']['Setting']['Compression_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86897 RHEL-07-040520
default['rhel7STIG']['stigrule_86897']['Manage'] = true
default['rhel7STIG']['stigrule_86897']['Title'] = "The Red Hat Enterprise Linux operating system must enable an application firewall, if available."
default['rhel7STIG']['stigrule_86897']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86897']['Setting']['firewalld_service_PackageName'] = 'firewalld'
default['rhel7STIG']['stigrule_86897']['Setting']['firewalld_service_Action'] = :install

default['rhel7STIG']['stigrule_86897']['Setting']['firewalld_active_ServiceName'] = 'firewalld'
default['rhel7STIG']['stigrule_86897']['Setting']['firewalld_active_Action'] = :enable

default['rhel7STIG']['stigrule_86897']['Setting']['firewalld_start_ServiceName'] = 'firewalld'
default['rhel7STIG']['stigrule_86897']['Setting']['firewalld_start_Action'] = :start

# R-86907 RHEL-07-040610
default['rhel7STIG']['stigrule_86907']['Manage'] = true
default['rhel7STIG']['stigrule_86907']['Title'] = "The Red Hat Enterprise Linux operating system must not forward Internet Protocol version 4 (IPv4) source-routed packets."
default['rhel7STIG']['stigrule_86907']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86907']['Setting']['net_ipv4_conf_all_accept_source_route_Key'] = 'net.ipv4.conf.all.accept_source_route'
default['rhel7STIG']['stigrule_86907']['Setting']['net_ipv4_conf_all_accept_source_route_Value'] = 0

# R-86909 RHEL-07-040620
default['rhel7STIG']['stigrule_86909']['Manage'] = true
default['rhel7STIG']['stigrule_86909']['Title'] = "The Red Hat Enterprise Linux operating system must not forward Internet Protocol version 4 (IPv4) source-routed packets by default."
default['rhel7STIG']['stigrule_86909']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86909']['Setting']['net_ipv4_conf_default_accept_source_route_Key'] = 'net.ipv4.conf.default.accept_source_route'
default['rhel7STIG']['stigrule_86909']['Setting']['net_ipv4_conf_default_accept_source_route_Value'] = 0

# R-86911 RHEL-07-040630
default['rhel7STIG']['stigrule_86911']['Manage'] = true
default['rhel7STIG']['stigrule_86911']['Title'] = "The Red Hat Enterprise Linux operating system must not respond to Internet Protocol version 4 (IPv4) Internet Control Message Protocol (ICMP) echoes sent to a broadcast address."
default['rhel7STIG']['stigrule_86911']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86911']['Setting']['net_ipv4_icmp_echo_ignore_broadcasts_Key'] = 'net.ipv4.icmp_echo_ignore_broadcasts'
default['rhel7STIG']['stigrule_86911']['Setting']['net_ipv4_icmp_echo_ignore_broadcasts_Value'] = 1

# R-86913 RHEL-07-040640
default['rhel7STIG']['stigrule_86913']['Manage'] = true
default['rhel7STIG']['stigrule_86913']['Title'] = "The Red Hat Enterprise Linux operating system must prevent Internet Protocol version 4 (IPv4) Internet Control Message Protocol (ICMP) redirect messages from being accepted."
default['rhel7STIG']['stigrule_86913']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86913']['Setting']['net_ipv4_conf_default_accept_redirects_Key'] = 'net.ipv4.conf.default.accept_redirects'
default['rhel7STIG']['stigrule_86913']['Setting']['net_ipv4_conf_default_accept_redirects_Value'] = 0

# R-86915 RHEL-07-040650
default['rhel7STIG']['stigrule_86915']['Manage'] = true
default['rhel7STIG']['stigrule_86915']['Title'] = "The Red Hat Enterprise Linux operating system must not allow interfaces to perform Internet Protocol version 4 (IPv4) Internet Control Message Protocol (ICMP) redirects by default."
default['rhel7STIG']['stigrule_86915']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86915']['Setting']['net_ipv4_conf_default_send_redirects_Key'] = 'net.ipv4.conf.default.send_redirects'
default['rhel7STIG']['stigrule_86915']['Setting']['net_ipv4_conf_default_send_redirects_Value'] = 0

# R-86917 RHEL-07-040660
default['rhel7STIG']['stigrule_86917']['Manage'] = true
default['rhel7STIG']['stigrule_86917']['Title'] = "The Red Hat Enterprise Linux operating system must not send Internet Protocol version 4 (IPv4) Internet Control Message Protocol (ICMP) redirects."
default['rhel7STIG']['stigrule_86917']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86917']['Setting']['net_ipv4_conf_all_send_redirects_Key'] = 'net.ipv4.conf.all.send_redirects'
default['rhel7STIG']['stigrule_86917']['Setting']['net_ipv4_conf_all_send_redirects_Value'] = 0

# R-86921 RHEL-07-040680
default['rhel7STIG']['stigrule_86921']['Manage'] = true
default['rhel7STIG']['stigrule_86921']['Title'] = "The Red Hat Enterprise Linux operating system must be configured to prevent unrestricted mail relaying."
default['rhel7STIG']['stigrule_86921']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86921']['Setting']['postconf__e__smtpd_client_restrictions___permit_mynetworks_reject__Command'] = "postconf -e 'smtpd_client_restrictions = permit_mynetworks,reject'"
default['rhel7STIG']['stigrule_86921']['Setting']['postconf__e__smtpd_client_restrictions___permit_mynetworks_reject__Only_if'] = "yum list installed postfix | grep -q postfix && ! postconf -n smtpd_client_restrictions | grep -q '^smtpd_client_restrictions = permit_mynetworks,reject$'"

# R-86923 RHEL-07-040690
default['rhel7STIG']['stigrule_86923']['Manage'] = true
default['rhel7STIG']['stigrule_86923']['Title'] = "The Red Hat Enterprise Linux operating system must not have a File Transfer Protocol (FTP) server package installed unless needed."
default['rhel7STIG']['stigrule_86923']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86923']['Setting']['vsftpd_PackageName'] = 'vsftpd'
default['rhel7STIG']['stigrule_86923']['Setting']['vsftpd_Action'] = :remove

# R-86925 RHEL-07-040700
default['rhel7STIG']['stigrule_86925']['Manage'] = true
default['rhel7STIG']['stigrule_86925']['Title'] = "The Red Hat Enterprise Linux operating system must not have the Trivial File Transfer Protocol (TFTP) server package installed if not required for operational support."
default['rhel7STIG']['stigrule_86925']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86925']['Setting']['tftp_server_PackageName'] = 'tftp-server'
default['rhel7STIG']['stigrule_86925']['Setting']['tftp_server_Action'] = :remove

# R-86927 RHEL-07-040710
default['rhel7STIG']['stigrule_86927']['Manage'] = true
default['rhel7STIG']['stigrule_86927']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that remote X connections for interactive users are encrypted."
default['rhel7STIG']['stigrule_86927']['Severity'] = 'high'
default['rhel7STIG']['stigrule_86927']['Setting']['X11Forwarding_Path'] = '/etc/ssh/sshd_config'
default['rhel7STIG']['stigrule_86927']['Setting']['X11Forwarding_Regexp'] = '^\s*(?i)X11Forwarding\s+'
default['rhel7STIG']['stigrule_86927']['Setting']['X11Forwarding_Line'] = 'X11Forwarding yes'
default['rhel7STIG']['stigrule_86927']['Setting']['X11Forwarding_Only_if'] = "rpm -q openssh-server.x86_64"

# R-86931 RHEL-07-040730
# Document the requirement for an X Windows server with the ISSO or remove.
default['rhel7STIG']['stigrule_86931']['Manage'] = false
default['rhel7STIG']['stigrule_86931']['Title'] = "The Red Hat Enterprise Linux operating system must not have an X Windows display manager installed unless approved."
default['rhel7STIG']['stigrule_86931']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86931']['Setting']['xorg_x11_server_common_PackageName'] = 'xorg-x11-server-common'
default['rhel7STIG']['stigrule_86931']['Setting']['xorg_x11_server_common_Action'] = :remove

# R-86933 RHEL-07-040740
default['rhel7STIG']['stigrule_86933']['Manage'] = true
default['rhel7STIG']['stigrule_86933']['Title'] = "The Red Hat Enterprise Linux operating system must not be performing packet forwarding unless the system is a router."
default['rhel7STIG']['stigrule_86933']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86933']['Setting']['net_ipv4_ip_forward_Key'] = 'net.ipv4.ip_forward'
default['rhel7STIG']['stigrule_86933']['Setting']['net_ipv4_ip_forward_Value'] = 0

# R-86943 RHEL-07-040830
default['rhel7STIG']['stigrule_86943']['Manage'] = true
default['rhel7STIG']['stigrule_86943']['Title'] = "The Red Hat Enterprise Linux operating system must not forward IPv6 source-routed packets."
default['rhel7STIG']['stigrule_86943']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_86943']['Setting']['net_ipv6_conf_all_accept_source_route_Key'] = 'net.ipv6.conf.all.accept_source_route'
default['rhel7STIG']['stigrule_86943']['Setting']['net_ipv6_conf_all_accept_source_route_Value'] = 0

# R-87041 RHEL-07-041001
default['rhel7STIG']['stigrule_87041']['Manage'] = true
default['rhel7STIG']['stigrule_87041']['Title'] = "The Red Hat Enterprise Linux operating system must have the required packages for multifactor authentication installed."
default['rhel7STIG']['stigrule_87041']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_87041']['Setting']['esc_PackageName'] = 'esc'
default['rhel7STIG']['stigrule_87041']['Setting']['esc_Action'] = :install

default['rhel7STIG']['stigrule_87041']['Setting']['pam_pkcs11_PackageName'] = 'pam_pkcs11'
default['rhel7STIG']['stigrule_87041']['Setting']['pam_pkcs11_Action'] = :install

default['rhel7STIG']['stigrule_87041']['Setting']['authconfig_gtk_PackageName'] = 'authconfig-gtk'
default['rhel7STIG']['stigrule_87041']['Setting']['authconfig_gtk_Action'] = :install

# R-87807 RHEL-07-010081
default['rhel7STIG']['stigrule_87807']['Manage'] = true
default['rhel7STIG']['stigrule_87807']['Title'] = "The Red Hat Enterprise Linux operating system must prevent a user from overriding the screensaver lock-delay setting for the graphical user interface."
default['rhel7STIG']['stigrule_87807']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_87807']['Setting']['_etc_dconf_db_local_d_locks_session_Path'] = '/etc/dconf/db/local.d/locks/session'
default['rhel7STIG']['stigrule_87807']['Setting']['_etc_dconf_db_local_d_locks_session_Line'] = '/org/gnome/desktop/screensaver/lock-delay'
default['rhel7STIG']['stigrule_87807']['Setting']['_etc_dconf_db_local_d_locks_session_Only_if'] = "rpm -q dconf"

# R-87809 RHEL-07-010082
default['rhel7STIG']['stigrule_87809']['Manage'] = true
default['rhel7STIG']['stigrule_87809']['Title'] = "The Red Hat Enterprise Linux operating system must prevent a user from overriding the session idle-delay setting for the graphical user interface."
default['rhel7STIG']['stigrule_87809']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_87809']['Setting']['_etc_dconf_db_local_d_locks_session_Path'] = '/etc/dconf/db/local.d/locks/session'
default['rhel7STIG']['stigrule_87809']['Setting']['_etc_dconf_db_local_d_locks_session_Line'] = '/org/gnome/desktop/session/idle-delay'
default['rhel7STIG']['stigrule_87809']['Setting']['_etc_dconf_db_local_d_locks_session_Only_if'] = "rpm -q dconf"

# R-93703 RHEL-07-010101
default['rhel7STIG']['stigrule_93703']['Manage'] = true
default['rhel7STIG']['stigrule_93703']['Title'] = "The Red Hat Enterprise Linux operating system must prevent a user from overriding the screensaver idle-activation-enabled setting for the graphical user interface."
default['rhel7STIG']['stigrule_93703']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_93703']['Setting']['_etc_dconf_db_local_d_locks_session_Path'] = '/etc/dconf/db/local.d/locks/session'
default['rhel7STIG']['stigrule_93703']['Setting']['_etc_dconf_db_local_d_locks_session_Line'] = '/org/gnome/desktop/screensaver/idle-activation-enabled'
default['rhel7STIG']['stigrule_93703']['Setting']['_etc_dconf_db_local_d_locks_session_Only_if'] = "rpm -q dconf"

# R-87817 RHEL-07-030871
default['rhel7STIG']['stigrule_87817']['Manage'] = true
default['rhel7STIG']['stigrule_87817']['Title'] = "The Red Hat Enterprise Linux operating system must generate audit records for all account creations, modifications, disabling, and termination events that affect /etc/group."
default['rhel7STIG']['stigrule_87817']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_87817']['Setting']['_etc_audit_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_87817']['Setting']['_etc_audit_audit_rules_Regexp'] = '^-w /etc/group -p wa -k identity$'
default['rhel7STIG']['stigrule_87817']['Setting']['_etc_audit_audit_rules_Line'] = '-w /etc/group -p wa -k identity'

# R-87819 RHEL-07-030872
default['rhel7STIG']['stigrule_87819']['Manage'] = true
default['rhel7STIG']['stigrule_87819']['Title'] = "The Red Hat Enterprise Linux operating system must generate audit records for all account creations, modifications, disabling, and termination events that affect /etc/gshadow."
default['rhel7STIG']['stigrule_87819']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_87819']['Setting']['_etc_audit_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_87819']['Setting']['_etc_audit_audit_rules_Regexp'] = '^-w /etc/gshadow -p wa -k identity$'
default['rhel7STIG']['stigrule_87819']['Setting']['_etc_audit_audit_rules_Line'] = '-w /etc/gshadow -p wa -k identity'

# R-87823 RHEL-07-030873
default['rhel7STIG']['stigrule_87823']['Manage'] = true
default['rhel7STIG']['stigrule_87823']['Title'] = "The Red Hat Enterprise Linux operating system must generate audit records for all account creations, modifications, disabling, and termination events that affect /etc/shadow."
default['rhel7STIG']['stigrule_87823']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_87823']['Setting']['_etc_audit_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_87823']['Setting']['_etc_audit_audit_rules_Regexp'] = '^-w /etc/shadow -p wa -k identity$'
default['rhel7STIG']['stigrule_87823']['Setting']['_etc_audit_audit_rules_Line'] = '-w /etc/shadow -p wa -k identity'

# R-87825 RHEL-07-030874
default['rhel7STIG']['stigrule_87825']['Manage'] = true
default['rhel7STIG']['stigrule_87825']['Title'] = "The Red Hat Enterprise Linux operating system must generate audit records for all account creations, modifications, disabling, and termination events that affect /etc/opasswd."
default['rhel7STIG']['stigrule_87825']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_87825']['Setting']['_etc_audit_audit_rules_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_87825']['Setting']['_etc_audit_audit_rules_Regexp'] = '^-w /etc/security/opasswd -p wa -k identity$'
default['rhel7STIG']['stigrule_87825']['Setting']['_etc_audit_audit_rules_Line'] = '-w /etc/security/opasswd -p wa -k identity'

# R-87827 RHEL-07-040641
default['rhel7STIG']['stigrule_87827']['Manage'] = true
default['rhel7STIG']['stigrule_87827']['Title'] = "The Red Hat Enterprise Linux operating system must ignore Internet Protocol version 4 (IPv4) Internet Control Message Protocol (ICMP) redirect messages."
default['rhel7STIG']['stigrule_87827']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_87827']['Setting']['net_ipv4_conf_all_accept_redirects_Key'] = 'net.ipv4.conf.all.accept_redirects'
default['rhel7STIG']['stigrule_87827']['Setting']['net_ipv4_conf_all_accept_redirects_Value'] = 0

# R-87829 RHEL-07-041010
default['rhel7STIG']['stigrule_87829']['Manage'] = true
default['rhel7STIG']['stigrule_87829']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that all wireless network adapters are disabled."
default['rhel7STIG']['stigrule_87829']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_87829']['Setting']['nmcli_radio_wifi_off_Command'] = "nmcli radio wifi off"
default['rhel7STIG']['stigrule_87829']['Setting']['nmcli_radio_wifi_off_Only_if'] = "[[ $(nmcli radio wifi) == 'enabled' ]]"

# R-92515 RHEL-07-010061
default['rhel7STIG']['stigrule_92515']['Manage'] = false
default['rhel7STIG']['stigrule_92515']['Title'] = "The Red Hat Enterprise Linux operating system must uniquely identify and must authenticate users using multifactor authentication via a graphical user logon."
default['rhel7STIG']['stigrule_92515']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_92515']['Setting']['_etc_dconf_db_local_d_00_defaults_Path'] = '/etc/dconf/db/local.d/00-defaults'
default['rhel7STIG']['stigrule_92515']['Setting']['_etc_dconf_db_local_d_00_defaults_Section'] = 'org/gnome/login-screen'
default['rhel7STIG']['stigrule_92515']['Setting']['_etc_dconf_db_local_d_00_defaults_Option'] = 'enable-smartcard-authentication'
default['rhel7STIG']['stigrule_92515']['Setting']['_etc_dconf_db_local_d_00_defaults_Value'] = 'true'
default['rhel7STIG']['stigrule_92515']['Setting']['_etc_dconf_db_local_d_00_defaults_Only_if'] = "rpm -q dconf"

# R-92517 RHEL-07-020101
default['rhel7STIG']['stigrule_92517']['Manage'] = true
default['rhel7STIG']['stigrule_92517']['Title'] = "The Red Hat Enterprise Linux operating system must be configured so that the Datagram Congestion Control Protocol (DCCP) kernel module is disabled unless required."
default['rhel7STIG']['stigrule_92517']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_92517']['Setting']['_etc_modprobe_d_dccp_conf_Path'] = '/etc/modprobe.d/dccp.conf'
default['rhel7STIG']['stigrule_92517']['Setting']['_etc_modprobe_d_dccp_conf_Content'] = 'install dccp /bin/true'

# R-92521 RHEL-07-040201
default['rhel7STIG']['stigrule_92521']['Manage'] = true
default['rhel7STIG']['stigrule_92521']['Title'] = "The Red Hat Enterprise Linux operating system must implement virtual address space randomization."
default['rhel7STIG']['stigrule_92521']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_92521']['Setting']['kernel_randomize_va_space_Key'] = 'kernel.randomize_va_space'
default['rhel7STIG']['stigrule_92521']['Setting']['kernel_randomize_va_space_Value'] = 2

# R-93705 RHEL-07-030819
default['rhel7STIG']['stigrule_93705']['Manage'] = true
default['rhel7STIG']['stigrule_93705']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the create_module syscall."
default['rhel7STIG']['stigrule_93705']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_93705']['Setting']['_etc_audit_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_93705']['Setting']['_etc_audit_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S create_module -k module-change$'
default['rhel7STIG']['stigrule_93705']['Setting']['_etc_audit_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S create_module -k module-change'

# R-93707 RHEL-07-030821
default['rhel7STIG']['stigrule_93707']['Manage'] = true
default['rhel7STIG']['stigrule_93707']['Title'] = "The Red Hat Enterprise Linux operating system must audit all uses of the finit_module syscall."
default['rhel7STIG']['stigrule_93707']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_93707']['Setting']['_etc_audit_audit_rules_b32_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_93707']['Setting']['_etc_audit_audit_rules_b32_Regexp'] = '^-a always,exit -F arch=b32 -S finit_module -k module-change$'
default['rhel7STIG']['stigrule_93707']['Setting']['_etc_audit_audit_rules_b32_Line'] = '-a always,exit -F arch=b32 -S finit_module -k module-change'

default['rhel7STIG']['stigrule_93705']['Setting']['_etc_audit_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_93705']['Setting']['_etc_audit_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S create_module -k module-change$'
default['rhel7STIG']['stigrule_93705']['Setting']['_etc_audit_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S create_module -k module-change'

default['rhel7STIG']['stigrule_93707']['Setting']['_etc_audit_audit_rules_b64_Path'] = '/etc/audit/rules.d/audit.rules'
default['rhel7STIG']['stigrule_93707']['Setting']['_etc_audit_audit_rules_b64_Regexp'] = '^-a always,exit -F arch=b64 -S finit_module -k module-change$'
default['rhel7STIG']['stigrule_93707']['Setting']['_etc_audit_audit_rules_b64_Line'] = '-a always,exit -F arch=b64 -S finit_module -k module-change'

# R-95727 RHEL-07-030200
default['rhel7STIG']['stigrule_95727']['Manage'] = true
default['rhel7STIG']['stigrule_95727']['Title'] = "The Red Hat Enterprise Linux operating system must be configured to use the au-remote plugin."
default['rhel7STIG']['stigrule_95727']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_95727']['Setting']['_etc_audisp_plugins_d_au_remote_conf_Path'] = '/etc/audisp/plugins.d/au-remote.conf'
default['rhel7STIG']['stigrule_95727']['Setting']['_etc_audisp_plugins_d_au_remote_conf_Regexp'] = '^active = '
default['rhel7STIG']['stigrule_95727']['Setting']['_etc_audisp_plugins_d_au_remote_conf_Line'] = 'active = yes'

# R-95729 RHEL-07-030201
default['rhel7STIG']['stigrule_95729']['Manage'] = true
default['rhel7STIG']['stigrule_95729']['Title'] = "The Red Hat Enterprise Linux operating system must configure the au-remote plugin to off-load audit logs using the audisp-remote daemon."
default['rhel7STIG']['stigrule_95729']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_direction_Path'] = '/etc/audisp/plugins.d/au-remote.conf'
default['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_direction_Regexp'] = '^direction = '
default['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_direction_Line'] = 'direction = out'

default['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_path_Path'] = '/etc/audisp/plugins.d/au-remote.conf'
default['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_path_Regexp'] = '^path = '
default['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_path_Line'] = 'path = /sbin/audisp-remote'

default['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_type_Path'] = '/etc/audisp/plugins.d/au-remote.conf'
default['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_type_Regexp'] = '^type = '
default['rhel7STIG']['stigrule_95729']['Setting']['_etc_audisp_plugins_d_au_remote_conf_type_Line'] = 'type = always'

# R-95731 RHEL-07-030210
default['rhel7STIG']['stigrule_95731']['Manage'] = true
default['rhel7STIG']['stigrule_95731']['Title'] = "The Red Hat Enterprise Linux operating system must take appropriate action when the audisp-remote buffer is full."
default['rhel7STIG']['stigrule_95731']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_95731']['Setting']['_etc_audisp_audispd_conf_Path'] = '/etc/audisp/audispd.conf'
default['rhel7STIG']['stigrule_95731']['Setting']['_etc_audisp_audispd_conf_Regexp'] = '^overflow_action = '
default['rhel7STIG']['stigrule_95731']['Setting']['_etc_audisp_audispd_conf_Line'] = 'overflow_action = syslog'

# R-95733 RHEL-07-030211
default['rhel7STIG']['stigrule_95733']['Manage'] = true
default['rhel7STIG']['stigrule_95733']['Title'] = "The Red Hat Enterprise Linux operating system must label all off-loaded audit logs before sending them to the central log server."
default['rhel7STIG']['stigrule_95733']['Severity'] = 'medium'
default['rhel7STIG']['stigrule_95733']['Setting']['_etc_audisp_audispd_conf_Path'] = '/etc/audisp/audispd.conf'
default['rhel7STIG']['stigrule_95733']['Setting']['_etc_audisp_audispd_conf_Regexp'] = '^name_format = '
default['rhel7STIG']['stigrule_95733']['Setting']['_etc_audisp_audispd_conf_Line'] = 'name_format = hostname'
