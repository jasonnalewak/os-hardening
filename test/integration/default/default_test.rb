# # encoding: utf-8

# Inspec test for recipe hardening::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

control "xccdf_mil.disa.stig_rule_SV-86479r3_rule" do
  title "The Red Hat Enterprise Linux operating system must be configured so that the cryptographic hash of system files and commands matches vendor values."
  desc  "
    Vulnerability Discussion: Without cryptographic integrity protections, system command and files can be altered by unauthorized users without detection.
    
    Cryptographic mechanisms used for protecting the integrity of information include, for example, signed hash functions using asymmetric cryptography enabling distribution of the public key to verify the hash information while maintaining the confidentiality of the key used to generate the hash.
    
    Documentable: false
    
  "
  impact 1.0
  describe "SCAP oval resource rpmverifyfile_test is not yet supported." do
    skip "SCAP oval resource rpmverifyfile_test is not yet supported."
  end
end

control "xccdf_mil.disa.stig_rule_SV-86483r4_rule" do
  title "The Red Hat Enterprise Linux operating system must display the Standard Mandatory DoD Notice and Consent Banner before granting local or remote access to the system via a graphical user logon."
  desc  "
    Vulnerability Discussion: Display of a standardized and approved use notification before granting access to the operating system ensures privacy and security notification verbiage used is consistent with applicable federal laws, Executive Orders, directives, policies, regulations, standards, and guidance.
    
    System use notifications are required only for access via logon interfaces with human users and are not required when such human interfaces do not exist.
    
    The banner must be formatted in accordance with applicable DoD policy. Use the following verbiage for operating systems that can accommodate banners of 1300 characters:
    
    \"You are accessing a U.S. Government (USG) Information System (IS) that is provided for USG-authorized use only.
    
    By using this IS (which includes any device attached to this IS), you consent to the following conditions:
    
    -The USG routinely intercepts and monitors communications on this IS for purposes including, but not limited to, penetration testing, COMSEC monitoring, network operations and defense, personnel misconduct (PM), law enforcement (LE), and counterintelligence (CI) investigations.
    
    -At any time, the USG may inspect and seize data stored on this IS.
    
    -Communications using, or data stored on, this IS are not private, are subject to routine monitoring, interception, and search, and may be disclosed or used for any USG-authorized purpose.
    
    -This IS includes security measures (e.g., authentication and access controls) to protect USG interests--not for your personal benefit or privacy.
    
    -Notwithstanding the above, using this IS does not constitute consent to PM, LE or CI investigative searching or monitoring of the content of privileged communications, or work product, related to personal representation or services by attorneys, psychotherapists, or clergy, and their assistants. Such communications and work product are private and confidential. See User Agreement for details.\"
    
    
    Satisfies: SRG-OS-000023-GPOS-00006, SRG-OS-000024-GPOS-00007, SRG-OS-000228-GPOS-00088
    
    Documentable: false
    
  "
  impact 0.5
  only_if { package("dconf").installed? }
  describe file("/etc/dconf/profile/user") do
    its("content") { should match(/^user-db:user\nsystem-db:local$/) }
  end
  files = command("find /etc/dconf/db -type f -maxdepth 2 -regex .\\*/\\^\\[0-9\\].\\*\\$ -and -regex .\\*/\\^/etc/dconf/db/\\[\\^/\\]\\+\\\\.d/\\?\\$").stdout.split
  describe files.delete_if { |f| command("file #{f} | cut -d: -f2").stdout =~ /binary|executable|archive/ || file(f).content !~ /^\[org\/gnome\/login-screen\]([^\n]*\n+)+?banner-message-enable\s*=\s*true\s*$/m } do
    it { should_not be_empty }
  end
end

