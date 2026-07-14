#!/usr/bin/env bash
# bin/render-build.sh
set -e

echo "Installing gems..."
bundle install

echo "Precompiling assets..."
bundle exec rails assets:precompile

echo "Running migrations..."
bundle exec rails db:migrate
