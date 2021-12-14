cql="create keyspace posts_k with replication = {'class': 'SimpleStrategy', 'replication_factor': 2};"

until echo $cql; do
	now=$(date + "%T")
	echo "$now - cqlsh: Node still unavailable, will retry another time"
	sleep 2
done &

exec /usr/local/bin/docker-entrypoint.sh "$@"