control "xccdf_mil.disa.stig_rule_SV-86485r4_rule" do
  title "The Red Hat Enterprise Linux operating system must display the approved Standard Mandatory DoD Notice and Consent Banner before granting local or remote access to the system via a graphical user logon."
  desc  "
    Vulnerability Discussion: Display of a standardized and approved use notification before granting access to the operating system ensures privacy and security notification verbiage used is consistent with applicable federal laws, Executive Orders, directives, policies, regulations, standards, and guidance.
    
    System use notifications are required only for access via logon interfaces with human users and are not required when such human interfaces do not exist.
    
    The banner must be formatted in accordance with applicable DoD policy. Use the following verbiage for operating systems that can accommodate banners of 1300 characters:
    
    \"You are accessing a U.S. Government (USG) Information System (IS) that is provided for USG-authorized use only.
    
    By using this IS (which includes any device attached to this IS), you consent to the following conditions:
    
    -The USG routinely intercepts and monitors communications on this IS for purposes including, but not limited to, penetration testing, COMSEC monitoring, network operations and defense, personnel misconduct (PM), law enforcement (LE), and counterintelligence (CI) investigations.
    
    -At any time, the USG may inspect and seize data stored on this IS.
    
    -Communications using, or data stored on, this IS are not private, are subject to routine monitoring, interception, and search, and may be disclosed or used for any USG-authorized purpose.
    
    -This IS includes security measures (e.g., authentication and access controls) to protect USG interests--not for your personal benefit or privacy.
    
    -Notwithstanding the above, using this IS does not constitute consent to PM, LE or CI investigative searching or monitoring of the content of privileged communications, or work product, related to personal representation or services by attorneys, psychotherapists, or clergy, and their assistants. Such communications and work product are private and confidential. See User Agreement for details.\"
    
    Satisfies: SRG-OS-000023-GPOS-00006, SRG-OS-000024-GPOS-00007, SRG-OS-000228-GPOS-00088
    
    Documentable: false
    
  "
  impact 0.5
  only_if { package("dconf").installed? }
  describe file("/etc/dconf/profile/user") do
    its("content") { should match(/^user-db:user\nsystem-db:local$/) }
  end
  files = command("find /etc/dconf/db -type f -maxdepth 2 -regex .\\*/\\^\\[0-9\\].\\*\\$ -and -regex .\\*/\\^/etc/dconf/db/\\[\\^/\\]\\+\\\\.d/\\?\\$").stdout.split
  describe files.delete_if { |f| command("file #{f} | cut -d: -f2").stdout =~ /binary|executable|archive/ || file(f).content !~ /^banner-message-text\s*=(?:\s*string)?\s*'(.*)'/m } do
    it { should_not be_empty }
  end
  files.each do |f|
    file(f).content.to_s.scan(/^banner-message-text\s*=(?:\s*string)?\s*'(.*)'/m).flatten.each do |entry|
      describe entry do
        it { should match(/^(\\n|\s)*You\s+are\s+accessing\s+a\s+U\.S\.\s+Government\s+\(USG\)\s+Information\s+System\s+\(IS\)\s+that\s+is\s+provided\s+for\s+USG-authorized\s+use\s+only\.\s*(\\n|\n)+\s*By\s+using\s+this\s+IS\s+\(which\s+includes\s+any\s+device\s+attached\s+to\s+this\s+IS\),\s+you\s+consent\s+to\s+the\s+following\s+conditions\:\s*(\\n|\n)+\s*-The\s+USG\s+routinely\s+intercepts\s+and\s+monitors\s+communications\s+on\s+this\s+IS\s+for\s+purposes\s+including,\s+but\s+not\s+limited\s+to,\s+penetration\s+testing,\s+COMSEC\s+monitoring,\s+network\s+operations\s+and\s+defense,\s+personnel\s+misconduct\s+\(PM\),\s+law\s+enforcement\s+\(LE\),\s+and\s+counterintelligence\s+\(CI\)\s+investigations\.\s*(\\n|\n)+\s*-At\s+any\s+time,\s+the\s+USG\s+may\s+inspect\s+and\s+seize\s+data\s+stored\s+on\s+this\s+IS\.\s*(\\n|\n)+\s*-Communications\s+using,\s+or\s+data\s+stored\s+on,\s+this\s+IS\s+are\s+not\s+private,\s+are\s+subject\s+to\s+routine\s+monitoring,\s+interception,\s+and\s+search,\s+and\s+may\s+be\s+disclosed\s+or\s+used\s+for\s+any\s+USG-authorized\s+purpose\.\s*(\\n|\n)+\s*-This\s+IS\s+includes\s+security\s+measures\s+\(e\.g\.,\s+authentication\s+and\s+access\s+controls\)\s+to\s+protect\s+USG\s+interests--not\s+for\s+your\s+personal\s+benefit\s+or\s+privacy\.\s*(\\n|\n)+\s*-Notwithstanding\s+the\s+above,\s+using\s+this\s+IS\s+does\s+not\s+constitute\s+consent\s+to\s+PM,\s+LE\s+or\s+CI\s+investigative\s+searching\s+or\s+monitoring\s+of\s+the\s+content\s+of\s+privileged\s+communications,\s+or\s+work\s+product,\s+related\s+to\s+personal\s+representation\s+or\s+services\s+by\s+attorneys,\s+psychotherapists,\s+or\s+clergy,\s+and\s+their\s+assistants\.\s+Such\s+communications\s+and\s+work\s+product\s+are\s+private\s+and\s+confidential\.\s+See\s+User\s+Agreement\s+for\s+details\.(\\n|\s)*$/m) }
      end
    end
  end
