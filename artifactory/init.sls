# vim: ft=sls
{% from "artifactory/map.jinja" import artifactory with context %}

{% if artifactory.enabled %}
include:
  - artifactory.install
  - artifactory.config
  - artifactory.service
{% else %}
'artifactory-formula disabled':
  test.succeed_without_changes
{% endif %}
