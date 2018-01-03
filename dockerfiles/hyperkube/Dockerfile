FROM gcr.io/google-containers/hyperkube:v1.9.0

RUN apt-get -qq update && \
    apt-get -qqy install vim tree ifstat sysstat net-tools procps

RUN sed -i 's/"syntax on/syntax on/g' /etc/vim/vimrc; \
    sed -i 's/"set background=dark/set background=dark/g' /etc/vim/vimrc; \
    echo "set expandtab" >> /etc/vim/vimrc; \
    echo "set tabstop=4" >> /etc/vim/vimrc; \
    echo "set hls" >> /etc/vim/vimrc; \
    echo "map <C-n> :tabnext<CR>" >> /etc/vim/vimrc; \
    echo "map <C-p>  :tabprevious<CR>" >> /etc/vim/vimrc; \
    echo "set tabpagemax=300" >> /etc/vim/vimrc

ADD .bashrc /root
ADD .vimrc  /root
