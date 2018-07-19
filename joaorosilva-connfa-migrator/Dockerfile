FROM joaorosilva/connfa:2.1.0

ENV INSTALL_DIR /var/www/laravel

# Now we can install Connfa!
WORKDIR $INSTALL_DIR

# Run Migration Commands
COPY migrate.sh .

# Run Migrations!
ENTRYPOINT "$INSTALL_DIR/migrate.sh" 