end

control "xccdf_mil.disa.stig_rule_SV-86487r3_rule" do
  title "The Red Hat Enterprise Linux operating system must display the Standard Mandatory DoD Notice and Consent Banner before granting local or remote access to the system via a command line user logon."
  desc  "
    Vulnerability Discussion: Display of a standardized and approved use notification before granting access to the operating system ensures privacy and security notification verbiage used is consistent with applicable federal laws, Executive Orders, directives, policies, regulations, standards, and guidance.
    
    System use notifications are required only for access via logon interfaces with human users and are not required when such human interfaces do not exist.
    
    The banner must be formatted in accordance with applicable DoD policy. Use the following verbiage for operating systems that can accommodate banners of 1300 characters:
    
    \"You are accessing a U.S. Government (USG) Information System (IS) that is provided for USG-authorized use only.
    
    By using this IS (which includes any device attached to this IS), you consent to the following conditions:
    
    -The USG routinely intercepts and monitors communications on this IS for purposes including, but not limited to, penetration testing, COMSEC monitoring, network operations and defense, personnel misconduct (PM), law enforcement (LE), and counterintelligence (CI) investigations.
    
    -At any time, the USG may inspect and seize data stored on this IS.
    
    -Communications using, or data stored on, this IS are not private, are subject to routine monitoring, interception, and search, and may be disclosed or used for any USG-authorized purpose.
    
    -This IS includes security measures (e.g., authentication and access controls) to protect USG interests--not for your personal benefit or privacy.
    
    -Notwithstanding the above, using this IS does not constitute consent to PM, LE or CI investigative searching or monitoring of the content of privileged communications, or work product, related to personal representation or services by attorneys, psychotherapists, or clergy, and their assistants. Such communications and work product are private and confidential. See User Agreement for details.\"
    
    Satisfies: SRG-OS-000023-GPOS-00006, SRG-OS-000024-GPOS-00007
    
    Documentable: false
    
  "
  impact 0.5
  describe file("/etc/issue") do
    its("content") { should match(/^(\\n|\s)*You\s+are\s+accessing\s+a\s+U\.S\.\s+Government\s+\(USG\)\s+Information\s+System\s+\(IS\)\s+that\s+is\s+provided\s+for\s+USG-authorized\s+use\s+only\.\s*(\\n|\n)+\s*By\s+using\s+this\s+IS\s+\(which\s+includes\s+any\s+device\s+attached\s+to\s+this\s+IS\),\s+you\s+consent\s+to\s+the\s+following\s+conditions\:\s*(\\n|\n)+\s*-The\s+USG\s+routinely\s+intercepts\s+and\s+monitors\s+communications\s+on\s+this\s+IS\s+for\s+purposes\s+including,\s+but\s+not\s+limited\s+to,\s+penetration\s+testing,\s+COMSEC\s+monitoring,\s+network\s+operations\s+and\s+defense,\s+personnel\s+misconduct\s+\(PM\),\s+law\s+enforcement\s+\(LE\),\s+and\s+counterintelligence\s+\(CI\)\s+investigations\.\s*(\\n|\n)+\s*-At\s+any\s+time,\s+the\s+USG\s+may\s+inspect\s+and\s+seize\s+data\s+stored\s+on\s+this\s+IS\.\s*(\\n|\n)+\s*-Communications\s+using,\s+or\s+data\s+stored\s+on,\s+this\s+IS\s+are\s+not\s+private,\s+are\s+subject\s+to\s+routine\s+monitoring,\s+interception,\s+and\s+search,\s+and\s+may\s+be\s+disclosed\s+or\s+used\s+for\s+any\s+USG-authorized\s+purpose\.\s*(\\n|\n)+\s*-This\s+IS\s+includes\s+security\s+measures\s+\(e\.g\.,\s+authentication\s+and\s+access\s+controls\)\s+to\s+protect\s+USG\s+interests--not\s+for\s+your\s+personal\s+benefit\s+or\s+privacy\.\s*(\\n|\n)+\s*-Notwithstanding\s+the\s+above,\s+using\s+this\s+IS\s+does\s+not\s+constitute\s+consent\s+to\s+PM,\s+LE\s+or\s+CI\s+investigative\s+searching\s+or\s+monitoring\s+of\s+the\s+content\s+of\s+privileged\s+communications,\s+or\s+work\s+product,\s+related\s+to\s+personal\s+representation\s+or\s+services\s+by\s+attorneys,\s+psychotherapists,\s+or\s+clergy,\s+and\s+their\s+assistants\.\s+Such\s+communications\s+and\s+work\s+product\s+are\s+private\s+and\s+confidential\.\s+See\s+User\s+Agreement\s+for\s+details\.(\\n|\s)*$/)}
  end
  
  permitted_lines = [/^(\\n|\s)*You\s+are\s+accessing\s+a\s+U\.S\.\s+Government\s+\(USG\)\s+Information\s+System\s+\(IS\)\s+that\s+is\s+provided\s+for\s+USG-authorized\s+use\s+only\.\s*(\\n|\n)+\s*By\s+using\s+this\s+IS\s+\(which\s+includes\s+any\s+device\s+attached\s+to\s+this\s+IS\),\s+you\s+consent\s+to\s+the\s+following\s+conditions\:\s*(\\n|\n)+\s*-The\s+USG\s+routinely\s+intercepts\s+and\s+monitors\s+communications\s+on\s+this\s+IS\s+for\s+purposes\s+including,\s+but\s+not\s+limited\s+to,\s+penetration\s+testing,\s+COMSEC\s+monitoring,\s+network\s+operations\s+and\s+defense,\s+personnel\s+misconduct\s+\(PM\),\s+law\s+enforcement\s+\(LE\),\s+and\s+counterintelligence\s+\(CI\)\s+investigations\.\s*(\\n|\n)+\s*-At\s+any\s+time,\s+the\s+USG\s+may\s+inspect\s+and\s+seize\s+data\s+stored\s+on\s+this\s+IS\.\s*(\\n|\n)+\s*-Communications\s+using,\s+or\s+data\s+stored\s+on,\s+this\s+IS\s+are\s+not\s+private,\s+are\s+subject\s+to\s+routine\s+monitoring,\s+interception,\s+and\s+search,\s+and\s+may\s+be\s+disclosed\s+or\s+used\s+for\s+any\s+USG-authorized\s+purpose\.\s*(\\n|\n)+\s*-This\s+IS\s+includes\s+security\s+measures\s+\(e\.g\.,\s+authentication\s+and\s+access\s+controls\)\s+to\s+protect\s+USG\s+interests--not\s+for\s+your\s+personal\s+benefit\s+or\s+privacy\.\s*(\\n|\n)+\s*-Notwithstanding\s+the\s+above,\s+using\s+this\s+IS\s+does\s+not\s+constitute\s+consent\s+to\s+PM,\s+LE\s+or\s+CI\s+investigative\s+searching\s+or\s+monitoring\s+of\s+the\s+content\s+of\s+privileged\s+communications,\s+or\s+work\s+product,\s+related\s+to\s+personal\s+representation\s+or\s+services\s+by\s+attorneys,\s+psychotherapists,\s+or\s+clergy,\s+and\s+their\s+assistants\.\s+Such\s+communications\s+and\s+work\s+product\s+are\s+private\s+and\s+confidential\.\s+See\s+User\s+Agreement\s+for\s+details\.(\\n|\s)*$/,
  
  /^\s+$/,
  
  /^\s*You\s+are\s+accessing\s+a\s+U\.S\.\s+Government\s+\(USG\)\s+Information\s+System\s+\(IS\)\s+that\s+is\s+provided\s+for\s+USG-authorized\s+use\s+only\.\s*$",
  "^\s*By\s+using\s+this\s+IS\s+\(which\s+includes\s+any\s+device\s+attached\s+to\s+this\s+IS\),\s+you\s+consent\s+to\s+the\s+following\s+conditions\:\s*$/,
  
  /^\s*-The\s+USG\s+routinely\s+intercepts\s+and\s+monitors\s+communications\s+on\s+this\s+IS\s+for\s+purposes\s+including,\s+but\s+not\s+limited\s+to,\s+penetration\s+testing,\s+COMSEC\s+monitoring,\s+network\s+operations\s+and\s+defense,\s+personnel\s+misconduct\s+\(PM\),\s+law\s+enforcement\s+\(LE\),\s+and\s+counterintelligence\s+\(CI\)\s+investigations\.\s*$/,
  
  /^\s*-At\s+any\s+time,\s+the\s+USG\s+may\s+inspect\s+and\s+seize\s+data\s+stored\s+on\s+this\s+IS\.\s*$/,
  
  /^\s*-Communications\s+using,\s+or\s+data\s+stored\s+on,\s+this\s+IS\s+are\s+not\s+private,\s+are\s+subject\s+to\s+routine\s+monitoring,\s+interception,\s+and\s+search,\s+and\s+may\s+be\s+disclosed\s+or\s+used\s+for\s+any\s+USG-authorized\s+purpose\.\s*$/,
  
  /^\s*-This\s+IS\s+includes\s+security\s+measures\s+\(e\.g\.,\s+authentication\s+and\s+access\s+controls\)\s+to\s+protect\s+USG\s+interests--not\s+for\s+your\s+personal\s+benefit\s+or\s+privacy\.\s*$/,
  
  /^\s*-Notwithstanding\s+the\s+above,\s+using\s+this\s+IS\s+does\s+not\s+constitute\s+consent\s+to\s+PM,\s+LE\s+or\s+CI\s+investigative\s+searching\s+or\s+monitoring\s+of\s+the\s+content\s+of\s+privileged\s+communications,\s+or\s+work\s+product,\s+related\s+to\s+personal\s+representation\s+or\s+services\s+by\s+attorneys,\s+psychotherapists,\s+or\s+clergy,\s+and\s+their\s+assistants\.\s+Such\s+communications\s+and\s+work\s+product\s+are\s+private\s+and\s+confidential\.\s+See\s+User\s+Agreement\s+for\s+details\.\s*$/]
  
  unpermitted_lines = file("/etc/issue").content.split("\n").delete_if { |l| permitted_lines.find { |x| l =~ x } }
  describe unpermitted_lines do
    it { should be_empty }
  end
