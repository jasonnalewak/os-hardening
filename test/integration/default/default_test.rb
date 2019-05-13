# # encoding: utf-8

# Inspec test for recipe hardening::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

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


control "xccdf_mil.disa.stig_rule_SV-86545r2_rule" do
  title "The Red Hat Enterprise Linux operating system must be configured to use the shadow file to store only encrypted representations of passwords."
  desc  "
    Vulnerability Discussion: Passwords need to be protected at all times, and encryption is the standard method for protecting passwords. If passwords are not encrypted, they can be plainly read (i.e., clear text) and easily compromised. Passwords encrypted with a weak algorithm are no more protected than if they are kept in plain text.
    
    Documentable: false
    
  "
  impact 0.5
  describe file("/etc/login.defs") do
    its("content") { should match(/^\s*ENCRYPT_METHOD\s+(\w+)\s*$/) }
  end
  file("/etc/login.defs").content.to_s.scan(/^\s*ENCRYPT_METHOD\s+(\w+)\s*$/).flatten.each do |entry|
    describe entry do
      it { should eq "SHA512" }
    end
  end
end

control "xccdf_mil.disa.stig_rule_SV-86549r2_rule" do
  title "The Red Hat Enterprise Linux operating system must be configured so that passwords for new users are restricted to a 24 hours/1 day minimum lifetime."
  desc  "
    Vulnerability Discussion: Enforcing a minimum password lifetime helps to prevent repeated password changes to defeat the password reuse or history enforcement requirement. If users are allowed to immediately and continually change their password, the password could be repeatedly changed in a short period of time to defeat the organization's policy regarding password reuse.
    
    Documentable: false
    
  "
  impact 0.5
  describe file("/etc/login.defs") do
    its("content") { should match(/^\s*PASS_MIN_DAYS\s+(\d+)\s*$/) }
  end
  file("/etc/login.defs").content.to_s.scan(/^\s*PASS_MIN_DAYS\s+(\d+)\s*$/).flatten.each do |entry|
    describe entry do
      it { should cmp >= 1 }
    end
  end
end

control "xccdf_mil.disa.stig_rule_SV-86553r2_rule" do
  title "The Red Hat Enterprise Linux operating system must be configured so that passwords for new users are restricted to a 60-day maximum lifetime."
  desc  "
    Vulnerability Discussion: Any password, no matter how complex, can eventually be cracked. Therefore, passwords need to be changed periodically. If the operating system does not limit the lifetime of passwords and force users to change their passwords, there is the risk that the operating system passwords could be compromised.
    
    Documentable: false
    
  "
  impact 0.5
  describe file("/etc/login.defs") do
    its("content") { should match(/^\s*PASS_MAX_DAYS\s+(\d+)\s*$/) }
  end
  file("/etc/login.defs").content.to_s.scan(/^\s*PASS_MAX_DAYS\s+(\d+)\s*$/).flatten.each do |entry|
    describe entry do
      it { should cmp <= 60 }
    end
  end
end

control "xccdf_mil.disa.stig_rule_SV-86575r2_rule" do
  title "The Red Hat Enterprise Linux operating system must be configured so that the delay between logon prompts following a failed console logon attempt is at least four seconds."
  desc  "
    Vulnerability Discussion: Configuring the operating system to implement organization-wide security implementation guides and security checklists verifies compliance with federal standards and establishes a common security baseline across DoD that reflects the most restrictive security posture consistent with operational requirements.
    
    Configuration settings are the set of parameters that can be changed in hardware, software, or firmware components of the system that affect the security posture and/or functionality of the system. Security-related parameters are those parameters impacting the security state of the system, including the parameters required to satisfy other security control requirements. Security-related parameters include, for example, registry settings; account, file, and directory permission settings; and settings for functions, ports, protocols, services, and remote connections.
    
    Documentable: false
    
  "
  impact 0.5
  describe file("/etc/login.defs") do
    its("content") { should match(/^[\s]*FAIL_DELAY[\s]+([^#\s]*)/) }
  end
  file("/etc/login.defs").content.to_s.scan(/^[\s]*FAIL_DELAY[\s]+([^#\s]*)/).flatten.each do |entry|
    describe entry do
      it { should cmp >= 4 }
    end
  end
end

control "xccdf_mil.disa.stig_rule_SV-86581r3_rule" do
  title "The Red Hat Enterprise Linux operating system must not allow users to override SSH environment variables."
  desc  "
    Vulnerability Discussion: Failure to restrict system access to authenticated users negatively impacts operating system security.
    
    Documentable: false
    
  "
  impact 0.5
  only_if { package("openssh-server").installed? }
  describe sshd_config("/etc/ssh/sshd_config") do
    its("PermitUserEnvironment") { should_not be_nil }
    its("PermitUserEnvironment") { should cmp "no" }
  end
end

control "xccdf_mil.disa.stig_rule_SV-86583r3_rule" do
  title "The Red Hat Enterprise Linux operating system must not allow a non-certificate trusted host SSH logon to the system."
  desc  "
    Vulnerability Discussion: Failure to restrict system access to authenticated users negatively impacts operating system security.
    
    Documentable: false
    
  "
  impact 0.5
  only_if { package("openssh-server").installed? }
  describe sshd_config("/etc/ssh/sshd_config") do
    its("HostbasedAuthentication") { should_not be_nil }
    its("HostbasedAuthentication") { should cmp "no" }
  end
end


control "xccdf_mil.disa.stig_rule_SV-86591r2_rule" do
  title "The Red Hat Enterprise Linux operating system must not have the rsh-server package installed."
  desc  "
    Vulnerability Discussion: It is detrimental for operating systems to provide, or install by default, functionality exceeding requirements or mission objectives. These unnecessary capabilities or services are often overlooked and therefore may remain unsecured. They increase the risk to the platform by providing additional attack vectors.
    
    Operating systems are capable of providing a wide variety of functions and services. Some of the functions and services, provided by default, may not be necessary to support essential organizational operations (e.g., key missions, functions).
    
    The rsh-server service provides an unencrypted remote access service that does not provide for the confidentiality and integrity of user passwords or the remote session and has very weak authentication.
    
    If a privileged user were to log on using this service, the privileged user password could be compromised.
    
    Documentable: false
    
  "
  impact 1.0
  describe package("rsh-server") do
    it { should_not be_installed }
  end
end