//
//  Article.swift
//  NewsReaderMini
//
//  Created by Chad Newbry on 12/12/22.
//

import Foundation

struct Article: Identifiable, Codable {
    
    var id: String
    var title: String
    var publisher: String
    var content: String
    var squareImageURL: String?
    var publishedAt: Date
        
    init() {
        self.id = "00000"
        self.publisher = "Argentina Daily News"
        self.title = "Messi Advances in the World Cup"
        self.squareImageURL = "https://s.yimg.com/bt/api/res/1.2/AlM.NgiQ4oZjUDNUOMtNEw--/YXBwaWQ9eW5ld3M7Y2M9ODY0MDA7cT04NTtmaT1maWxsO3B5b2ZmPTA7dz0xNDA7aD0xNDA-/https://media.zenfs.com/en/times-herald-record/f7a12e89e3ecf441810be2edd4d809f6"
        self.content = "<p>Last season saw plenty of Bucks/Montco swimmers and divers on the podium at the PIAA state championships. </p>\n<p>What does the area's high school swimming scene look like this season?</p>\n<p>Check out some of the top storylines to watch, meets you don't want to miss, and what to expect from your favorite teams in the Suburban One League and Philadelphia Catholic League.</p>\n<p><img alt=\"Swimmers competed at the 2022 District One swimming meet at York's Graham Aquatic Center on February 26, 2022.\" height=\"1365\" id=\"6970618001\" src=\"https://media.zenfs.com/en/bucks-county-courier-times/fb685089a4a8468af4387c308531042a\" width=\"2048\" data-uuid=\"f15554fb-3d06-353e-bfab-c0541ee82fc1\"></p>\n<h2 class=\"presto-h2\"><strong>New coaches on the block</strong> <strong>for the SOL</strong></h2>\n<p><strong>Madison Schluchterer</strong> takes over at <strong>Bensalem</strong>. Schluchterer will undertake the task of rebuilding the program which has seen decreasing numbers. Last year, the Owls had just eight swimmers for the season.</p>\n<p> \"These next few years will be rebuilding years,\" said Schluchterer. \"I am trying to rebuild the culture and commitment of the team.\"</p>\n<p><strong>Dale Johnson</strong>, a CB West grad, is the now at the helm of <strong>Central Bucks East</strong>. </p>\n<p>\"I am looking to build upon what has been an excellent program for many years now,\" said Johnson. \"It is a privilege to come back and help these student athletes to reach their individual and team goals this season.\"</p>\n<p><strong>Meg Gansz </strong>is <strong>Quakertown's </strong>new head coach, but she isn't new to the team. Gansz was the assistant coach under Tony Carty.</p>\n<h2 class=\"presto-h2\"><strong>Philadelphia Catholic League Champions…for three decades and counting</strong></h2>\n<p>Thirty-four years. That’s how many consecutive Catholic League swimming championships <strong>La Salle </strong>has claimed. And there’s no indication that the Explorers, who finished second in the PIAA Class 3A championships, are ready to end that incredible streak. Four of the team’s returners, <strong>Noah Lubinski, Aidan Schnapf, Gabe Cowart </strong>and <strong>Alex Sleptsov</strong> were individual point scorers in the PIAA state championships and will be aiming for gold medals this time around. </p>\n<h2 class=\"presto-h2\"><strong>Wood looks to make a move in the girls PCL standings...</strong></h2>\n<p>On the girls' side, no team has a stranglehold in the PCL, and <strong>Archbishop Wood</strong> won the championship in the 2017-2018 season. Last year, despite having just eight swimmers, the Vikings finished with a winning record and sent several swimmers to the state championships. This season, the Vikings look to increase their numbers and continue the success their returning swimmers saw last season. Seniors <strong>Elizabeth Hetzel </strong>and <strong>Teresa Johnston, </strong>junior <strong>Alyssa Bean, </strong>and sophomore <strong>Alicia Yerkes </strong>make for a very solid core. </p>\n<h2 class=\"presto-h2\"><strong>Hatboro-Horsham girls look to repeat incredible season</strong></h2>\n<p><img alt=\"Kathy Jia from Hatboro Horsham leads her race in the 100 breastroke. She finished first with a time of 1 minute 2 seconds.  Swimmers competed at the 2022 District One swimming meet at York's Graham Aquatic Center on February 27, 2022.\" height=\"1365\" id=\"6970704001\" src=\"https://media.zenfs.com/en/bucks-county-courier-times/e7a6abf3526c2b848577cedaebdc12d8\" width=\"2048\" data-uuid=\"01fbfa1b-546a-3a2a-bf2f-80467f582f3e\"></p>\n<p>In the SOL, Hatboro-Horsham is the team to beat in girls swimming. The Hatters won the PIAA Class 3A championship last season, and, unfortunately for the rest of the league, they return most of their top swimmers. Senior <strong>Kathy Jia</strong> and sophomores <strong>Annie Jia</strong>, <strong>Sarah Parker</strong> and <strong>Emmy Erikson</strong> are all state champions in individual events, and seniors <strong>Mia Tamburrino </strong>and <strong>Laney Claveau </strong>were district qualifiers. </p>\n<h2 class=\"presto-h2\"><strong>Record watch</strong> <strong>for Souderton swimmer</strong></h2>\n<p>Souderton senior Robbie Ferlick is on track to break the pool record in the 50 freestyle. In an early home meet, Frelick posted a time of  21.99 seconds in the event. The pool record stands at 21.0.</p>\n<h2 class=\"presto-h2\"><strong>Must-See</strong> <strong>Meets to Watch</strong> <strong>this Season</strong></h2>\n<p><img alt=\"Emily Cicco of Pennsbury fights through her last lap of the 500 freestyle. She placed first at 5 minutes and 18 seconds, dropping 8 seconds from her seed time.  Swimmers competed at the 2022 District One swimming meet at York's Graham Aquatic Center on February 27, 2022.\" height=\"1365\" id=\"6970692001\" src=\"https://media.zenfs.com/en/bucks-county-courier-times/97a1e3af4f8637d393ccc27f2a93c00b\" width=\"2048\" data-uuid=\"5112df27-12b6-3729-9a07-66c6fee99268\"></p>\n<p>Last season, <strong>North Penn </strong>and <strong>Central Bucks East </strong>finished first and third in the boys District One Class 3A championships. At the state championships, both finished in the top 10, with the Knights taking third place and the Titans eights. The two will meet on Jan. 3 for a must-see showdown. </p>\n<p>When you’ve won 34 consecutive league championships, it can be hard to get hyped up for dual meets. But this season, <strong>La Salle</strong> will host <strong>Christian Brothers Academy,</strong> ranked No. 2 in New Jersey by NJ Advance Media, on Jan. 24. The two last faced off in 2019, with La Salle winning 93-71.</p>\n<p><img alt=\"Swimmers competed at the 2022 District One swimming meet at York's Graham Aquatic Center on February 26, 2022.\" height=\"1365\" id=\"6970554001\" src=\"https://media.zenfs.com/en/bucks-county-courier-times/1a5f417656b886264ad3098829d574f8\" width=\"2048\" data-uuid=\"8266ff05-f787-3e4a-ab24-68cc4eed69c3\"></p>\n<p>Last season, <strong>Neshaminy </strong>boys won the SOL Patriot Division Championship for the first time in school history, edging <strong>Council Rock North</strong> for the title. This year, Neshaminy is looking to repeat, and the Jan. 13 matchup against CR North promises to be highly competitive. On Jan. 3, <strong>Neshaminy </strong>hosts rival <strong>Pennsbury </strong>in another Patriot division meet. Pennsbury has a small but strong senior core looking to lead the Falcons to a championship. </p>\n<p><strong>Pennsbury </strong>girls raced to their second straight SOL Patriot Division championship last season, topping <strong>Council Rock North</strong> 532-480. The two teams will face off on Jan. 17 at CR North. The meet comes just four days after <strong>Pennsbury’s </strong>matchup against archrival <strong>Neshaminy</strong>. Neshaminy finished third in last year’s division championships. </p>\n<p></p><div></div>\n<p><em>This article originally appeared on Bucks County Courier Times: <a href=\"https://www.buckscountycouriertimes.com/story/sports/high-school/swimming-diving/2022/12/12/pa-bucks-montco-winter-swimming-diving-preseason-previews-sol-pcl/69686411007/\">PA Bucks Montco Winter Swimming Diving preseason previews SOL PCL</a></em></p>"
        self.publishedAt = Date(timeIntervalSince1970: TimeInterval(1670878440))
    }
    
