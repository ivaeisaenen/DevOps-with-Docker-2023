FROM node:16
EXPOSE 5000
ENV REACT_APP_BACKEND_URL=http://127.0.0.1:8000
WORKDIR /usr/src/app
COPY ./material-applications/example-frontend/ .
RUN npm install
RUN npm run build
RUN npm install -g serve
CMD ["serve", "-s", "-l", "5000", "build"]
