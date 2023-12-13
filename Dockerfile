
FROM ruby:3.1

RUN apt-get update -qq && apt-get install -y cmake
WORKDIR /opt/app-root/src/

RUN gem install bundler
# ADD Gemfile Gemfile.lock /opt/app-root/src/
# ADD config.ru data /opt/app-root/src/
COPY Gemfile Gemfile.lock config.ru data/ /opt/app-root/src/

RUN bundle install

EXPOSE 9292
CMD ["rackup", "--host", "0.0.0.0"]


# ------



# # gem_server_project/Dockerfile
# FROM ruby:2.7

# # Establecer el directorio de trabajo en /usr/src/app
# WORKDIR /usr/src/app

# # Copiar el Gemfile y Gemfile.lock al contenedor
# COPY Gemfile Gemfile.lock ./

# # Instalar las gemas
# RUN bundle install

# # Configuración adicional para Docker (puedes agregar más líneas según sea necesario)

# # Exponer el puerto 9292 para Gemstash
# EXPOSE 9292

# # Comando para iniciar Gemstash
# CMD ["bundle", "exec", "gemstash", "start", "--no-daemon"]
