FROM node
RUN mkdir -p /followup-app
COPY package.json /followup-app
WORKDIR ./followup-app
RUN npm install
RUN npm install serve -g
COPY . /followup-app
RUN npm run build
CMD serve -s build
EXPOSE 5000