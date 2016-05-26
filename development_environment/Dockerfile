FROM microsoft/dotnet:1.0.0-preview1

CMD ['mkdir /app']

ADD ./app /app

EXPOSE 5000

RUN /bin/bash -c 'cd /app && dotnet restore'

CMD /bin/bash -c 'cd /app/src/MusicStore && dotnet run'
