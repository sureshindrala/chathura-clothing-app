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



# # Copy the current content to /opt/chathura/ 





