install_apache:
  pkg.installed:
    - names:
       - apache2
       - prometheus-haproxy-exporter
    # - onlyif: grains['os'] == 'Debian' and grains['id'] == 'minion1'

/var/www/html/index.html:
  file.managed:
    - contents_pillar: apache-content
    - user: root
    - group: root
    - mode: 644
