FROM alpine:latest

# refresh
RUN apk upgrade && apk upgrade

# install system utilities
RUN apk add git curl wget bash --update 

# install the fish shell
RUN apk add fish --update

# install system dependencies
RUN apk add nodejs npm ripgrep build-base --update

# install neovim
RUN apk add neovim --update

# install the fira code nerd font
RUN apk add font-fira-code-nerd --update

WORKDIR /workspace

# copy over the neovim config from host to image
COPY .config/nvim /root/.config/nvim

COPY . .
