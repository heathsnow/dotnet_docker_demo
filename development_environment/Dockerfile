FROM microsoft/dotnet:1.0.0-preview1

EXPOSE 4088

EXPOSE 5000

CMD ['mkdir /app']

ADD ./app /app

WORKDIR '/app/src/MusicStore'

RUN /usr/bin/dotnet restore

CMD /usr/bin/dotnet run
