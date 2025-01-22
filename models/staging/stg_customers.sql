-- La CTE source récupère toutes les colonnes de la table brute raw_customers
with source as (
    select * from {{ source('jaffle_shop', 'raw_customers') }}
),
-- La CTE renamed applique une transformation en renommant les colonnes pour les rendre plus descriptives. 
-- Cette étape est importante pour préparer les données à des transformations ou analyses ultérieures.

renamed as (
    select
        id as customer_id,
        name as customer_name
    from source
)
-- La requête finale sélectionne toutes les colonnes de la CTE renamed, offrant une approche modulaire pour appliquer des transformations intermédiaires tout en conservant un modèle final clair et simple.
select * from renamed