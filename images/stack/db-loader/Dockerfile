FROM centos
RUN yum install mariadb -y 
ADD https://raw.githubusercontent.com/citb33/project-documentation/master/student-application.sql /schema.sql
CMD mysql -h ${DBHOST} -u ${DBNAME} -p${DBPASS} </schema.sql
