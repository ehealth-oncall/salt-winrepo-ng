bootracer:
  '6.50.0.450':
    full_name: 'BootRacer'
    installer: 'salt://win/repo-ng/bootracer/bootracer-650.msi'
    uninstaller: 'salt://win/repo-ng/bootracer/bootracer-650.msi'
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
# download zip archive manually and unpack msi to slat master winrepo-ng directory
