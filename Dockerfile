FROM centos:7
LABEL maintainer="jingram@microsoft.com"
WORKDIR /tempapp
COPY ./bin/Debug/netcoreapp2.1/publish/ /tempapp
RUN rpm -Uvh https://packages.microsoft.com/config/rhel/7/packages-microsoft-prod.rpm
RUN yum update -y
RUN yum install aspnetcore-runtime-2.1 -y
CMD ["dotnet","tempapp4.dll","&"]