end

control "xccdf_mil.disa.stig_rule_SV-86515r5_rule" do
  title "The Red Hat Enterprise Linux operating system must enable a user session lock until that user re-establishes access using established identification and authentication procedures."
  desc  "
    Vulnerability Discussion: A session lock is a temporary action taken when a user stops work and moves away from the immediate physical vicinity of the information system but does not want to log out because of the temporary nature of the absence.
    
    The session lock is implemented at the point where session activity can be determined.
    
    Regardless of where the session lock is determined and implemented, once invoked, the session lock must remain in place until the user reauthenticates. No other activity aside from reauthentication must unlock the system.
    
    Satisfies: SRG-OS-000028-GPOS-00009, SRG-OS-000030-GPOS-00011
    
    Documentable: false
    
  "
  impact 0.5
  only_if { package("dconf").installed? }
  describe file("/etc/dconf/profile/user") do
    its("content") { should match(/^user-db:user\nsystem-db:local$/) }
  end
  files = command("find /etc/dconf/db/ -type f -maxdepth 2 -regex .\\*/\\^\\[0-9\\].\\*\\$").stdout.split
  describe files.delete_if { |f| command("file #{f} | cut -d: -f2").stdout =~ /binary|executable|archive/ || file(f).content !~ /^\[org\/gnome\/desktop\/screensaver\]([^\n]*\n+)+?lock-enabled\s*=\s*true\s*$/m } do
    it { should_not be_empty }
  end
