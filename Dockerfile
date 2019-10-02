FROM g4s8/gentoo-builder:latest

WORKDIR /app
RUN emerge --quiet app-misc/jq
COPY action.sh action.sh

CMD ["bash", "/app/action.sh"]
