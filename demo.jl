include("src/GBIF.jl")
using GBIF

# Single occurrence
GBIF.occurrence("1425221362")

# Search occurrences (no parameters)
GBIF.occurrences()

# Search occurrences (with parameters)
gimme_some_wolves = Dict("scientificName" => "Canis lupus", "year" => "2003", "isGeoreferenced" => true, "rtyui" => 2)
wolves_2003 = GBIF.occurrences(gimme_some_wolves)

map(x -> (x["issues"]), wolves_2003["results"])
