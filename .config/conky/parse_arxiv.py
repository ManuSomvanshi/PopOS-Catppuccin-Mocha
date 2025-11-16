import xml.etree.ElementTree as ET
# Get data from file
with open("arxiv_data.xml", "r") as file:
    dataXML = ET.fromstring(file.read())

# XML namespace for Atom feed
ns = {"atom": "http://www.w3.org/2005/Atom"}

# Extract all title, author, etc.
output = []

for i, entry in enumerate(dataXML.findall("atom:entry", ns)):
    title = entry.find("atom:title", ns).text.strip().replace('$', '')
    authors = [a.find("atom:name", ns).text for a in entry.findall("atom:author", ns)]
    pdf = entry.find("atom:link[@type='application/pdf']", ns).attrib["href"]

    output.append(f"{title}\n{', '.join(authors)}\n{pdf}\n")

for x in output:
    print(x)
