# vim: ft=sls
{% from "artifactory/map.jinja" import artifactory with context %}

artifactory_pkg:
  pkg.installed:
    - name: {{ artifactory.pkg }}

artifactory_dependencies:
  pkg.installed:
    - pkgs: {{ artifactory.dep_pkgs }}
    - fromrepo: {{ artifactory.dep_from_repo }}
