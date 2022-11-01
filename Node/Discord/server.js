 const {
  Client,
  Attachment
} = require('discord.js');
const bot = new Client();

const cheerio = require('cheerio');

const request = require('request');



const token = '';

const PREFIX = '-';

var version = '1.3';


bot.on('ready', () => {
  console.log('Welcome Back' + version);

})




bot.on('message', message => {

  let args = message.content.substring(PREFIX.length).split(" ");

  switch (args[0]) {
      case 'image':
      image(message);

      break;
  }

});

function image(message){

  var options = {
      url: "http://results.dogpile.com/serp?qc=images&q=" + "food",
      method: "GET",
      headers: {
          "Accept": "text/html",
          "User-Agent": "Chrome"
      }
  };


  request(options, function(error, response, responseBody) {
      if (error) {
          return;
      }


      $ = cheerio.load(responseBody); 


      var links = $(".image a.link");

      var urls = new Array(links.length).fill(0).map((v, i) => links.eq(i).attr("href"));

      console.log(urls);

      if (!urls.length) {

          return;
      }

      // Send result
      message.channel.send( urls[Math.floor(Math.random() * urls.length)]);
  });

function clear(message){
bot.exports.run = async (bot, message, args) => {

  if(!message.member.hasPermission("MANAGE_MESSAGES")) return message.reply("No.");
  if(!args[0]) return message.channel.send("no");
  message.channel.bulkDelete(args[0]).then(() => {
  message.channel.send(`Clear ${args[0]} messages.`).then(msg => msg.delete(1000));
});
}
}
}
bot.login(token);