end

control "xccdf_mil.disa.stig_rule_SV-86517r5_rule" do
  title "The Red Hat Enterprise Linux operating system must initiate a screensaver after a 15-minute period of inactivity for graphical user interfaces."
  desc  "
    Vulnerability Discussion: A session time-out lock is a temporary action taken when a user stops work and moves away from the immediate physical vicinity of the information system but does not log out because of the temporary nature of the absence. Rather than relying on the user to manually lock their operating system session prior to vacating the vicinity, operating systems need to be able to identify when a user's session has idled and take action to initiate the session lock.
    
    The session lock is implemented at the point where session activity can be determined and/or controlled.
    
    Documentable: false
    
  "
  impact 0.5
  only_if { package("dconf").installed? }
  describe file("/etc/dconf/profile/user") do
    its("content") { should match(/^user-db:user\nsystem-db:local$/) }
  end
  files = command("find /etc/dconf/db/ -type f -maxdepth 2 -regex .\\*/\\^\\[0-9\\].\\*\\$").stdout.split
  describe files.delete_if { |f| command("file #{f} | cut -d: -f2").stdout =~ /binary|executable|archive/ || file(f).content !~ /^\[org\/gnome\/desktop\/session\](?:[^\n]*\n+)+?idle-delay\s*=\s*uint32[\s]+([0-9]*)/m } do
    it { should_not be_empty }
  end
  files.each do |f|
    file(f).content.to_s.scan(/^\[org\/gnome\/desktop\/session\](?:[^\n]*\n+)+?idle-delay\s*=\s*uint32[\s]+([0-9]*)/m).flatten.each do |entry|
      describe entry do
        it { should cmp <= 900 }
      end
    end
  end
