# Custom kafka connect image

Kafka connect image with additional libs downloaded from maven repository

It uses docker multi stage build pulling dependencies in first stage using maven-dependency-plugin.
