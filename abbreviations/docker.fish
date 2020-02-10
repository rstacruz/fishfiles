abbr dc 'docker-compose'

# Just up/down
abbr dcu 'docker-compose up'
abbr dcd 'docker-compose down'

# Restart version of 'dcu'
# abbr dcr 'docker-compose down; docker-compose up -d; docker-compose logs -f --tail=0'

# Logs
abbr dcl 'docker-compose logs'
abbr dclf 'docker-compose logs -f'

# Run (as a server)
abbr drs 'docker-compose run --rm --service-ports web'

# Run (as a task)
abbr drt 'docker-compose run --rm --no-deps web'

# Default
abbr dr 'docker-compose run --rm web'