end

control "xccdf_mil.disa.stig_rule_SV-86521r2_rule" do
  title "The Red Hat Enterprise Linux operating system must have the screen package installed."
  desc  "
    Vulnerability Discussion: A session time-out lock is a temporary action taken when a user stops work and moves away from the immediate physical vicinity of the information system but does not log out because of the temporary nature of the absence. Rather than relying on the user to manually lock their operating system session prior to vacating the vicinity, operating systems need to be able to identify when a user's session has idled and take action to initiate the session lock.
    
    The screen package allows for a session lock to be implemented and configured.
    
    Documentable: false
    
  "
  impact 0.5
  describe package("screen") do
    it { should be_installed }
  end
end

control "xccdf_mil.disa.stig_rule_SV-86523r4_rule" do
  title "The Red Hat Enterprise Linux operating system must initiate a session lock for the screensaver after a period of inactivity for graphical user interfaces."
  desc  "
    Vulnerability Discussion: A session time-out lock is a temporary action taken when a user stops work and moves away from the immediate physical vicinity of the information system but does not log out because of the temporary nature of the absence. Rather than relying on the user to manually lock their operating system session prior to vacating the vicinity, operating systems need to be able to identify when a user's session has idled and take action to initiate the session lock.
    
    The session lock is implemented at the point where session activity can be determined and/or controlled.
    
    Documentable: false
    
  "
  impact 0.5
  only_if { package("dconf").installed? }
  describe file("/etc/dconf/profile/user") do
    its("content") { should match(/^user-db:user\nsystem-db:local$/) }
  end
  files = command("find /etc/dconf/db/ -type f -maxdepth 2 -regex .\\*/\\^\\[0-9\\].\\*\\$").stdout.split
  describe files.delete_if { |f| command("file #{f} | cut -d: -f2").stdout =~ /binary|executable|archive/ || file(f).content !~ /^\[org\/gnome\/desktop\/screensaver\]([^\n]*\n+)+?idle-activation-enabled\s*=\s*true\s*$/m } do
    it { should_not be_empty }
  end
end

