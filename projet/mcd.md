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

    Quartier ||--|| Établissement : "0..N possède"
    Établissement ||--|| Bière : "0..N possède"
    Bière ||--|| Prix : "1..1 possède"
