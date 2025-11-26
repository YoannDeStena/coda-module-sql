# Entités

Entités:
- Établissement
- Quartiers
- Bières
- Prix

# Relations & Attributs

Établissement:
- ID
- Nom
- Bières
- Prix
- Quartier

Quartiers:
- ID
- Nom

Bières:
- ID
- Nom
- Genre
- Prix


Prix:
- ID
- Quantité

# Règles

Chaque quartier peut avoir un nombre indéfini d'établissements qui ont différentes bières avec des prix différents. Même une bière du même nom et type existant dans plusieurs établissements peut avoir un prix différent.