control "xccdf_mil.disa.stig_rule_SV-86525r3_rule" do
  title "The Red Hat Enterprise Linux operating system must initiate a session lock for graphical user interfaces when the screensaver is activated."
  desc  "
    Vulnerability Discussion: A session time-out lock is a temporary action taken when a user stops work and moves away from the immediate physical vicinity of the information system but does not log out because of the temporary nature of the absence. Rather than relying on the user to manually lock their operating system session prior to vacating the vicinity, operating systems need to be able to identify when a user's session has idled and take action to initiate the session lock.
    
    The session lock is implemented at the point where session activity can be determined and/or controlled.
    
    Documentable: false
    
  "
  impact 0.5
  only_if { package("dconf").installed? }
  describe file("/etc/dconf/profile/user") do
    its("content") { should match(/^user-db:user\nsystem-db:local$/) }
  end
  files = command("find /etc/dconf/db/ -type f -maxdepth 2 -regex .\\*/\\^\\[0-9\\].\\*\\$").stdout.split
  describe files.delete_if { |f| command("file #{f} | cut -d: -f2").stdout =~ /binary|executable|archive/ || file(f).content !~ /^\[org\/gnome\/desktop\/screensaver\]([^\n]*\n+)+?lock-delay\s*=\s*uint32\s+[0-5]\s*$/m } do
    it { should_not be_empty }
  end
end

control "xccdf_mil.disa.stig_rule_SV-86527r3_rule" do
  title "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed or new passwords are established, the new password must contain at least one upper-case character."
  desc  "
    Vulnerability Discussion: Use of a complex password helps to increase the time and resources required to compromise the password. Password complexity, or strength, is a measure of the effectiveness of a password in resisting attempts at guessing and brute-force attacks.
    
    Password complexity is one factor of several that determines how long it takes to crack a password. The more complex the password, the greater the number of possible combinations that need to be tested before the password is compromised.
    
    Documentable: false
    
  "
  impact 0.5
  describe file("/etc/pam.d/system-auth") do
    its("content") { should match(/^\s*password\s+(?:(?:required)|(?:requisite))\s+pam_pwquality\.so.*$/) }
  end
  describe file("/etc/security/pwquality.conf") do
    its("content") { should match(/^ucredit[\s]*=[\s]*(-?\d+)(?:[\s]|$)/) }
  end
  file("/etc/security/pwquality.conf").content.to_s.scan(/^ucredit[\s]*=[\s]*(-?\d+)(?:[\s]|$)/).flatten.each do |entry|
    describe entry do
      it { should cmp <= -1 }
    end
  end
end

control "xccdf_mil.disa.stig_rule_SV-86529r5_rule" do
  title "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed or new passwords are established, the new password must contain at least one lower-case character."
  desc  "
    Vulnerability Discussion: Use of a complex password helps to increase the time and resources required to compromise the password. Password complexity, or strength, is a measure of the effectiveness of a password in resisting attempts at guessing and brute-force attacks.
    
    Password complexity is one factor of several that determines how long it takes to crack a password. The more complex the password, the greater the number of possible combinations that need to be tested before the password is compromised.
    
    Documentable: false
    
  "
  impact 0.5
  describe file("/etc/pam.d/system-auth") do
    its("content") { should match(/^\s*password\s+(?:(?:required)|(?:requisite))\s+pam_pwquality\.so.*$/) }
  end
  describe file("/etc/security/pwquality.conf") do
    its("content") { should match(/^lcredit[\s]*=[\s]*(-?\d+)(?:[\s]|$)/) }
  end
  file("/etc/security/pwquality.conf").content.to_s.scan(/^lcredit[\s]*=[\s]*(-?\d+)(?:[\s]|$)/).flatten.each do |entry|
    describe entry do
      it { should cmp <= -1 }
    end
  end
end

control "xccdf_mil.disa.stig_rule_SV-86531r3_rule" do
  title "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed or new passwords are assigned, the new password must contain at least one numeric character."
  desc  "
    Vulnerability Discussion: Use of a complex password helps to increase the time and resources required to compromise the password. Password complexity, or strength, is a measure of the effectiveness of a password in resisting attempts at guessing and brute-force attacks.
    
    Password complexity is one factor of several that determines how long it takes to crack a password. The more complex the password, the greater the number of possible combinations that need to be tested before the password is compromised.
    
    Documentable: false
    
  "
  impact 0.5
  describe file("/etc/pam.d/system-auth") do
    its("content") { should match(/^\s*password\s+(?:(?:required)|(?:requisite))\s+pam_pwquality\.so.*$/) }
  end
  describe file("/etc/security/pwquality.conf") do
    its("content") { should match(/^dcredit[\s]*=[\s]*(-?\d+)(?:[\s]|$)/) }
  end
  file("/etc/security/pwquality.conf").content.to_s.scan(/^dcredit[\s]*=[\s]*(-?\d+)(?:[\s]|$)/).flatten.each do |entry|
    describe entry do
      it { should cmp <= -1 }
    end
  end
