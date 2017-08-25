FROM microsoft/dotnet

WORKDIR /dotnet-app
ENV ASPNETCORE_URLS http://+:8080

COPY . /dotnet-app

RUN dotnet restore
RUN dotnet publish

CMD ["dotnet", "run"]

EXPOSE 8080

