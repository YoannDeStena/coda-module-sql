erDiagram

    Établissement {
        int id_etablissement
        string nom
    }

    Bière {
        int id_bière
        string nom
        string type
    }

    Quartier {
        int id_quartier
        string nom
    }

    Prix {
        int id_prix
        int quantité
    }

    Quartier ||--|| Établissement : "1..1 possède"
    Établissement ||--|| Bière : "1..N possède"
    Bière ||--|| Prix : "N..1 possède"
