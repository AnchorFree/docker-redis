protected-mode no
port 6379
bind 0.0.0.0
timeout 0
tcp-keepalive 300
daemonize no
supervised no
loglevel warning
logfile ""
databases 2

#save 900 1
#save 300 10
#save 60 10000

stop-writes-on-bgsave-error yes

rdbcompression yes
rdbchecksum yes

dbfilename dump.rdb
dir ./

requirepass {{ REDIS_PASSWORD }}

maxclients 10000

maxmemory {{ REDIS_MAX_MEMORY }}
maxmemory-policy volatile-lru
maxmemory-samples 5

appendonly no

slowlog-log-slower-than 10000
slowlog-max-len 128

latency-monitor-threshold 0

notify-keyspace-events ""

hash-max-ziplist-entries 512
hash-max-ziplist-value 64
list-max-ziplist-size -2
list-compress-depth 0
set-max-intset-entries 512
zset-max-ziplist-entries 128
zset-max-ziplist-value 64
hll-sparse-max-bytes 3000
activerehashing yes
client-output-buffer-limit normal 0 0 0
client-output-buffer-limit slave 256mb 64mb 60
client-output-buffer-limit pubsub 32mb 8mb 60
hz 10
aof-rewrite-incremental-fsync yes