    init(from dict: [String: Any]) {
        
        guard let id = dict["article_id"] as? String else {
            preconditionFailure("unable to read article_id from dict")
        }
        
        guard let title = dict["title"] as? String else {
            preconditionFailure("unable to read title from dict")
        }
        
        guard let publisher = dict["publisher"] as? String else {
            preconditionFailure("Unable to read publisher from dict")
        }
        
        // main image dictionary isn't returned for every article
        
        if let mainImageDict = dict["main_image"] as? [String : Any] {
            guard let resolutions = mainImageDict["resolutions"] as? [[String : Any]] else {
                preconditionFailure("No resolutions provided")
            }
            
            // TODO: make a resolution model
            //       that handles serializing this data
            for resolution in resolutions {
                
                guard let tag = resolution["tag"] as? String else {
                    preconditionFailure("No tag provided on given resolution")
                }
                
                if tag == "square-140x140" {
                    guard let squareImageURL = resolution["url"] as? String else {
                        preconditionFailure("No square image provided")
                    }
                    
                    self.squareImageURL = squareImageURL
                    break
                }
            }
        }
        
        guard let content = dict["content"] as? String else {
            preconditionFailure("unable to load content for article")
        }
        
        guard let publishedAt = dict["published_at"] as? Int else {
            preconditionFailure("Unable to read published at date")
        }
        
        self.id = id
        self.title = title
        self.publisher = publisher
        self.content = content
        self.publishedAt = Date(timeIntervalSince1970: TimeInterval(publishedAt))
    }
}
