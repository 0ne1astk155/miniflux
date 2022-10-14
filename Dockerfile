docker run -d \
  -p 80:8080 \
  --name miniflux \
  -e "DATABASE_URL=postgres://miniflux:*password*@*dbhost*/miniflux?sslmode=disable" \
  -e "RUN_MIGRATIONS=1" \
  -e "CREATE_ADMIN=1" \
  -e "ADMIN_USERNAME=*username*" \
  -e "ADMIN_PASSWORD=*password*" \
  miniflux/miniflux:latest