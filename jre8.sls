jre8:
  '8.0.1310.11':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'Java 8 Update 131 (64-bit)'
    installer: 'salt://win/repo-ng/jre8/jre-8u131-windows-x64.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F64180131F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.oracle.com/webapps/download/AutoDL?BundleId=220315_d54c1d3a095b4ff2b6607d096fa80163
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    # Do NOT use the 'archive' versions download page, use the 'manual' one above. The 'archive' one will give 
    # you more versions and also different builds. IF you do use these, make sure you adapt your sls file accordingly.  
    # http://www.oracle.com/technetwork/java/javase/downloads/java-archive-javase8-2177648.html
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'Java 8 Update 131'
    installer: 'salt://win/repo-ng/jre8_x86/jre-8u131-windows-i586.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F64180131F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.oracle.com/webapps/download/AutoDL?BundleId=220313_d54c1d3a095b4ff2b6607d096fa80163
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8_x86/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    # Do NOT use the 'archive' versions download page, use the 'manual' one above. The 'archive' one will give 
    # you more versions and also different builds. IF you do use these, make sure you adapt your sls file accordingly.  
    # http://www.oracle.com/technetwork/java/javase/downloads/java-archive-javase8-2177648.html
    {% endif %}
    install_flags: '/s REBOOT=Suppress SPONSORS=0'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
  '8.0.1210.13':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'Java 8 Update 121 (64-bit)'
    installer: 'salt://binaries/java/1.8/jre-8u121-windows-x64.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F64180121F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.oracle.com/webapps/download/AutoDL?BundleId=218833_e9e7ea248e2c4826b92b3f075a80e441
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    # Do NOT use the 'archive' versions download page, use the 'manual' one above. The 'archive' one will give 
    # you more versions and also different builds. IF you do use these, make sure you adapt your sls file accordingly.  
    # http://www.oracle.com/technetwork/java/javase/downloads/java-archive-javase8-2177648.html
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'Java 8 Update 121'
    installer: 'salt://win/repo-ng/jre8_x86/jre-8u121-windows-i586.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F32180121F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.oracle.com/webapps/download/AutoDL?BundleId=218831_e9e7ea248e2c4826b92b3f075a80e441
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8_x86/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    # Do NOT use the 'archive' versions download page, use the 'manual' one above. The 'archive' one will give 
    # you more versions and also different builds. IF you do use these, make sure you adapt your sls file accordingly.  
    # http://www.oracle.com/technetwork/java/javase/downloads/java-archive-javase8-2177648.html
    {% endif %}
    install_flags: 'INSTALL_SILENT=1 REBOOT=0 AUTO_UPDATE=0 WEB_JAVA=0 WEB_ANALYTICS=0 NOSTARTMENU=1 SPONSORS=0 REMOVEOUTOFDATEJRES=1'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
  '8.0.1010.13':
    {% if grains['cpuarch'] == 'AMD64' %}  
    full_name: 'Java 8 Update 101 (64-bit)'
    installer: 'salt://binaries/java/1.8/jre-8u101-windows-x64.exe'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207231
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp  
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'Java 8 Update 101'
    installer: 'salt://win/repo-ng/jre8/jre-8u101-windows-i586.exe'  
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207231
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp 
    {% endif %}
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F64180101F0} /norestart'
    # See http://docs.oracle.com/javase/8/docs/technotes/guides/install/config.html for explanation in install options
    # Below uses settings for minimalistic install and automatically remove previous JRE versions.
    install_flags: 'INSTALL_SILENT=1 REBOOT=0 AUTO_UPDATE=0 WEB_JAVA=0 WEB_ANALYTICS=0 NOSTARTMENU=1 SPONSORS=0 REMOVEOUTOFDATEJRES=1'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
  '8.0.920.14':
    {% if grains['cpuarch'] == 'AMD64' %}  
    full_name: 'Java 8 Update 92 (64-bit)'
    installer: 'salt://binaries/java/1.8/jre-8u92-windows-x64.exe'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207231
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp  
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'Java 8 Update 92'
    installer: 'salt://win/repo-ng/jre8/jre-8u92-windows-i586.exe'  
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207231
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp 
    {% endif %}
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F86418092F0} /norestart'
    # See http://docs.oracle.com/javase/8/docs/technotes/guides/install/config.html for explanation in install options
    # Below uses settings for minimalistic install and automatically remove previous JRE versions.
    install_flags: 'INSTALL_SILENT=1 REBOOT=0 AUTO_UPDATE=0 WEB_JAVA=0 WEB_ANALYTICS=0 NOSTARTMENU=1 SPONSORS=0 REMOVEOUTOFDATEJRES=1'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
  '8.0.910.14':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'Java 8 Update 91 (64-bit)'
    installer: 'salt://win/repo-ng/jre8/jre-8u91-windows-x64.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F86418091F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207775
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'Java 8 Update 91'
    installer: 'salt://win/repo-ng/jre8_x86/jre-8u91-windows-i586.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F83218091F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207773
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8_x86/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% endif %}
    install_flags: '/s REBOOT=Suppress SPONSORS=0'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
  '8.0.770.3':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'Java 8 Update 77 (64-bit)'
    installer: 'salt://win/repo-ng/jre8/jre-8u77-windows-x64.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F86418077F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207231
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'Java 8 Update 77'
    installer: 'salt://win/repo-ng/jre8_x86/jre-8u77-windows-i586.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F83218077F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207229
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8_x86/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% endif %}
    install_flags: '/s REBOOT=Suppress SPONSORS=0'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
  '8.0.730.2':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'Java 8 Update 73 (64-bit)'
    installer: 'salt://win/repo-ng/jre8/jre-8u73-windows-x64.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F86418073F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.sun.com/webapps/download/AutoDL?BundleId=116030
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'Java 8 Update 73'
    installer: 'salt://win/repo-ng/jre8_x86/jre-8u73-windows-i586.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F83218073F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.sun.com/webapps/download/AutoDL?BundleId=116028
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8_x86/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% endif %}
    install_flags: '/s REBOOT=Suppress SPONSORS=0'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
  '8.0.710.15':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'Java 8 Update 71 (64-bit)'
    installer: 'salt://win/repo-ng/jre8/jre-8u71-windows-x64.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F86418071F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.sun.com/webapps/download/AutoDL?BundleId=114689
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'Java 8 Update 71'
    installer: 'salt://win/repo-ng/jre8_x86/jre-8u71-windows-i586.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F83218071F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.sun.com/webapps/download/AutoDL?BundleId=114687
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8_x86/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% endif %}
    install_flags: '/s REBOOT=Suppress SPONSORS=0'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
  '8.0.660.18':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'Java 8 Update 66 (64-bit)'
    installer: 'salt://win/repo-ng/jre8/jre-8u66-windows-x64.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F86418066F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.sun.com/webapps/download/AutoDL?BundleId=113219
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'Java 8 Update 66'
    installer: 'salt://win/repo-ng/jre8_x86/jre-8u66-windows-i586.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F83218066F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.sun.com/webapps/download/AutoDL?BundleId=113217
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8_x86/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% endif %}
    install_flags: '/s REBOOT=Suppress SPONSORS=0'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
  '8.0.600.27':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'Java 8 Update 60 (64-bit)'
    installer: 'salt://win/repo-ng/jre8/jre-8u60-windows-x64.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F86418060F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.sun.com/webapps/download/AutoDL?BundleId=107944
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'Java 8 Update 60'
    installer: 'salt://win/repo-ng/jre8_x86/jre-8u60-windows-i586.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F83218060F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.sun.com/webapps/download/AutoDL?BundleId=107943
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8_x86/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% endif %}
    install_flags: '/s REBOOT=Suppress SPONSORS=0'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
  '8.0.510':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'Java 8 Update 51 (64-bit)'
    installer: 'salt://win/repo-ng/jre8/jre-8u51-windows-x64.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F86418051F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.sun.com/webapps/download/AutoDL?BundleId=107944
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'Java 8 Update 51'
    installer: 'salt://win/repo-ng/jre8_x86/jre-8u51-windows-i586.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F83218051F0} /norestart'
    # due to winrepo installer limitations you need to manually download the exe from
    # http://javadl.sun.com/webapps/download/AutoDL?BundleId=107943
    # and put it on the winrepo on master to install it the 'salt://win/repo-ng/jre8_x86/... way
    # to find manual download links for any version use:
    # http://www.java.com/en/download/manual.jsp
    {% endif %}
    install_flags: '/s REBOOT=Suppress SPONSORS=0'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
