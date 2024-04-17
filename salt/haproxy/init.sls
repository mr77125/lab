install_haproxy:
  pkg.installed:
    - names:
      - haproxy
      - prometheus-haproxy-exporter

haproxy_config:
  file.managed:
    - name: /etc/haproxy/haproxy.cfg
    - source: salt://haproxy/haproxy.cfg
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: install_haproxy  # Ensure HAProxy is installed first
