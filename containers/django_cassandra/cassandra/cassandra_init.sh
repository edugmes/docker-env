cas_query="create keyspace if not exists posts_k with replication = {'class': 'SimpleStrategy', 'replication_factor': 2};"

until echo $cas_query | cqlsh
do
	now=$(date +%T)
	echo "[$now INIT CQLSH]: Node still unavailable, will retry another time"
	sleep 2
done &

exec /usr/local/bin/docker-entrypoint.sh "$@"