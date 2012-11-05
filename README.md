# Details

A simple demo app showing how to bring together padrino, spine.js, filepicker.io and rivets.js. 
You can drag and drop images which are then 'pushed' to padrino and filepicker. 
The image IDs are data-binded via rivets.js and automatically synced once updates are made.

# Usage

You need to set `ENV['FILEPICKER_API_KEY'] = 'XXXX'` with your API key and then you just go through the normal Padrino setup process;

1. `$ bundle install` 
2. `$ bundle exec padrino rake seed`
3. `$ bundle exec padrino start`

Have fun!
