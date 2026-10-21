#!/bin/sh
set -eu

: "${REACT_APP_BACKEND_BASE_URI:=/api/items/}"

cat > /usr/share/nginx/html/env-config.js <<EOC
window._env_ = {
  REACT_APP_BACKEND_BASE_URI: "${REACT_APP_BACKEND_BASE_URI}"
};
EOC

exec nginx -g "daemon off;"
