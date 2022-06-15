SELECT cities.name, 
countries.name,
continents.name
FROM countries, cities, continents, cities_countries_continents
WHERE cities_countries_continents.continent_id = continents.id
 AND cities_countries_continents.country_id = countries.id
 AND cities_countries_continents.city_id = cities.id
 AND continents.name LIKE '%am%'
 ORDER BY cities.name
