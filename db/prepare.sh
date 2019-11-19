#!/bin/bash
set -e
echo "sourcing peqbeta.sql..."
mysql -u root -prootpass eqemu < /bitnami/mariadb/base/peqbeta.sql
echo "sourcing alter.sql..."
mysql -u root -prootpass eqemu < /bitnami/mariadb/edit/alter.sql
echo "sourcing zone.sql..."
mysql -u root -prootpass eqemu < /bitnami/mariadb/edit/zone.sql
echo "sourcing npc_types.sql..."
mysql -u root -prootpass eqemu < /bitnami/mariadb/edit/npc_types.sql