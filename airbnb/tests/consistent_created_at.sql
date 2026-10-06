SELECT *
FROM 
    {{ ref('fct_reviews') }} as fr 
    INNER JOIN {{ ref('dim_listings_cleansed') }} dlc 
        USING(listing_id)
WHERE 1=1 
    AND fr.review_date < dlc.created_at