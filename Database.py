#Imports
from bs4 import BeautifulSoup
from urllib.request import Request, urlopen
from typing import List, NamedTuple

## Scraping the database ##

#Pokedex URL
pdxurl = "https://pokemondb.net"

#URL we are getting the data from
#url = "https://pokemondb.net/pokedex/stats/gen5"
url = "https://pokemondb.net/pokedex/all"

#Requesting the data 
request = Request(
    url,
    headers = {'User-Agent': 'Mozilla/5.0'}
)

#Return request
page = urlopen(request)

#Read page in bytes
page_content_bytes = page.read()

#Decode bytes into string
page_decode = page_content_bytes.decode("utf-8")

#Print result from page
#print(page_decode)

#Reformat data via BeautifulSoup
soup = BeautifulSoup(page_decode, "html.parser")

#Put information into rows 
pokemon_rows = soup.find_all("table", id="pokedex")[0].find_all("tbody")[0].find_all("tr")
#print(pokemon_rows)

#Pokemon Class
class Pokemon(NamedTuple):
    id: int
    name: str
    avatar: str
    details_path:str
    types: List[str]
    total: int
    hp: int
    atk: int
    dfns: int
    spatk: int
    spdef: int
    speed: int
    entry: str

#List of all scraped pokemon data
pokemon_scraped = []

#Retrieving data from each row
for pokemon in pokemon_rows:
    pokemon_data = pokemon.find_all("td")
    id = pokemon_data[0]['data-sort-value']
    avatar = pokemon_data[0].find_all("span")[0].find_all("img")[0]['src']

    #Retrieves name and looks for a special name
    name = pokemon_data[1].find_all("a")[0].getText()
    if pokemon_data[1].find_all("small"):
        name = pokemon_data[1].find_all("a")[0].getText() + " " + pokemon_data[1].find_all("small")[0].getText()
    
    #Gets typing of pokemon
    types = []
    for pokemon_type in pokemon_data[2].find_all("a"):
        types.append(pokemon_type.getText())
    
    #Retrieving stats
    total = pokemon_data[3].getText()
    hp = pokemon_data[4].getText()
    atk = pokemon_data[5].getText()
    dfns = pokemon_data[6].getText()
    spatk = pokemon_data[7].getText()
    spdef = pokemon_data[8].getText()
    speed = pokemon_data[9].getText()

    #Navigates to page of specific pokemon
    details_uri = pokemon_data[1].find_all("a")[0]["href"]
    pokeurl = pdxurl + details_uri

    #Gets html of pokeurl for pokedex entry
    request = Request(
        pokeurl,
        headers = {'User-Agent': 'Mozilla/5.0'}
    )
    pokepage = urlopen(request).read()
    pokepagedecode = pokepage.decode("utf-8")
    pokepagesoup = BeautifulSoup(pokepagedecode, 'html.parser')

    #Gets pokemon entry
    try: 
        pokemon_entry = pokepagesoup.find_all("main")[0].find_all("div",{"class": "resp-scroll"})[2].find_all("tr")[1].find_all("td")[0].getText()
    except:
        print("Cannot find the entry")
        pokemon_entry = ""


    #Pokemon Object
    pokemon_object = Pokemon(
        id = int(id),
        name = name,
        avatar = avatar,
        details_path = details_uri,
        types = types,
        total = int(total),
        hp = int(hp),
        atk = int(atk),
        dfns = int(dfns),
        spatk = int(spatk),
        spdef = int(spdef),
        speed = int(speed),
        entry = pokemon_entry
    )

    #Put pokemon into a list
    pokemon_scraped.append(pokemon_object)

    #print(name)
    #print(types)
    #print(pokeurl)
    #print(pokemon_entry)
    #print(total, atk, dfns, spatk, spdef, speed)
    print(pokemon_object)

    #print((pokemon_scraped))
    