end

control "xccdf_mil.disa.stig_rule_SV-86533r2_rule" do
  title "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed or new passwords are established, the new password must contain at least one special character."
  desc  "
    Vulnerability Discussion: Use of a complex password helps to increase the time and resources required to compromise the password. Password complexity, or strength, is a measure of the effectiveness of a password in resisting attempts at guessing and brute-force attacks.
    
    Password complexity is one factor of several that determines how long it takes to crack a password. The more complex the password, the greater the number of possible combinations that need to be tested before the password is compromised.
    
    Documentable: false
    
  "
  impact 0.5
  describe file("/etc/pam.d/system-auth") do
    its("content") { should match(/^\s*password\s+(?:(?:required)|(?:requisite))\s+pam_pwquality\.so.*$/) }
  end
  describe file("/etc/security/pwquality.conf") do
    its("content") { should match(/^ocredit[\s]*=[\s]*(-?\d+)(?:[\s]|$)/) }
  end
  file("/etc/security/pwquality.conf").content.to_s.scan(/^ocredit[\s]*=[\s]*(-?\d+)(?:[\s]|$)/).flatten.each do |entry|
    describe entry do
      it { should cmp <= -1 }
    end
  end
end

control "xccdf_mil.disa.stig_rule_SV-86535r2_rule" do
  title "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed a minimum of eight of the total number of characters must be changed."
  desc  "
    Vulnerability Discussion: Use of a complex password helps to increase the time and resources required to compromise the password. Password complexity, or strength, is a measure of the effectiveness of a password in resisting attempts at guessing and brute-force attacks.
    
    Password complexity is one factor of several that determines how long it takes to crack a password. The more complex the password, the greater the number of possible combinations that need to be tested before the password is compromised.
    
    Documentable: false
    
  "
  impact 0.5
  describe file("/etc/pam.d/system-auth") do
    its("content") { should match(/^\s*password\s+(?:(?:required)|(?:requisite))\s+pam_pwquality\.so.*$/) }
  end
  describe file("/etc/security/pwquality.conf") do
    its("content") { should match(/^difok[\s]*=[\s]*(\d+)(?:[\s]|$)/) }
  end
  file("/etc/security/pwquality.conf").content.to_s.scan(/^difok[\s]*=[\s]*(\d+)(?:[\s]|$)/).flatten.each do |entry|
    describe entry do
      it { should cmp >= 8 }
    end
  end
end

control "xccdf_mil.disa.stig_rule_SV-86537r2_rule" do
  title "The Red Hat Enterprise Linux operating system must be configured so that when passwords are changed a minimum of four character classes must be changed."
  desc  "
    Vulnerability Discussion: Use of a complex password helps to increase the time and resources required to compromise the password. Password complexity, or strength, is a measure of the effectiveness of a password in resisting attempts at guessing and brute-force attacks.
    
    Password complexity is one factor of several that determines how long it takes to crack a password. The more complex the password, the greater the number of possible combinations that need to be tested before the password is compromised.
    
    Documentable: false
    
  "
  impact 0.5
  describe file("/etc/pam.d/system-auth") do
    its("content") { should match(/^\s*password\s+(?:(?:required)|(?:requisite))\s+pam_pwquality\.so.*$/) }
  end
  describe file("/etc/security/pwquality.conf") do
    its("content") { should match(/^minclass[\s]*=[\s]*(-?\d+)(?:[\s]|$)/) }
  end
  file("/etc/security/pwquality.conf").content.to_s.scan(/^minclass[\s]*=[\s]*(-?\d+)(?:[\s]|$)/).flatten.each do |entry|
    describe entry do
      it { should cmp >= 4 }
    end
  end
end
