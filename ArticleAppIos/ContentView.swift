//
//  ContentView.swift
//  ArticleAppIos
//
//  Created by WDT on 08/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var goToProfile: Bool = false
    let articles = [
        Article(title: "Indonesia's Kominfo Assures Digital Transformation Will Continue After Ransomware Attack",
                imageSource: "https://drive.usercontent.google.com/download?id=1js1lddAd4uCJyr1TCWiaVaLPD60TGtNv", content: "The Ministry of Communications and Information (Kominfo) assured the country's digital transformation efforts will not be deterred by the recent ransomware attack on the Temporary National Data Center (PDNS). Deputy Kominfo Minister Nezar Patria emphasized the importance of staying the course.", author: "Zul", authorImage: "image", createdAt: "8 Jul 2024", reactionCount: "1.5K+"),
        
        Article(title: "Tapera, Continued or Postponed?",
                imageSource: "https://drive.usercontent.google.com/download?id=1PBK69Susvvhmna4SfFzewPpmdJmaLeOk", content: "JAKARTA, KOMPAS — Public rejection regarding the People's Housing Savings or Tapera policy continues to roll out. In response to this, the government has not yet stated whether it will continue or postpone the implementation of the provisions which will cut 3 percent of workers' salaries or income. \n \n Amid the public debate regarding the implementation of Tapera, signals of a postponement of Tapera contributions emerged when the Minister of Public Works and Housing (PUPR), Basuki Hadimuljono, stated that the implementation of Tapera does not have to be rushed.", author: "Zul", authorImage: "image", createdAt: "8 Jul 2024", reactionCount: "2.2K+"),
        Article(title: "Indonesia Versus Online Gambling",
                imageSource: "https://drive.usercontent.google.com/download?id=1HmZ--GYRbnfEf-xN6BNMj1EY4w3TDrul", content: "Jakarta. Online gambling has become the new social pandemic in Indonesia, and the country is getting into full battle mode as many people get hooked on making bets online -- be it young or old, rich or poor, and even government officials. \n \n Online gambling is not something new in Indonesia. In 1987, dangdut legend Rhoma Irama even released the song “Judi” [‘Gambling’], warning how detrimental the practice was. The lyrics even said: “Judi meracuni kehidupan. Judi meracuni keimanan. Pasti, karena perjudian orang malas dibuai harapan. [‘Gambling destroys lives. Gambling ruins one’s faith. Because gambling woos the lazy with false hope.’] \n\n Almost four decades have passed since the song's release, and many Indonesians still get addicted to gambling. The fight against gambling is now harder than ever as the practice has moved online. So almost anyone can place their bets anywhere and anytime as these platforms lure them with promises of easy wins.", author: "Zul", authorImage: "image", createdAt: "8 Jul 2024", reactionCount: "2K+"),

        Article(title: "Dieng Culture Festival to be held in August 2024, with the theme Back to Journey",
                imageSource: "https://drive.usercontent.google.com/download?id=1XtlngUhyXMddSBSgzwEGchpMuYSo0alg", content: "Dieng Culture Festival (DCF) is an annual event held in the Dieng Plateau area in Indonesia. Every year, a lot of individuals eagerly await this event. \n \n DCF displays local cultural arts and traditions performances with the natural charm of Dieng. DCF was first held in 2010 by the Dieng Pandawa Pokdarwis (Tourism Awareness Group) in collaboration with the government and various elements of society. DCF has become one of the most popular cultural festivals in Indonesia.\n\nThe Dieng Cultural Festival is usually held for three consecutive days and presents various interesting events, such as traditional arts and culture in the form of dance, music, shadow puppetry and ketoprak. One of the famous rituals at this festival is the Ruwatan Bocah Rambut Gimbal, which aims to cleanse children from bad luck.", author: "Zul", authorImage: "image", createdAt: "8 Jul 2024", reactionCount: "3.2K+"),
        Article(title: "Morazen Yogyakarta launches after rebrand",
                imageSource: "https://drive.usercontent.google.com/download?id=1JCsaOp9_3bw7x90O2iOEnGTCYdcgGu4w", content: "Morazen Yogyakarta has been officially launched after rebranding from Grand Dafam Signature International Airport Yogyakarta \n\n Hengky Tambayong, general manager of Morazen Yogyakarta told the media in a press conference prior to the gala dinner: “The rebranding is a strategic step to strengthen the hotel’s identity and service standards. The new name Morazen – derived from the combination of ‘mora’ from Latin meaning ‘to linger’ or ‘to delay’, and ‘zen’ from Japanese signifying tranquillity – reflects the hotel’s vision of offering a luxurious and relaxing stay experience.” \n\n Located right across from Yogyakarta International Airport (YIA) in Kulon Progo Regency at the western part of Yogyakarta, the hotel features 197 rooms, an all-day dining and poolside restaurant, coffee corner, rooftop bar and lounge, spa, fitness centre and swimming pool as well as a kid’s corner. It also has a ballroom with a total capacity of 1,200 guests, the biggest in the area, six break-out rooms and a social/working corner at the lobby.", author: "Zul", authorImage: "image", createdAt: "8 Jul 2024", reactionCount: "2K+"),

        Article(title: "Deadly landslide hits illegal gold mine in Indonesia",
                imageSource: "https://drive.usercontent.google.com/download?id=1u_uBnpvIf4pnNJJk2cFvswyjSifSjpuu", content: "At least 11 people have been killed and 45 are missing after heavy rains caused a landslide near an illegal gold mine on the Indonesian island of Sulawesi, officials say. \n\n The landslide on Sunday in the remote Bone Bolango district in Gorontalo province killed miners and residents living near the mine, Heriyanto, head of the local rescue agency Basarnas, said on Monday.", author: "Zul", authorImage: "image", createdAt: "8 Jul 2024", reactionCount: "500+"),
        Article(title: "UGM Students Lead Geothermal Disaster Response Training in Dieng",
                imageSource: "https://drive.usercontent.google.com/download?id=1S-gyrG6pmTNlJ4xJxDjTa9k3X6ZBD_4d", content: "With its geological complexity as a diverse volcanic mountain teeming with natural wonders like scenic landscapes, fertile soil, water, geothermal energy, minerals, rocks, and biodiversity, Dieng grapples with environmental challenges. These challenges include the potential for phreatic eruptions, gas emissions, earthquakes, landslides, and floods. \n \n Recently, the region has faced many environmental issues, ranging from the exploitation of agricultural land and lake siltation to the effects of mass tourism, waste accumulation, and cleanliness concerns. Additionally, development that often disregards the region’s natural uniqueness and community identity threatens local culture and wisdom. ", author: "Zul", authorImage: "image", createdAt: "8 Jul 2024", reactionCount: "2K+"),
        Article(title: "Prabowo's free-meal plan stirs investor fears about Indonesia's finances",
                imageSource: "https://drive.usercontent.google.com/download?id=1eYVZV7iB52uB_KCwKrz24bbqxYqj8hpM", content: "Indonesia's President-elect Prabowo Subianto wants to give school children free meals, but the plan and his pledge to be 'daring' on spending have the country's debt and currency markets on edge.\n\nPrabowo and his team have tried to distance themselves from any suggestions of fiscal profligacy, and to assure market participants the incoming government respects the legal debt limits that cap its budget deficit at 3% of economic output.", author: "Zul", authorImage: "image", createdAt: "8 Jul 2024", reactionCount: "2K+"),
        Article(title: "Analysis: Jokowi pulls all stops to stop Anies from winning Jakarta race",
                imageSource: "https://drive.usercontent.google.com/download?id=1-Hrtc3KpmOEnYvpEPVWBvqkgNj6qTBAu", content: "Surveys may put former Jakarta governor Anies Baswedan as the most popular figure if he runs for reelection for the same job in November, but he will not win it, and may not even be able to contest it, if President Joko “Jokowi” Widodo has anything to do with it. To Jokowi, Anies has become something of a political nemesis in his attempt to build his own political dynasty, to sustain power and influence over the nation beyond Oct. 20 when he steps down from power after a 10-year reign. Jokowi has already got his eldest son Gibran Rakabuming Raka clinch the vice presidency as running mate to Prabowo Subianto, who beat Anies in the presidential race in February. The former furniture salesman has other plans for himself and other members of the family as part of this emerging political dynasty", author: "Zul", authorImage: "image", createdAt: "8 Jul 2024", reactionCount: "700+"),
        Article(title: "German MotoGP: Francesco Bagnaia wins after huge blunder from Jorge Martin",
                imageSource: "https://drive.usercontent.google.com/download?id=1IyAHO7ju1kydJDn-Mq90XYPxwXznpGQn", content: "Making the perfect launch from pole, Jorge Martin swept into turn one ahead of Miguel Oliveira and Francesco Bagnaia \n \n An aggressive move came from Bagnaia at the final corner of lap one as he took second away from Oliveira \n\n Bagnaia then replicated his move on lap two as he swooped through on Martin to take the lead.", author: "Zul", authorImage: "image", createdAt: "8 Jul 2024", reactionCount: "2K+"),
        Article(title: "CMF Watch Pro 2: Nothing releases new entry-level smartwatch with GPS, over a month of battery life and Xiaomi Watch S3 like design",
                imageSource: "https://drive.usercontent.google.com/download?id=1d43kcZ76n55d6NVMNTUGap9gEOocxvKq", content: "Less than a year has passed since Nothing introduced three CMF products by way of the Buds Pro, Watch Pro (curr. $69.99 on Amazon) and a 65 W GaN charger. Since then, the company has released the Phone (2a), which we reviewed just over two months ago. Now, it has officially announced the CMF Watch Pro 2 that looks nothing like the Apple Watch-inspired CMF Watch Pro. \n\n Instead, Nothing has based the CMF Watch Pro 2 around a round AMOLED display that measures 1.32-inches diagonally. For reference, the medium-sized display outputs at 466 x 466 pixels with a 60 Hz refresh rate and 620 nits peak brightness. Moreover, the CMF Watch Pro 2 integrates a 305 mAh battery, which sits within an aluminium housing that is 13.6 mm thick. Incidentally, the case also features a digital crown that can be used as an alternative input method for scrolling through menus and built-in apps.", author: "Zul", authorImage: "image", createdAt: "8 Jul 2024", reactionCount: "5K+"),

    ]
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                List(articles) { article in
                    ItemArticle(article: article)
                }
                
            }
            .navigationBarItems(
                trailing:
                    Button {
                        print("Profile")
                    } label: {
                        NavigationLink(destination: ProfileView(), isActive: self.$goToProfile) {  }
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                            .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 20.0)
                            )
                            .foregroundColor(.black)
                            .onTapGesture {
                                print("Profile Tap \(self.goToProfile)")
                                self.goToProfile.toggle()
                            }
                    }
            )
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Articles")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
        }
        
    }
}

#Preview {
    ContentView()
}
