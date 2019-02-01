abbr dc 'docker-compose'
# Bring it up, then show logs. ^C stops logs but keeps server running
abbr dcu 'docker-compose up -d; docker-compose logs -f'
abbr dcd 'docker-compose down'
# Restart version of 'dcu'
abbr dcr 'docker-compose down; docker-compose up -d; docker-compose logs -f'
abbr dcl 'docker-compose logs'
abbr dclf 'docker-compose logs -f'

# Run (as a server)
abbr drs 'docker-compose run --rm --service-ports web'

# Run (as a task)
abbr drt 'docker-compose run --rm --no-deps web'

# Default
abbr dr 'docker-compose run --rm web'
