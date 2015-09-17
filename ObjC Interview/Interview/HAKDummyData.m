//
//  HAKDummyData.m
//  Interview
//
//  Created by Grace on 6/10/14.
//  Copyright (c) 2014 Hackerati. All rights reserved.
//

#import "HAKDummyData.h"

@implementation HAKDummyData

+(NSArray*)dataForTables{
    NSArray *arr = @[@{@"url":@"https://www.sciencenews.org/sites/default/files/main/articles/sm_turtle_FREE.jpg",
                       @"comment":@"oh wow a turtle!"},
                     @{@"url":@"http://www.nose2tail.co.uk/cat-matlock-derbyshire.jpg",
                       @"comment":@"cat!"},
                     @{@"url":@"http://news.distractify.com/wp-content/uploads/2014/01/new-userguide-image.jpg",
                       @"comment":@"doggie"},
                     @{@"url":@"http://hemet.animalsfirst4u.org/puppies.jpg",
                       @"comment":@"puppies!"},
                     @{@"url":@"http://freedwallpaper.com/wp-content/uploads/2014/02/bird-wallpaper-1920x1080-044.jpg",
                       @"comment":@"bright bird"},
                     @{@"url":@"http://www.birdsasart.com/248/Blue-gray-Tanager-_V5W8991--Canopy-Lodge,-Anton-Valley,-Panama.jpg",
                       @"comment":@"grey and blue bird"},
                     @{@"url":@"http://www.horsebreedsinfo.com/images/brown_horse_running.jpg",
                       @"comment":@"horse"},
                     @{@"url":@"https://cougar.collegiate-va.org/lower/first/assets/grasshopper.jpg",
                       @"comment":@"grasshopper"},
                     @{@"url":@"http://www.mrjohnsons.co.uk/uploads/small/copy_hamster_nutc.jpg",
                       @"comment":@"hamster"},
                     @{@"url":@"http://martywolff.cdn3.mirahost.com/public/uploads/content/10/turtle-facial.jpg",
                       @"comment":@"helllllzz yeah!"},
                     @{@"url":@"http://www.stlucianewsonline.com/wp-content/uploads/2014/01/Sea-Turtle.jpg",
                       @"comment":@"neat"},
                     @{@"url":@"http://iago18335.files.wordpress.com/2008/06/turtle_018.jpg",
                       @"comment":@"prettttttiesttt!!!!"},
                     @{@"url":@"http://oceanservice.noaa.gov/facts/green-turtle.jpg",
                       @"comment":@"FIRST"},
                     @{@"url":@"https://blogs.libraries.iub.edu/et2/files/2013/06/turtle3.jpg",
                       @"comment":@"what a wonderful picture"},
                     @{@"url":@"http://www.uwphotographyguide.com/images/Articles/turtle_yo_milisen.jpg",
                       @"comment":@"how lovely"},
                     @{@"url":@"http://venturegalleries.com/wp-content/uploads/2013/06/jumbo-red-ear-slider-turtles-for-sale-picture-1-640-454.jpg",
                       @"comment":@"that looks like it's alive"},
                     @{@"url":@"http://media.npr.org/assets/img/2012/07/19/turtle_custom-052cda505b398270eb0f846b3d77cbd51c014fcd-s6-c30.jpg",
                       @"comment":@"is this real?"},
                     @{@"url":@"http://welcometonorthcyprus.co.uk/files/9113/5100/4123/turtle.jpg",
                       @"comment":@"welcome to the world turtle!"},
                     @{@"url":@"http://1.bp.blogspot.com/-WEc4IyVg_S4/UA9GPCe5-PI/AAAAAAAAAjU/oNGUzSzwfcw/s1600/turtle.jpg",
                       @"comment":@"some comment"},
                     @{@"url":@"http://cdn1.arkive.org/media/75/75DEBD1A-9920-4700-8D5D-79C40AC8F500/Presentation.Large/western-pond-turtle-adult-male.jpg",
                       @"comment":@"i saw that dude!"},
                     @{@"url":@"http://images.northrup.org/picture/xl/turtle/turtle-at-zoo%20(2).jpg",
                       @"comment":@"zooooooo!"},
                     @{@"url":@"http://www.bhmpics.com/walls/beautiful_sea_turtle-normal.jpg",
                       @"comment":@"nice"},
                     @{@"url":@"http://www.cwrl.utexas.edu/~bump/images/animals/turtles/transformer-turtles.jpg",
                       @"comment":@"FIRRRRSSstt"},
                     @{@"url":@"http://upload.wikimedia.org/wikipedia/commons/2/2b/A2_Midland_painted_turtle.jpg",
                       @"comment":@"how does this work?"},
                     @{@"url":@"http://img2.wikia.nocookie.net/__cb20140315213209/animaljam/images/6/60/Turtle.jpg",
                       @"comment":@"that sure is a picture"},
                     @{@"url":@"https://c402277.ssl.cf1.rackcdn.com/photos/1257/images/hero_small/SeaTurtle-1600x600px.jpg?1345590072",
                       @"comment":@"comment comment comment"},
                     @{@"url":@"http://i.telegraph.co.uk/multimedia/archive/01476/turtle460_1476904c.jpg",
                       @"comment":@"hmmmmm"},
                     @{@"url":@"http://www.mrwallpaper.com/wallpapers/little-turtle.jpg",
                       @"comment":@"cool pic"},
                     @{@"url":@"http://www.allturtles.com/wp-content/uploads/2013/05/Algae-on-Turtle-2.jpg",
                       @"comment":@"what kinda camera is that with?"},
                     @{@"url":@"http://images.nationalgeographic.com/wpf/media-live/photos/000/589/cache/green-turtle-egypt_58925_990x742.jpg",
                       @"comment":@"great"},
                     @{@"url":@"http://upload.wikimedia.org/wikipedia/commons/4/49/Eastern_Box_Turtle_Head.jpg",
                       @"comment":@"i have one like that"},
                     @{@"url":@"http://images.northrup.org/picture/xl/reeve's-turtle/reeve's-turtle-1.jpg",
                       @"comment":@"cute!"},
                     @{@"url":@"http://ocean.si.edu/sites/default/files/photos/1883-turtle1_1.jpg",
                       @"comment":@"what's her name?"},
                     @{@"url":@"http://gallery.pethobbyist.com/data/567Centrata_Carapace.jpg",
                       @"comment":@"cool"},
                     @{@"url":@"http://upload.wikimedia.org/wikipedia/commons/0/00/Western_Painted_Turtle.jpeg",
                       @"comment":@"pyramid scheme"},
                     @{@"url":@"http://www.babyturtlesarecool.com/image/grey-baby-turtle.jpg",
                       @"comment":@"sweet turtle"},
                     @{@"url":@"http://ocean.si.edu/sites/default/files/styles/colorbox_full/public/photos/flatback%20turtles.jpg?itok=xNIhPALW",
                       @"comment":@"awesome"},
                     @{@"url":@"http://images.alphacoders.com/212/212191.jpg",
                       @"comment":@"how many filters did you use?"}];
    
    NSMutableArray *mutarr = [[NSMutableArray alloc] initWithArray:arr];
    [mutarr addObjectsFromArray:arr];
    [mutarr addObjectsFromArray:arr];
    [mutarr addObjectsFromArray:arr];
    [mutarr addObjectsFromArray:arr];
    
    return [mutarr copy];
}


@end
