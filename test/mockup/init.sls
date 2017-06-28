artifactory_mockup_deps:
  pkg.installed:
    - pkgs:
      - haveged
      - vim
      - mariadb-server

artifactory_oss_mockup_repo:
  pkgrepo.managed:
    - humanname: Artifactory OSS Repo
    - name: deb https://jfrog.bintray.com/artifactory-debs jessie main
    - dist: jessie
    - file: /etc/apt/sources.list.d/artifactory_oss.list
    - keyserver: keyserver.ubuntu.com
    - keyid: 6B219DCCD7639232

artifactory_pro_mockup_repo:
  pkgrepo.managed:
    - humanname: Artifactory Pro Repo
    - name: deb https://jfrog.bintray.com/artifactory-pro-debs jessie main
    - dist: jessie
    - file: /etc/apt/sources.list.d/artifactory_pro.list
    - keyserver: keyserver.ubuntu.com
    - keyid: 6B219DCCD7639232

artifactory_mockup_jessie_backports:
  pkgrepo.managed:
    - humanname: Jessie Backports
    - name: deb http://ftp.debian.org/debian jessie-backports main
    - file: /etc/apt/sources.list.d/jessie-backports.list
