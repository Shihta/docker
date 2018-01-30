#!/usr/bin/env python
# -*- coding: utf-8 -*-

import requests
from bs4 import BeautifulSoup
import sys

if __name__ == "__main__":
    session = requests.Session()
    base = 'https://www.23txt.com'
    n = '/files/article/html/40/40204/13219484.html'
    f = open('bai.txt', 'w')
    for page in range(50):
        r = session.get(base + n)
        r.encoding = 'gbk'
        soup = BeautifulSoup(r.text, "html.parser")
        content = soup.find('div', {'id':'content'}).text.encode('utf8').replace('    ', '\n').strip()
        n = soup.find('div', {'class':'bottem1'}).find_all('a')[2].get('href')
        bookname = soup.find('div', {'class':'bookname'}).find('h1').text.encode('utf8')
        print page, bookname, n
        f.write('\n' + bookname + '\n\n' + content + '\n')
        # f.write(content)
    f.close()

