require 'json'
myresponse = `curl --include --request POST -H "Accept: application/json" --header "Content-Type: application/json" --header "app_id: 8bee7105" --header "app_key: 4334dbf407deafe34d43595e9d810787" --data '{"image":"http://il2.picdn.net/shutterstock/videos/15864976/thumb/1.jpg", "subject_id":"Elizabeth", "gallery_name":"MyGallery"}' 'https://api.kairos.com/enroll'`

response = myresponse[myresponse.index('{')..-1]

mybody = JSON.parse(response)

puts mybody

puts ''

mysource = "http://il2.picdn.net/shutterstock/videos/15864976/thumb/1.jpg"

emotionanalytics = `curl --include --request POST -H "Accept: application/json" --header "Content-Type: application/json" --header "app_id: 8bee7105" --header "app_key: 4334dbf407deafe34d43595e9d810787" 'https://api.kairos.com/v2/media?source=#{mysource}'`

myemotion = emotionanalytics[emotionanalytics.index('{')..-1]

realemotion = JSON.parse(myemotion)

puts realemotion["id"]

analyticsrequest = `curl --include --header "app_id: 8bee7105" --header "app_key: 4334dbf407deafe34d43595e9d810787" 'https://api.kairos.com/v2/analytics/#{realemotion["id"]}'`

puts analyticsrequest
