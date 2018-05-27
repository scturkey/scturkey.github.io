curl 'https://api.meetup.com/Software-Craftsmanship-Turkey/events?&sign=true&photo-host=public&page=100&status=past'  | jq -r  'reverse | .[] | ("* ["+.local_date+" "+.name+"](https://www.meetup.com/Software-Craftsmanship-Turkey/events/"+.id+")")' > past_meetups.md


