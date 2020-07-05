
export $(egrep -v '^#' .env | xargs)
strapi new app --dbclient=mongo
strapi generate:api