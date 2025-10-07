FROM node:14

# Set working directory
WORKDIR /opt/chathura

# Copy only package files first for better layer caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all other source code
COPY . .

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose the app port
EXPOSE 3000

# Start the app
CMD ["/entrypoint.sh"]


# FROM node:14
# ARG SRC_DIR=/opt/chathura
# # Create a directory inside the container
# RUN mkdir -p $SRC_DIR

# # Set the working directory inside the container 
# WORKDIR $SRC_DIR


# # Copy the current content to /opt/chathura/ 
# COPY . $SRC_DIR



# # Install node.js dependencies
# RUN npm install 

# # Expose the port
# EXPOSE 3000 

# # Copy entrypoint script
# COPY entrypoint.sh /entrypoint.sh

# # make the entrypoint as executable
# RUN chmod +x /entrypoint.sh

# CMD ["/entrypoint.sh"]

# # CMD ["java", "-jar", "/opt/chathura/chathura-users.jar"] java application//




