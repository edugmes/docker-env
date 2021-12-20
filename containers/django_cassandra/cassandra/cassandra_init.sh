until cqlsh -f ./init.cql
do
	now=$(date +%T)
	echo "[$now INIT CQLSH]: Node still unavailable, will retry another time"
	sleep 2
done &

exec /usr/local/bin/docker-entrypoint.sh "$@"