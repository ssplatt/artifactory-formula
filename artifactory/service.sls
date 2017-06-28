# vim: ft=sls
{% from "artifactory/map.jinja" import artifactory with context %}

artifactory_service:
 service.{{ artifactory.service.state }}:
   - name: {{ artifactory.service.name }}
   - enable: {{ artifactory.service.enable }}
