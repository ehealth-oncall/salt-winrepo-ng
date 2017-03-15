node.js:
  {% for version in ['7.0.0'] %}
  '{{ version }}':
    full_name: 'Node.js'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'https://nodejs.org/dist/v{{ version }}/node-v{{ version }}-x64.msi'
    uninstaller: 'https://nodejs.org/dist/v{{ version }}/node-v{{ version }}-x64.msi'
    {% elif grains['cpuarch'] == 'x86' %}
    installer: 'https://nodejs.org/dist/v{{ version }}/node-v{{ version }}-x86.msi'
    uninstaller: 'https://nodejs.org/dist/v{{ version }}/node-v{{ version }}-x86.msi'
    {% endif %}
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
