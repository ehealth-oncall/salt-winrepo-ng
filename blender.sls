# both 32-bit (x86) AND a 64-bit (AMD64) installer available
{% set PROGRAM_FILES = "%ProgramFiles%" %}
blender:
  '2.77':
    full_name: 'Blender'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'http://ftp.nluug.nl/pub/graphics/blender/release/Blender2.77/blender-2.77a-windows64.msi'
    uninstaller: 'http://ftp.nluug.nl/pub/graphics/blender/release/Blender2.77/blender-2.77a-windows64.msi'
    {% elif grains['cpuarch'] == 'x86' %}
    installer: 'http://ftp.nluug.nl/pub/graphics/blender/release/Blender2.77/blender-2.77a-windows32.msi'
    uninstaller: 'http://ftp.nluug.nl/pub/graphics/blender/release/Blender2.77/blender-2.77a-windows32.msi'
    {% endif %}
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
