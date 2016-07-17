postgres:
  pg_hba.conf: salt://postgres/pg_hba.conf
  commands:
    initdb: service postgresql initdb

  use_upstream_repo: False

  lookup:
    pkg: 'postgresql-9.3'
    pkg_client: 'postgresql-client-9.3'
    pkgs_extra:
      - postgresql-contrib
      - postgresql-plpython
    pg_hba: '/etc/postgresql/9.3/main/pg_hba.conf'
