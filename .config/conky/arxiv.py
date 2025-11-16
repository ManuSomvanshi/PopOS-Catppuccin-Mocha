import urllib, urllib.request

# get data using arXiv API
url = 'http://export.arxiv.org/api/query?search_query=cat:math.GT&sortBy=submittedDate&max_results=5' 
data = urllib.request.urlopen(url)

# parse the XML string and wrtie into file
file = open("arxiv_data.xml", "w")
file.write(data.read().decode('utf-8'))
file.close()
