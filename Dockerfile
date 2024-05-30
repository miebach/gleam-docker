FROM elixir:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    curl \
    git \
    build-essential


# Install Rust non-interactively
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Download the Gleam source code git repository
RUN mkdir -p /opt/gleam && \
    cd /opt/ && \
    git clone https://github.com/gleam-lang/gleam.git --branch main && \
    cd gleam && \
    export PATH=~/.cargo/bin:$PATH && \
    make install
    
    
# Verify the compiler is installed
RUN . ~/.bashrc && gleam --version

# Set the working directory
RUN mkdir -p /app
WORKDIR /app







