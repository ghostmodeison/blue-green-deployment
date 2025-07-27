ARG BASE_IMAGE=957779811736.dkr.ecr.ap-south-1.amazonaws.com/node:latest
FROM ${BASE_IMAGE} As build

LABEL Marketplace-frontend-apisversion="1.0.0.1" \
      contact="Chandan" \
      description="A minimal Node.js Docker image for chandan in Staging" \
      base.image="Node" \
      maintainer="hello@gmail.com"

ENV TZ=Asia/Kolkata

# Set the timezone
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /app
ADD . /app

RUN npm install

# Build the app
#RUN npm run build

# Final stage
FROM 957779811736.dkr.ecr.ap-south-1.amazonaws.com/node:latest
WORKDIR /app
COPY --from=build /app .

# Set a non-root user
USER node

EXPOSE 3000

# Start the app
CMD ["npm", "start"]
