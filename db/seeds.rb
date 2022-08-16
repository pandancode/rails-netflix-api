# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


# ! CREATING USERS
p "Creating users"
User.create(email: "test@test.com", password: "qqqqqq", username: "Tester")
User.create(email: "aminm-34@hotmail.fr", password: "qqqqqq", username: "Focus-Me34")
p "Finished creating users"

# ! POPULAR MOVIES PULLED FROM THE TMDB DATABASE
movies = [
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/p1F51Lvj3sMopG948F5HsBbl43C.jpg",
        "genre_ids": [
            28,
            12,
            14
        ],
        "original_language": "en",
        "original_title": "Thor: Love and Thunder",
        "synopsis": "After his retirement is interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods, Thor enlists the help of King Valkyrie, Korg, and ex-girlfriend Jane Foster, who now inexplicably wields Mjolnir as the Mighty Thor. Together they embark upon a harrowing cosmic adventure to uncover the mystery of the God Butcher’s vengeance and stop him before it’s too late.",
        "popularity": 13642.4,
        "poster_path": "https://image.tmdb.org/t/p/original/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg",
        "release_date": "2022-07-06",
        "title": "Thor: Love and Thunder",
        "video": false,
        "vote_average": 6.8,
        "vote_count": 1708
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg",
        "genre_ids": [
            10751,
            16,
            12,
            35,
            14
        ],
        "original_language": "en",
        "original_title": "Minions: The Rise of Gru",
        "synopsis": "A fanboy of a supervillain supergroup known as the Vicious 6, Gru hatches a plan to become evil enough to join them, with the backup of his followers, the Minions.",
        "popularity": 7369.381,
        "poster_path": "https://image.tmdb.org/t/p/original/wKiOkZTN9lUUUNZLmtnwubZYONg.jpg",
        "release_date": "2022-06-29",
        "title": "Minions: The Rise of Gru",
        "video": false,
        "vote_average": 7.8,
        "vote_count": 1058
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/9eAn20y26wtB3aet7w9lHjuSgZ3.jpg",
        "genre_ids": [
            12,
            28,
            878
        ],
        "original_language": "en",
        "original_title": "Jurassic World Dominion",
        "synopsis": "Four years after Isla Nublar was destroyed, dinosaurs now live—and hunt—alongside humans all over the world. This fragile balance will reshape the future and determine, once and for all, whether human beings are to remain the apex predators on a planet they now share with history’s most fearsome creatures.",
        "popularity": 7155.21,
        "poster_path": "https://image.tmdb.org/t/p/original/kAVRgw7GgK1CfYEJq8ME6EvRIgU.jpg",
        "release_date": "2022-06-01",
        "title": "Jurassic World Dominion",
        "video": false,
        "vote_average": 7.1,
        "vote_count": 2550
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/odJ4hx6g6vBt4lBWKFD1tI8WS4x.jpg",
        "genre_ids": [
            28,
            18
        ],
        "original_language": "en",
        "original_title": "Top Gun: Maverick",
        "synopsis": "After more than thirty years of service as one of the Navy’s top aviators, and dodging the advancement in rank that would ground him, Pete “Maverick” Mitchell finds himself training a detachment of TOP GUN graduates for a specialized mission the likes of which no living pilot has ever seen.",
        "popularity": 5655.708,
        "poster_path": "https://image.tmdb.org/t/p/original/62HCnUTziyWcpDaBO2i1DX17ljH.jpg",
        "release_date": "2022-05-24",
        "title": "Top Gun: Maverick",
        "video": false,
        "vote_average": 8.3,
        "vote_count": 1814
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/AfvIjhDu9p64jKcmohS4hsPG95Q.jpg",
        "genre_ids": [
            27,
            53
        ],
        "original_language": "en",
        "original_title": "The Black Phone",
        "synopsis": "Finney Shaw, a shy but clever 13-year-old boy, is abducted by a sadistic killer and trapped in a soundproof basement where screaming is of little use. When a disconnected phone on the wall begins to ring, Finney discovers that he can hear the voices of the killer’s previous victims. And they are dead set on making sure that what happened to them doesn’t happen to Finney.",
        "popularity": 4047.213,
        "poster_path": "https://image.tmdb.org/t/p/original/p9ZUzCyy9wRTDuuQexkQ78R2BgF.jpg",
        "release_date": "2022-06-22",
        "title": "The Black Phone",
        "video": false,
        "vote_average": 8,
        "vote_count": 1612
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/nW5fUbldp1DYf2uQ3zJTUdachOu.jpg",
        "genre_ids": [
            16,
            878,
            12,
            28,
            10751
        ],
        "original_language": "en",
        "original_title": "Lightyear",
        "synopsis": "Legendary Space Ranger Buzz Lightyear embarks on an intergalactic adventure alongside a group of ambitious recruits and his robot companion Sox.",
        "popularity": 3897.225,
        "poster_path": "https://image.tmdb.org/t/p/original/ox4goZd956BxqJH6iLwhWPL9ct4.jpg",
        "release_date": "2022-06-15",
        "title": "Lightyear",
        "video": false,
        "vote_average": 7.3,
        "vote_count": 1446
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/27Mj3rFYP3xqFy7lnz17vEd8Ms.jpg",
        "genre_ids": [
            28,
            53
        ],
        "original_language": "en",
        "original_title": "The Gray Man",
        "synopsis": "When a shadowy CIA agent uncovers damning agency secrets, he's hunted across the globe by a sociopathic rogue operative who's put a bounty on his head.",
        "popularity": 3697.245,
        "poster_path": "https://image.tmdb.org/t/p/original/8cXbitsS6dWQ5gfMTZdorpAAzEH.jpg",
        "release_date": "2022-07-13",
        "title": "The Gray Man",
        "video": false,
        "vote_average": 7,
        "vote_count": 1313
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/wcKFYIiVDvRURrzglV9kGu7fpfY.jpg",
        "genre_ids": [
            14,
            28,
            12
        ],
        "original_language": "en",
        "original_title": "Doctor Strange in the Multiverse of Madness",
        "synopsis": "Doctor Strange, with the help of mystical allies both old and new, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary.",
        "popularity": 3524.975,
        "poster_path": "https://image.tmdb.org/t/p/original/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg",
        "release_date": "2022-05-04",
        "title": "Doctor Strange in the Multiverse of Madness",
        "video": false,
        "vote_average": 7.5,
        "vote_count": 5114
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/l99dylTOAMkwKSr54X5ytiEtnLA.jpg",
        "genre_ids": [
            14,
            12,
            28
        ],
        "original_language": "en",
        "original_title": "Dragon Knight",
        "synopsis": "Many years after the war has been lost, and all the dragons slain, a lone knight travels the lands of Agonos seeking to raise an army against the demon lord Abaddon. When a healer's vision reveals that one dragon still lives, and together with an eager young squire, the knight sets off in search of the fabled creature. As the armies of Abaddon descend on the human kingdoms, the dragon is their last hope of fending off the horde, before it lays waste to the lands of men. But does the creature even exist? And if it does, will it fight for them once more?",
        "popularity": 2337.953,
        "poster_path": "https://image.tmdb.org/t/p/original/uSMJbYhaEpQtF9vkMhpgljc0CA4.jpg",
        "release_date": "2022-03-21",
        "title": "Dragon Knight",
        "video": false,
        "vote_average": 5.9,
        "vote_count": 10
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/5PnypKiSj2efSPqThNjTXz8jwOg.jpg",
        "genre_ids": [
            14,
            28
        ],
        "original_language": "en",
        "original_title": "The Princess",
        "synopsis": "A beautiful, strong-willed young royal refuses to wed the cruel sociopath to whom she is betrothed and is kidnapped and locked in a remote tower of her father’s castle. With her scorned, vindictive suitor intent on taking her father’s throne, the princess must protect her family and save the kingdom.",
        "popularity": 2250.582,
        "poster_path": "https://image.tmdb.org/t/p/original/9pCoqX24a6rE981fY1O3PmhiwrB.jpg",
        "release_date": "2022-06-16",
        "title": "The Princess",
        "video": false,
        "vote_average": 7.1,
        "vote_count": 387
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/4dNv1W1KMSLdYGz0tCEaynF0E4Q.jpg",
        "genre_ids": [
            28,
            53,
            80
        ],
        "original_language": "en",
        "original_title": "Indemnity",
        "synopsis": "An ex-fireman with PTSD goes on the run when accused of a crime he doesn't even remember committing, leading him down a rabbit hole of conspiracy to the highest degree.",
        "popularity": 2103.875,
        "poster_path": "https://image.tmdb.org/t/p/original/tVbO8EAbegVtVkrl8wNhzoxS84N.jpg",
        "release_date": "2022-02-11",
        "title": "Indemnity",
        "video": false,
        "vote_average": 6.8,
        "vote_count": 43
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/obTdaJ22RNFi3fmzUVT5eWOFsOe.jpg",
        "genre_ids": [
            53,
            80
        ],
        "original_language": "en",
        "original_title": "Borrego",
        "synopsis": "A young botanist relocates to a small desert town to study an invasive plant species. While out on research, she comes to the aid of a downed plane only to find herself taken captive by an inexperienced drug mule who forces her to lead a trek across the sweltering desert to his drop. A local sheriff is drawn into the hunt as his rebellious daughter sets out to find the missing botanist, all the while being pursued by a local drug receiver.",
        "popularity": 2068.937,
        "poster_path": "https://image.tmdb.org/t/p/original/kPzQtr5LTheO0mBodIeAXHgthYX.jpg",
        "release_date": "2022-01-14",
        "title": "Borrego",
        "video": false,
        "vote_average": 5.9,
        "vote_count": 34
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/jazlkwXfw4KdF6fVTRsolOvRCmu.jpg",
        "genre_ids": [
            53
        ],
        "original_language": "en",
        "original_title": "The Ledge",
        "synopsis": "A rock climbing adventure between two friends turns into a terrifying nightmare. After Kelly captures the murder of her best friend on camera, she becomes the next target of a tight-knit group of friends who will stop at nothing to destroy the evidence and anyone in their way. Desperate for her safety, she begins a treacherous climb up a mountain cliff and her survival instincts are put to the test when she becomes trapped with the killers just 20 feet away.",
        "popularity": 2173.68,
        "poster_path": "https://image.tmdb.org/t/p/original/mKFT6Q7PjrRLYuPLfmH4WLCXOiD.jpg",
        "release_date": "2022-02-18",
        "title": "The Ledge",
        "video": false,
        "vote_average": 6.3,
        "vote_count": 75
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/ftGzl2GCyko61Qp161bQElN2Uzd.jpg",
        "genre_ids": [
            28,
            53
        ],
        "original_language": "en",
        "original_title": "Last Seen Alive",
        "synopsis": "After Will Spann's wife suddenly vanishes at a gas station, his desperate search to find her leads him down a dark path that forces him to run from authorities and take the law into his own hands.",
        "popularity": 2034.249,
        "poster_path": "https://image.tmdb.org/t/p/original/qvqyDj34Uivokf4qIvK4bH0m0qF.jpg",
        "release_date": "2022-05-19",
        "title": "Last Seen Alive",
        "video": false,
        "vote_average": 6.5,
        "vote_count": 193
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/ocUp7DJBIc8VJgLEw1prcyK1dYv.jpg",
        "genre_ids": [
            28,
            12,
            878
        ],
        "original_language": "en",
        "original_title": "Spider-Man: No Way Home",
        "synopsis": "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
        "popularity": 1901.662,
        "poster_path": "https://image.tmdb.org/t/p/original/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
        "release_date": "2021-12-15",
        "title": "Spider-Man: No Way Home",
        "video": false,
        "vote_average": 8,
        "vote_count": 14534
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/keBPoGFL8iTJWvJ28CqaGYR92BX.jpg",
        "genre_ids": [
            878,
            28,
            53
        ],
        "original_language": "en",
        "original_title": "Prey",
        "synopsis": "In the Comanche Nation in 1717, a fierce and highly skilled warrior named Naru learns the prey she is stalking is a highly evolved alien with a technologically advanced arsenal.",
        "popularity": 1631.759,
        "poster_path": "https://image.tmdb.org/t/p/original/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg",
        "release_date": "2022-08-02",
        "title": "Prey",
        "video": false,
        "vote_average": 8.2,
        "vote_count": 1063
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/vsAlkb3Fv485AmNiSoyjEBcIB7B.jpg",
        "genre_ids": [
            16,
            28
        ],
        "original_language": "en",
        "original_title": "Constantine: The House of Mystery",
        "synopsis": "John Constantine wakes up in the eerie House of Mystery with no recollection of how he got there. Fortunately, Zatanna and his friends are all there. Unfortunately, they have a bad habit of turning into demons and ripping him to shreds, over and over again!",
        "popularity": 1579.354,
        "poster_path": "https://image.tmdb.org/t/p/original/kqYDoEb9PxLXM2ccoHInMMJalti.jpg",
        "release_date": "2022-05-02",
        "title": "Constantine: The House of Mystery",
        "video": false,
        "vote_average": 6.8,
        "vote_count": 43
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/k5SYb9AM0x4IGVxG8fYEEH4wK1I.jpg",
        "genre_ids": [
            10749,
            18
        ],
        "original_language": "en",
        "original_title": "Purple Hearts",
        "synopsis": "An aspiring musician agrees to a marriage of convenience with a soon-to-deploy Marine, but a tragedy soon turns their fake relationship all too real.",
        "popularity": 2206.642,
        "poster_path": "https://image.tmdb.org/t/p/original/4JyNWkryifWbWXJyxcWh3pVya6N.jpg",
        "release_date": "2022-07-29",
        "title": "Purple Hearts",
        "video": false,
        "vote_average": 8.6,
        "vote_count": 763
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/egoyMDLqCxzjnSrWOz50uLlJWmD.jpg",
        "genre_ids": [
            28,
            12,
            10751,
            35
        ],
        "original_language": "en",
        "original_title": "Sonic the Hedgehog 2",
        "synopsis": "After settling in Green Hills, Sonic is eager to prove he has what it takes to be a true hero. His test comes when Dr. Robotnik returns, this time with a new partner, Knuckles, in search for an emerald that has the power to destroy civilizations. Sonic teams up with his own sidekick, Tails, and together they embark on a globe-trotting journey to find the emerald before it falls into the wrong hands.",
        "popularity": 1729.917,
        "poster_path": "https://image.tmdb.org/t/p/original/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
        "release_date": "2022-03-30",
        "title": "Sonic the Hedgehog 2",
        "video": false,
        "vote_average": 7.7,
        "vote_count": 2707
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/zTffxrYeeKfDMuaIeabDjKTaSuX.jpg",
        "genre_ids": [
            27,
            53
        ],
        "original_language": "en",
        "original_title": "Shut In",
        "synopsis": "A young single mother is held captive along with her two children by a violent ex and must plot their escape before it’s too late.",
        "popularity": 1789.919,
        "poster_path": "https://image.tmdb.org/t/p/original/b5ug4LyLQFeR6azAJyIPBQz5ur9.jpg",
        "release_date": "2022-03-24",
        "title": "Shut In",
        "video": false,
        "vote_average": 7.2,
        "vote_count": 155
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/b1L7qevxiVpkVFq4dmdQPGFPWH0.jpg",
        "genre_ids": [
            27
        ],
        "original_language": "en",
        "original_title": "The Exorcism of God",
        "synopsis": "An American priest working in Mexico is considered a saint by many local parishioners. However, due to a botched exorcism, he carries a secret that’s eating him alive until he gets an opportunity to face his demon one final time.",
        "popularity": 1695.244,
        "poster_path": "https://image.tmdb.org/t/p/original/hangTmbxpSV4gpHG7MgSlCWSSFa.jpg",
        "release_date": "2022-03-11",
        "title": "The Exorcism of God",
        "video": false,
        "vote_average": 7.2,
        "vote_count": 482
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/t0mwKhUDa62hdhdKSsN4xMfhY5Z.jpg",
        "genre_ids": [
            18,
            35
        ],
        "original_language": "en",
        "original_title": "Dog",
        "synopsis": "An army ranger and his dog embark on a road trip along the Pacific Coast Highway to attend a friend's funeral.",
        "popularity": 1723.401,
        "poster_path": "https://image.tmdb.org/t/p/original/rkpLvPDe0ZE62buUS32exdNr7zD.jpg",
        "release_date": "2022-02-17",
        "title": "Dog",
        "video": false,
        "vote_average": 7.4,
        "vote_count": 750
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/C8FpZfTPEZDjngPlatiFsaDB4A.jpg",
        "genre_ids": [
            28,
            35,
            53
        ],
        "original_language": "en",
        "original_title": "Bullet Train",
        "synopsis": "Unlucky assassin Ladybug is determined to do his job peacefully after one too many gigs gone off the rails. Fate, however, may have other plans, as Ladybug's latest mission puts him on a collision course with lethal adversaries from around the globe—all with connected, yet conflicting, objectives—on the world's fastest train.",
        "popularity": 1330.848,
        "poster_path": "https://image.tmdb.org/t/p/original/tVxDe01Zy3kZqaZRNiXFGDICdZk.jpg",
        "release_date": "2022-07-03",
        "title": "Bullet Train",
        "video": false,
        "vote_average": 7.4,
        "vote_count": 123
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/t9K8ycUBCplWiICDOKRNRYcEH9e.jpg",
        "genre_ids": [
            16,
            28,
            14
        ],
        "original_language": "ja",
        "original_title": "劇場版 呪術廻戦 0",
        "synopsis": "Yuta Okkotsu is a nervous high school student who is suffering from a serious problem—his childhood friend Rika has turned into a curse and won't leave him alone. Since Rika is no ordinary curse, his plight is noticed by Satoru Gojo, a teacher at Jujutsu High, a school where fledgling exorcists learn how to combat curses. Gojo convinces Yuta to enroll, but can he learn enough in time to confront the curse that haunts him?",
        "popularity": 1479.828,
        "poster_path": "https://image.tmdb.org/t/p/original/3pTwMUEavTzVOh6yLN0aEwR7uSy.jpg",
        "release_date": "2021-12-24",
        "title": "Jujutsu Kaisen 0",
        "video": false,
        "vote_average": 7.8,
        "vote_count": 241
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/33qGtN2GpGEb94pn25PDPeWQZLk.jpg",
        "genre_ids": [
            28,
            80,
            53
        ],
        "original_language": "en",
        "original_title": "Vendetta",
        "synopsis": "When his daughter is murdered, William Duncan takes the law into his own hands, setting out on a quest for retribution. After killing the street thug responsible for her death, he finds himself in the middle of a war with the thug's brother, father, and their gang, who are equally hell-bent on getting even. What ensues is a tense back-and-forth game of vengeance. By the end, William comes to find that the quest for revenge never has a winner.",
        "popularity": 1518.553,
        "poster_path": "https://image.tmdb.org/t/p/original/7InGE2Sux0o9WGbbn0bl7nZzqEc.jpg",
        "release_date": "2022-05-17",
        "title": "Vendetta",
        "video": false,
        "vote_average": 6.5,
        "vote_count": 125
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/1Ds7xy7ILo8u2WWxdnkJth1jQVT.jpg",
        "genre_ids": [
            28,
            12,
            35
        ],
        "original_language": "en",
        "original_title": "The Lost City",
        "synopsis": "Reclusive author Loretta Sage writes about exotic places in her popular adventure novels that feature a handsome cover model named Alan. While on tour promoting her new book with Alan, Loretta gets kidnapped by an eccentric billionaire who hopes she can lead him to the ancient city's lost treasure that featured in her latest story. Alan, determined to prove he can be a hero in real life and not just on the pages of her books, sets off to rescue her.",
        "popularity": 1450.133,
        "poster_path": "https://image.tmdb.org/t/p/original/neMZH82Stu91d3iqvLdNQfqPPyl.jpg",
        "release_date": "2022-03-24",
        "title": "The Lost City",
        "video": false,
        "vote_average": 6.8,
        "vote_count": 1697
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/uR0FopHrAjDlG5q6PZB07a1JOva.jpg",
        "genre_ids": [
            16,
            878,
            28
        ],
        "original_language": "ja",
        "original_title": "ドラゴンボール超：スーパーヒーロー",
        "synopsis": "The Red Ribbon Army, an evil organization that was once destroyed by Goku in the past, has been reformed by a group of people who have created new and mightier Androids, Gamma 1 and Gamma 2, and seek vengeance against Goku and his family.",
        "popularity": 1322.169,
        "poster_path": "https://image.tmdb.org/t/p/original/rugyJdeoJm7cSJL1q4jBpTNbxyU.jpg",
        "release_date": "2022-06-11",
        "title": "Dragon Ball Super: Super Hero",
        "video": false,
        "vote_average": 7.6,
        "vote_count": 95
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/mTupUmnuwwAyA0CNqpwaZn5mqjk.jpg",
        "genre_ids": [
            28,
            27,
            53,
            10752,
            14
        ],
        "original_language": "en",
        "original_title": "WarHunt",
        "synopsis": "1945. A U.S. military cargo plane loses control and violently crashes behind enemy lines in the middle of the German black forest. Major Johnson sends a squad of his bravest soldiers on a rescue mission to retrieve the top-secret material the plane was carrying, led by Sergeants Brewer and Walsh. They soon discover hanged Nazi soldiers and other dead bodies bearing ancient, magical symbols. Suddenly their compasses fail, their perceptions twist and straying from the group leads to profound horrors as they are attacked by a powerful, supernatural force.",
        "popularity": 1276.13,
        "poster_path": "https://image.tmdb.org/t/p/original/9HFFwZOTBB7IPFmn9E0MXdWave3.jpg",
        "release_date": "2022-01-21",
        "title": "WarHunt",
        "video": false,
        "vote_average": 5.3,
        "vote_count": 51
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/zGLHX92Gk96O1DJvLil7ObJTbaL.jpg",
        "genre_ids": [
            14,
            12,
            28
        ],
        "original_language": "en",
        "original_title": "Fantastic Beasts: The Secrets of Dumbledore",
        "synopsis": "Professor Albus Dumbledore knows the powerful, dark wizard Gellert Grindelwald is moving to seize control of the wizarding world. Unable to stop him alone, he entrusts magizoologist Newt Scamander to lead an intrepid team of wizards and witches. They soon encounter an array of old and new beasts as they clash with Grindelwald's growing legion of followers.",
        "popularity": 1356.894,
        "poster_path": "https://image.tmdb.org/t/p/original/3c5GNLB4yRSLBby0trHoA1DSQxQ.jpg",
        "release_date": "2022-04-06",
        "title": "Fantastic Beasts: The Secrets of Dumbledore",
        "video": false,
        "vote_average": 6.9,
        "vote_count": 2469
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/g3pG27i0v6eKWDKLf4GQsKZxmZX.jpg",
        "genre_ids": [
            53,
            28
        ],
        "original_language": "en",
        "original_title": "Hot Seat",
        "synopsis": "An ex-hacker is forced to break into high-level banking institutions, another man must try to penetrate the booby-trapped building to get the young man off the hot seat.",
        "popularity": 1254.652,
        "poster_path": "https://image.tmdb.org/t/p/original/TUmSO5EPIZAfRSOEjmbrgbTw8i.jpg",
        "release_date": "2022-07-01",
        "title": "Hot Seat",
        "video": false,
        "vote_average": 6.3,
        "vote_count": 36
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/wUwizGzbTk5CTiKBnE4Pq1MONwD.jpg",
        "genre_ids": [
            16,
            12,
            10751,
            14
        ],
        "original_language": "en",
        "original_title": "The Sea Beast",
        "synopsis": "The life of a legendary sea monster hunter is turned upside down when a young girl stows away on his ship.",
        "popularity": 1179.396,
        "poster_path": "https://image.tmdb.org/t/p/original/9Zfv4Ap1e8eKOYnZPtYaWhLkk0d.jpg",
        "release_date": "2022-06-24",
        "title": "The Sea Beast",
        "video": false,
        "vote_average": 7.7,
        "vote_count": 579
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/iOFBH9KtjKMntbP2kheeOpMQTcC.jpg",
        "genre_ids": [
            28,
            35,
            53
        ],
        "original_language": "en",
        "original_title": "The Man from Toronto",
        "synopsis": "In a case of mistaken identity, the world’s deadliest assassin, known as the Man from Toronto, and a New York City screw-up are forced to team up after being confused for each other at an Airbnb.",
        "popularity": 1221.595,
        "poster_path": "https://image.tmdb.org/t/p/original/uTCfTibqtk4f90cC59bLPMOmsfc.jpg",
        "release_date": "2022-06-24",
        "title": "The Man from Toronto",
        "video": false,
        "vote_average": 6.5,
        "vote_count": 589
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/fOy2Jurz9k6RnJnMUMRDAgBwru2.jpg",
        "genre_ids": [
            16,
            10751,
            35,
            14
        ],
        "original_language": "en",
        "original_title": "Turning Red",
        "synopsis": "Thirteen-year-old Mei is experiencing the awkwardness of being a teenager with a twist – when she gets too excited, she transforms into a giant red panda.",
        "popularity": 1101.194,
        "poster_path": "https://image.tmdb.org/t/p/original/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg",
        "release_date": "2022-03-10",
        "title": "Turning Red",
        "video": false,
        "vote_average": 7.5,
        "vote_count": 2903
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/6d1mHKcozT5AaZeI76ehJrBt0hr.jpg",
        "genre_ids": [
            27
        ],
        "original_language": "zh",
        "original_title": "咒",
        "synopsis": "Inspired by a true story of a family who believed they were possessed by spirits, this film follows a woman who must protect her child from a curse.  WARNING: This is a cursed video, it might contain certain risks to watch. For those who dares to follow, please solve the puzzle of my daughter's curse with me.",
        "popularity": 1185.15,
        "poster_path": "https://image.tmdb.org/t/p/original/6zltP23zLGPogsHZUazSrrwNuKs.jpg",
        "release_date": "2022-03-18",
        "title": "Incantation",
        "video": false,
        "vote_average": 7.2,
        "vote_count": 222
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/gG9fTyDL03fiKnOpf2tr01sncnt.jpg",
        "genre_ids": [
            28,
            878,
            14
        ],
        "original_language": "en",
        "original_title": "Morbius",
        "synopsis": "Dangerously ill with a rare blood disorder, and determined to save others suffering his same fate, Dr. Michael Morbius attempts a desperate gamble. What at first appears to be a radical success soon reveals itself to be a remedy potentially worse than the disease.",
        "popularity": 1149.526,
        "poster_path": "https://image.tmdb.org/t/p/original/6JjfSchsU6daXk2AKX8EEBjO3Fm.jpg",
        "release_date": "2022-03-30",
        "title": "Morbius",
        "video": false,
        "vote_average": 6.5,
        "vote_count": 2281
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/cqnVuxXe6vA7wfNWubak3x36DKJ.jpg",
        "genre_ids": [
            28,
            12,
            14
        ],
        "original_language": "en",
        "original_title": "The Northman",
        "synopsis": "Prince Amleth is on the verge of becoming a man when his father is brutally murdered by his uncle, who kidnaps the boy's mother. Two decades later, Amleth is now a Viking who's on a mission to save his mother, kill his uncle and avenge his father.",
        "popularity": 1208.806,
        "poster_path": "https://image.tmdb.org/t/p/original/zhLKlUaF1SEpO58ppHIAyENkwgw.jpg",
        "release_date": "2022-04-07",
        "title": "The Northman",
        "video": false,
        "vote_average": 7.2,
        "vote_count": 2076
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/h6XfgbzQEV4sitsIVY63pawLI0s.jpg",
        "genre_ids": [
            35,
            27,
            10752
        ],
        "original_language": "es",
        "original_title": "Malnazidos",
        "synopsis": "They're soldiers on different sides of the war. But when the dead come back to life, the only side they want to be on is the one that survives.",
        "popularity": 1043.487,
        "poster_path": "https://image.tmdb.org/t/p/original/avokvOwhjVR9GgISsSSgb2A343G.jpg",
        "release_date": "2022-03-11",
        "title": "Valley of the Dead",
        "video": false,
        "vote_average": 6.3,
        "vote_count": 149
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/vjnLXptqdxnpNJer5fWgj2OIGhL.jpg",
        "genre_ids": [
            28,
            53,
            80
        ],
        "original_language": "en",
        "original_title": "Memory",
        "synopsis": "Alex, an assassin-for-hire, finds that he's become a target after he refuses to complete a job for a dangerous criminal organization. With the crime syndicate and FBI in hot pursuit, Alex has the skills to stay ahead, except for one thing: he is struggling with severe memory loss, affecting his every move. Alex must question his every action and whom he can ultimately trust.",
        "popularity": 1121.286,
        "poster_path": "https://image.tmdb.org/t/p/original/4Q1n3TwieoULnuaztu9aFjqHDTI.jpg",
        "release_date": "2022-04-28",
        "title": "Memory",
        "video": false,
        "vote_average": 7.3,
        "vote_count": 644
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/zSDyqp2mhV45ZjI1EUBMfzupKKt.jpg",
        "genre_ids": [
            27,
            28
        ],
        "original_language": "en",
        "original_title": "V for Vengeance",
        "synopsis": "After learning that their younger sibling escaped an earlier kidnapping attempt that also killed their parents, two estranged sisters must join forces to rescue her from a group of bloodthirsty vampires. Out for revenge and control of a vampirism vaccine, Thorn and his band of the undead soon learn that they messed with the wrong family.",
        "popularity": 1149.55,
        "poster_path": "https://image.tmdb.org/t/p/original/jLtP8TLycVzLUlkkhp8PipXfUh6.jpg",
        "release_date": "2022-06-07",
        "title": "V for Vengeance",
        "video": false,
        "vote_average": 6.6,
        "vote_count": 34
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/o31kGDH9GbAZjVLwPYno8XvQGV2.jpg",
        "genre_ids": [
            28,
            53
        ],
        "original_language": "en",
        "original_title": "9 Bullets",
        "synopsis": "A former burlesque dancer turned author discovers a second chance at life and redemption when she risks everything to rescue her young neighbor after he witnesses his parents’ murder. Now on the run from the local crime boss, who happens to be her longtime ex, she makes a desperate attempt to get the boy to safety.",
        "popularity": 1054.721,
        "poster_path": "https://image.tmdb.org/t/p/original/cuFPxoFopAjFUz4oIMUzpzeTA8I.jpg",
        "release_date": "2022-04-14",
        "title": "9 Bullets",
        "video": false,
        "vote_average": 5.6,
        "vote_count": 52
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/qBu6blwnOA75Hz61QHrNe8unUNw.jpg",
        "genre_ids": [
            53,
            80,
            18
        ],
        "original_language": "en",
        "original_title": "Collision",
        "synopsis": "Over the course of one fateful day, a corrupt businessman and his socialite wife race to save their daughter from a notorious crime lord.",
        "popularity": 1083.1,
        "poster_path": "https://image.tmdb.org/t/p/original/4zsihgkxMZ7MrflNCjkD3ySFJtc.jpg",
        "release_date": "2022-06-16",
        "title": "Collision",
        "video": false,
        "vote_average": 5.9,
        "vote_count": 102
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/3G1Q5xF40HkUBJXxt2DQgQzKTp5.jpg",
        "genre_ids": [
            16,
            35,
            10751,
            14
        ],
        "original_language": "en",
        "original_title": "Encanto",
        "synopsis": "The tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia, in a magical house, in a vibrant town, in a wondrous, charmed place called an Encanto. The magic of the Encanto has blessed every child in the family—every child except one, Mirabel. But when she discovers that the magic surrounding the Encanto is in danger, Mirabel decides that she, the only ordinary Madrigal, might just be her exceptional family's last hope.",
        "popularity": 990.201,
        "poster_path": "https://image.tmdb.org/t/p/original/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg",
        "release_date": "2021-11-24",
        "title": "Encanto",
        "video": false,
        "vote_average": 7.7,
        "vote_count": 7084
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/zXNcRqR33DqL8f2YYwPvRQsKuTm.jpg",
        "genre_ids": [
            28,
            53,
            18
        ],
        "original_language": "en",
        "original_title": "Asking For It",
        "synopsis": "After small town waitress Joey is sexually assaulted after a date with her old friend Mike, she befriends mysterious stranger Regina. Regina introducers her to The Cherry Bombers, an all femme gang including Beatrice, Lily, Sal, Jett, Angie, and Fala. All suffering from past traumas, together they fight a misogynistic society by targeting violent frat boys, a corrupt police force of human traffickers led by Sheriff Morel, and the dangerous alt-right group MFM (Men’s First Movement) headed by Mark Vanderhill. As Joey is drawn further into their chaotic world, Sal’s old flame, Logan County Sheriff Vernon, investigates MFM, leading to a thrilling showdown.",
        "popularity": 1013.373,
        "poster_path": "https://image.tmdb.org/t/p/original/ro3yvVbzT2zI2KrHWBA81a2x5iR.jpg",
        "release_date": "2022-03-04",
        "title": "Asking For It",
        "video": false,
        "vote_average": 5.1,
        "vote_count": 14
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/aEGiJJP91HsKVTEPy1HhmN0wRLm.jpg",
        "genre_ids": [
            28,
            12
        ],
        "original_language": "en",
        "original_title": "Uncharted",
        "synopsis": "A young street-smart, Nathan Drake and his wisecracking partner Victor “Sully” Sullivan embark on a dangerous pursuit of “the greatest treasure never found” while also tracking clues that may lead to Nathan’s long-lost brother.",
        "popularity": 1012.789,
        "poster_path": "https://image.tmdb.org/t/p/original/rJHC1RUORuUhtfNb4Npclx0xnOf.jpg",
        "release_date": "2022-02-10",
        "title": "Uncharted",
        "video": false,
        "vote_average": 7.2,
        "vote_count": 2994
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/ulkWS7Atv0vv33KVCSAmNizAmJd.jpg",
        "genre_ids": [
            878,
            53
        ],
        "original_language": "en",
        "original_title": "Spiderhead",
        "synopsis": "A prisoner in a state-of-the-art penitentiary begins to question the purpose of the emotion-controlling drugs he's testing for a pharmaceutical genius.",
        "popularity": 1020.354,
        "poster_path": "https://image.tmdb.org/t/p/original/5hTK0J9SGPLSTFwcbU0ELlJsnAY.jpg",
        "release_date": "2022-06-15",
        "title": "Spiderhead",
        "video": false,
        "vote_average": 5.8,
        "vote_count": 796
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/bHTAaLCXnMTThs57mAbptjmOLX2.jpg",
        "genre_ids": [
            35,
            18
        ],
        "original_language": "en",
        "original_title": "Not Okay",
        "synopsis": "An ambitious young woman, desperate for followers and fame, fakes a trip to Paris to up her social media presence. When a terrifying incident takes place in the real world and becomes part of her imaginary trip, her white lie becomes a moral quandary that offers her all the attention she’s wanted.",
        "popularity": 812.566,
        "poster_path": "https://image.tmdb.org/t/p/original/x1q3FkqFHBkMeKnHiS6GYgdLvUs.jpg",
        "release_date": "2022-07-29",
        "title": "Not Okay",
        "video": false,
        "vote_average": 6.8,
        "vote_count": 143
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/wNQpfAZkySbinb93qVwWIWaot1x.jpg",
        "genre_ids": [
            10402,
            14,
            35,
            878,
            10751,
            10770
        ],
        "original_language": "en",
        "original_title": "Z-O-M-B-I-E-S 3",
        "synopsis": "Zed and Addison are beginning their final year at Seabrook High in the town that’s become a safe haven for monsters and humans alike. Zed is anticipating an athletic scholarship that will make him the first Zombie to attend college, while Addison is gearing up for Seabrook’s first international cheer-off competition. Then suddenly, extraterrestrial beings appear around Seabrook, provoking something other than friendly competition.",
        "popularity": 874.842,
        "poster_path": "https://image.tmdb.org/t/p/original/ug8X5UkgdvcZ0WW0WNo5p0F1NGn.jpg",
        "release_date": "2022-07-09",
        "title": "Z-O-M-B-I-E-S 3",
        "video": false,
        "vote_average": 7.9,
        "vote_count": 175
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/tRS6jvPM9qPrrnx2KRp3ew96Yot.jpg",
        "genre_ids": [
            80,
            9648,
            53
        ],
        "original_language": "en",
        "original_title": "The Batman",
        "synopsis": "In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.",
        "popularity": 920.241,
        "poster_path": "https://image.tmdb.org/t/p/original/74xTEgt7R36Fpooo50r9T25onhq.jpg",
        "release_date": "2022-03-01",
        "title": "The Batman",
        "video": false,
        "vote_average": 7.8,
        "vote_count": 5803
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/rRGl4Uqo962I2iqQSOT8nArWNWd.jpg",
        "genre_ids": [
            16,
            28,
            878
        ],
        "original_language": "en",
        "original_title": "Green Lantern: Beware My Power",
        "synopsis": "Recently discharged Marine sniper John Stewart is at a crossroads in his life, one which is only complicated by receiving an extraterrestrial ring which grants him the powers of the Green Lantern of Earth. Unfortunately, the ring doesn't come with instructions - but it does come with baggage, like a horde of interplanetary killers bent on eliminating every Green Lantern in the universe. Now, with the aid of the light-hearted Green Arrow, Adam Strange and Hawkgirl, this reluctant soldier must journey into the heart of a galactic Rann/Thanagar war and somehow succeed where all other Green Lanterns have failed.",
        "popularity": 789.363,
        "poster_path": "https://image.tmdb.org/t/p/original/nS41LN1m2HYvVotvgOTcbPW2cjL.jpg",
        "release_date": "2022-07-12",
        "title": "Green Lantern: Beware My Power",
        "video": false,
        "vote_average": 7.3,
        "vote_count": 74
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/qjGrUmKW78MCFG8PTLDBp67S27p.jpg",
        "genre_ids": [
            16,
            28,
            12,
            14
        ],
        "original_language": "ja",
        "original_title": "劇場版「鬼滅の刃」無限列車編",
        "synopsis": "Tanjirō Kamado, joined with Inosuke Hashibira, a boy raised by boars who wears a boar's head, and Zenitsu Agatsuma, a scared boy who reveals his true power when he sleeps, boards the Infinity Train on a new mission with the Fire Hashira, Kyōjurō Rengoku, to defeat a demon who has been tormenting the people and killing the demon slayers who oppose it!",
        "popularity": 817.558,
        "poster_path": "https://image.tmdb.org/t/p/original/h8Rb9gBr48ODIwYUttZNYeMWeUU.jpg",
        "release_date": "2020-10-16",
        "title": "Demon Slayer -Kimetsu no Yaiba- The Movie: Mugen Train",
        "video": false,
        "vote_average": 8.4,
        "vote_count": 2592
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/m3Ys7UDzUzOyoPYKzp4GhKKokUr.jpg",
        "genre_ids": [
            16,
            10751,
            14,
            35,
            12
        ],
        "original_language": "en",
        "original_title": "Hotel Transylvania: Transformania",
        "synopsis": "When Van Helsing's mysterious invention, the \"Monsterfication Ray,\" goes haywire, Drac and his monster pals are all transformed into humans, and Johnny becomes a monster. In their new mismatched bodies, Drac and Johnny must team up and race across the globe to find a cure before it's too late, and before they drive each other crazy.",
        "popularity": 792.497,
        "poster_path": "https://image.tmdb.org/t/p/original/teCy1egGQa0y8ULJvlrDHQKnxBL.jpg",
        "release_date": "2022-02-25",
        "title": "Hotel Transylvania: Transformania",
        "video": false,
        "vote_average": 7.1,
        "vote_count": 1123
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/9hhRzLzP1enjENXiGJocAHyWFmS.jpg",
        "genre_ids": [
            27
        ],
        "original_language": "es",
        "original_title": "La pasajera",
        "synopsis": "Four people traveling in a van run over a lone woman while she is walking in the dark down a country road. After loading her into the vehicle to take her to the nearest hospital, they notice that she is behaving rather strangely. The occupants of the van soon realise that the time has come to fight for their lives, and together they agree on one very simple rule: \"do not sit next to her.\"",
        "popularity": 762.993,
        "poster_path": "https://image.tmdb.org/t/p/original/6bYCDIYqT3GpE6ICnMP6HvUlJMT.jpg",
        "release_date": "2022-06-03",
        "title": "The Passenger",
        "video": false,
        "vote_average": 6.7,
        "vote_count": 15
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/9IDJpHROaC0S1ZlIxrvzOcOX5yC.jpg",
        "genre_ids": [
            16,
            35,
            10751,
            80
        ],
        "original_language": "en",
        "original_title": "The Bad Guys",
        "synopsis": "When the infamous Bad Guys are finally caught after years of countless heists and being the world’s most-wanted villains, Mr. Wolf brokers a deal to save them all from prison.",
        "popularity": 688.797,
        "poster_path": "https://image.tmdb.org/t/p/original/7qop80YfuO0BwJa1uXk1DXUUEwv.jpg",
        "release_date": "2022-03-17",
        "title": "The Bad Guys",
        "video": false,
        "vote_average": 7.8,
        "vote_count": 888
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/dFCtmk760k1j6G0sSPrZMnMuNuL.jpg",
        "genre_ids": [
            27,
            53,
            28
        ],
        "original_language": "en",
        "original_title": "Shark Bait",
        "synopsis": "A group of friends enjoying a weekend steal a couple of jetskis racing them out to sea, ending up in a horrific head-on collision. They struggle to find a way home with a badly injured friend while from the waters below predators lurk.",
        "popularity": 740.117,
        "poster_path": "https://image.tmdb.org/t/p/original/mVVU9zC8snNHlcqYONY2HOsh9ob.jpg",
        "release_date": "2022-05-13",
        "title": "Shark Bait",
        "video": false,
        "vote_average": 6.4,
        "vote_count": 103
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/An1nKjXahrChfEbZ3MAE8fsiut1.jpg",
        "genre_ids": [
            27
        ],
        "original_language": "es",
        "original_title": "La abuela",
        "synopsis": "A Paris model must return to Madrid where her grandmother, who raised her, has had a stroke. But spending just a few days with this relative turns into an unexpected nightmare.",
        "popularity": 792.095,
        "poster_path": "https://image.tmdb.org/t/p/original/eIUixNvox4U4foL5Z9KbN9HXYSM.jpg",
        "release_date": "2022-01-28",
        "title": "The Grandmother",
        "video": false,
        "vote_average": 5.9,
        "vote_count": 233
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/7ef3yg5eCE6ZGKMsqUrfH8KdSMA.jpg",
        "genre_ids": [
            16,
            28,
            10751,
            878,
            35
        ],
        "original_language": "en",
        "original_title": "DC League of Super-Pets",
        "synopsis": "When Superman and the rest of the Justice League are kidnapped, Krypto the Super-Dog must convince a rag-tag shelter pack - Ace the hound, PB the potbellied pig, Merton the turtle and Chip the squirrel - to master their own newfound powers and help him rescue the superheroes.",
        "popularity": 673.64,
        "poster_path": "https://image.tmdb.org/t/p/original/r7XifzvtezNt31ypvsmb6Oqxw49.jpg",
        "release_date": "2022-07-27",
        "title": "DC League of Super-Pets",
        "video": false,
        "vote_average": 7.4,
        "vote_count": 60
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/xHRabofjmMGoIV3mb6xgy4nwOcS.jpg",
        "genre_ids": [
            27
        ],
        "original_language": "en",
        "original_title": "The Jack in the Box: Awakening",
        "synopsis": "When a vintage Jack-in-the-box is opened by a dying woman, she enters into a deal with the demon within that would see her illness cured in return for helping it claim six innocent victims.",
        "popularity": 781.181,
        "poster_path": "https://image.tmdb.org/t/p/original/3Ib8vlWTrAKRrTWUrTrZPOMW4jp.jpg",
        "release_date": "2022-02-24",
        "title": "The Jack in the Box: Awakening",
        "video": false,
        "vote_average": 5.7,
        "vote_count": 66
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/4EoQnShuyQl2YawXlQmQXn4CalG.jpg",
        "genre_ids": [
            35
        ],
        "original_language": "es",
        "original_title": "Si saben cómo me pongo ¿Pa' qué me invitan? 2",
        "synopsis": "The El Encanto resort once again hosts a retreat for four couples -- including a liar, a sex addict and a thief -- seeking to fix their relationships.",
        "popularity": 867.647,
        "poster_path": "https://image.tmdb.org/t/p/original/bFRxPAiyA7dhTLrEcitAjLL02BJ.jpg",
        "release_date": "2022-07-13",
        "title": "Si saben cómo me pongo ¿Pa' qué me invitan? 2",
        "video": false,
        "vote_average": 2,
        "vote_count": 1
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/qp8qKiP7Q7zK4z3LItwWMHfV9kJ.jpg",
        "genre_ids": [
            53
        ],
        "original_language": "en",
        "original_title": "The Desperate Hour",
        "synopsis": "A woman desperately races to save her child after police place her hometown on lockdown due to an active shooter incident.",
        "popularity": 763.86,
        "poster_path": "https://image.tmdb.org/t/p/original/u6Pg9eTklhg6Aa7kXaxrfdE1Chi.jpg",
        "release_date": "2021-09-12",
        "title": "The Desperate Hour",
        "video": false,
        "vote_average": 6.2,
        "vote_count": 204
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/cugmVwK0N4aAcLibelKN5jWDXSx.jpg",
        "genre_ids": [
            16,
            28,
            12,
            878
        ],
        "original_language": "ja",
        "original_title": "僕のヒーローアカデミア THE MOVIE ワールド ヒーローズ ミッション",
        "synopsis": "A mysterious group called Humarize strongly believes in the Quirk Singularity Doomsday theory which states that when quirks get mixed further in with future generations, that power will bring forth the end of humanity. In order to save everyone, the Pro-Heroes around the world ask UA Academy heroes-in-training to assist them and form a world-classic selected hero team. It is up to the heroes to save the world and the future of heroes in what is the most dangerous crisis to take place yet in My Hero Academia.",
        "popularity": 679.208,
        "poster_path": "https://image.tmdb.org/t/p/original/AsTlA7dj2ySGY1pzGSD0MoHFhEF.jpg",
        "release_date": "2021-08-06",
        "title": "My Hero Academia: World Heroes' Mission",
        "video": false,
        "vote_average": 7.6,
        "vote_count": 243
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/tzNx4y7kYf1Xw3F3T6QxrE7PPwb.jpg",
        "genre_ids": [
            53,
            18,
            80,
            9648,
            27
        ],
        "original_language": "en",
        "original_title": "See for Me",
        "synopsis": "When blind former skier Sophie cat-sits in a secluded mansion, three thieves invade for the hidden safe. Sophie's only defense is army veteran Kelly, who she meets on the See For Me app. Kelly helps Sophie defend herself against the invaders and survive.",
        "popularity": 749.22,
        "poster_path": "https://image.tmdb.org/t/p/original/qk1ZERG6yhwAJqTobmDgw8jRL2C.jpg",
        "release_date": "2022-01-07",
        "title": "See for Me",
        "video": false,
        "vote_average": 6.1,
        "vote_count": 91
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/6mJrgL7Mi13XjJeGYJFlD6UEVQw.jpg",
        "genre_ids": [
            16,
            35,
            10751,
            10402
        ],
        "original_language": "en",
        "original_title": "Sing 2",
        "synopsis": "Buster and his new cast now have their sights set on debuting a new show at the Crystal Tower Theater in glamorous Redshore City. But with no connections, he and his singers must sneak into the Crystal Entertainment offices, run by the ruthless wolf mogul Jimmy Crystal, where the gang pitches the ridiculous idea of casting the lion rock legend Clay Calloway in their show. Buster must embark on a quest to find the now-isolated Clay and persuade him to return to the stage.",
        "popularity": 673.308,
        "poster_path": "https://image.tmdb.org/t/p/original/aWeKITRFbbwY8txG5uCj4rMCfSP.jpg",
        "release_date": "2021-12-01",
        "title": "Sing 2",
        "video": false,
        "vote_average": 8,
        "vote_count": 3025
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/2kvl6lcgoyAaf8cSRkzxE611u6T.jpg",
        "genre_ids": [
            16,
            28,
            14,
            878
        ],
        "original_language": "ja",
        "original_title": "劇場版 ソードアート・オンライン-プログレッシブ- 星なき夜のアリア",
        "synopsis": "One month after Kayaba Akihiko's game of death began, the death toll continues to rise, two thousand players having already lost their lives to the ultra-difficult VRMMO world of Sword Art Online. On the day of the strategy meeting to plan out the first-floor boss battle, Kirito, a solo player who vows to fight alone to get stronger, runs into a rare, high-level female player. She gracefully dispatches powerful monsters with a single rapier that flashes like a shooting star in the night...",
        "popularity": 602.712,
        "poster_path": "https://image.tmdb.org/t/p/original/yD9RhgIVydQNBK7OLEbCWYcWMUd.jpg",
        "release_date": "2021-10-30",
        "title": "Sword Art Online the Movie -Progressive- Aria of a Starless Night",
        "video": false,
        "vote_average": 8.3,
        "vote_count": 82
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/8QpzqK3nPGxpqpKqhe6QasTGBWQ.jpg",
        "genre_ids": [
            878,
            12,
            28
        ],
        "original_language": "en",
        "original_title": "Moonfall",
        "synopsis": "A mysterious force knocks the moon from its orbit around Earth and sends it hurtling on a collision course with life as we know it.",
        "popularity": 722.723,
        "poster_path": "https://image.tmdb.org/t/p/original/odVv1sqVs0KxBXiA8bhIBlPgalx.jpg",
        "release_date": "2022-02-03",
        "title": "Moonfall",
        "video": false,
        "vote_average": 6.5,
        "vote_count": 1639
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/e42d0nmC4GZjXjHyPvCeNiXZhW4.jpg",
        "genre_ids": [
            18,
            35
        ],
        "original_language": "en",
        "original_title": "Hustle",
        "synopsis": "After discovering a once-in-a-lifetime player with a rocky past abroad, a down on his luck basketball scout takes it upon himself to bring the phenom to the States without his team's approval. Against the odds, they have one final shot to prove they have what it takes to make it in the NBA.",
        "popularity": 705.589,
        "poster_path": "https://image.tmdb.org/t/p/original/xWic7kPq13oRxYjbGLApXCnc7pz.jpg",
        "release_date": "2022-06-03",
        "title": "Hustle",
        "video": false,
        "vote_average": 7.9,
        "vote_count": 1328
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/lNyLSOKMMeUPr1RsL4KcRuIXwHt.jpg",
        "genre_ids": [
            878,
            28,
            12
        ],
        "original_language": "en",
        "original_title": "Venom: Let There Be Carnage",
        "synopsis": "After finding a host body in investigative reporter Eddie Brock, the alien symbiote must face a new enemy, Carnage, the alter ego of serial killer Cletus Kasady.",
        "popularity": 645.875,
        "poster_path": "https://image.tmdb.org/t/p/original/rjkmN1dniUHVYAtwuV3Tji7FsDO.jpg",
        "release_date": "2021-09-30",
        "title": "Venom: Let There Be Carnage",
        "video": false,
        "vote_average": 7,
        "vote_count": 7770
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/rLo9T9jEg67UZPq3midjLnTUYYi.jpg",
        "genre_ids": [
            10402,
            18,
            36
        ],
        "original_language": "en",
        "original_title": "Elvis",
        "synopsis": "The life story of Elvis Presley as seen through the complicated relationship with his enigmatic manager, Colonel Tom Parker.",
        "popularity": 528.262,
        "poster_path": "https://image.tmdb.org/t/p/original/4CYhJ9WNHIc1WRrQ5kYwBtmMvNB.jpg",
        "release_date": "2022-06-22",
        "title": "Elvis",
        "video": false,
        "vote_average": 7.8,
        "vote_count": 670
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/1uhf2qYd7wBcOsTJ7Li1FcH672D.jpg",
        "genre_ids": [
            53,
            18
        ],
        "original_language": "es",
        "original_title": "La ira de Dios",
        "synopsis": "Convinced the tragic deaths of her loved ones were orchestrated by a famous novelist she worked for, Luciana turns to a journalist to expose her truth.",
        "popularity": 621.569,
        "poster_path": "https://image.tmdb.org/t/p/original/lFhxNXEK0UpXXqSbhba83Zhl2uk.jpg",
        "release_date": "2022-06-15",
        "title": "The Wrath of God",
        "video": false,
        "vote_average": 6.4,
        "vote_count": 113
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/lmZFxXgJE3vgrciwuDib0N8CfQo.jpg",
        "genre_ids": [
            12,
            28,
            878
        ],
        "original_language": "en",
        "original_title": "Avengers: Infinity War",
        "synopsis": "As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain.",
        "popularity": 575.24,
        "poster_path": "https://image.tmdb.org/t/p/original/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg",
        "release_date": "2018-04-25",
        "title": "Avengers: Infinity War",
        "video": false,
        "vote_average": 8.3,
        "vote_count": 25120
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/egS5SHI4Ppwmb65lUjqsy79ASnN.jpg",
        "genre_ids": [
            27
        ],
        "original_language": "es",
        "original_title": "Veneciafrenia",
        "synopsis": "A group of spanish tourists in Venice finds themselves fighting for their lives against locals that are not too keen on foreigners.",
        "popularity": 638.734,
        "poster_path": "https://image.tmdb.org/t/p/original/luMC56bwZqaECYRz6X7sXjqN6nd.jpg",
        "release_date": "2022-04-22",
        "title": "Veneciafrenia",
        "video": false,
        "vote_average": 6,
        "vote_count": 103
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/figlwUsXXFehX3IebdjqNLV6vWk.jpg",
        "genre_ids": [
            28,
            53
        ],
        "original_language": "en",
        "original_title": "The Contractor",
        "synopsis": "After being involuntarily discharged from the U.S. Special Forces, James Harper decides to support his family by joining a private contracting organization alongside his best friend and under the command of a fellow veteran. Overseas on a covert mission, Harper must evade those trying to kill him while making his way back home.",
        "popularity": 618.44,
        "poster_path": "https://image.tmdb.org/t/p/original/rJPGPZ5soaG27MK90oKpioSiJE2.jpg",
        "release_date": "2022-03-10",
        "title": "The Contractor",
        "video": false,
        "vote_average": 6.5,
        "vote_count": 442
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/5vVA0vUVMfCzIl4woB32f2qklog.jpg",
        "genre_ids": [
            28,
            53
        ],
        "original_language": "en",
        "original_title": "Panama",
        "synopsis": "An ex-marine is hired by a defense contractor to travel to Panama to complete an arms deal. In the process he becomes involved with the U.S. invasion of Panama, and learns an important lesson about the true nature of political power.",
        "popularity": 570.595,
        "poster_path": "https://image.tmdb.org/t/p/original/u9DzgsmssidygWuORgYzhi317vj.jpg",
        "release_date": "2022-03-17",
        "title": "Panama",
        "video": false,
        "vote_average": 5.9,
        "vote_count": 68
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/yBov7O4eXDcBLDpZrOHZzFr8rIl.jpg",
        "genre_ids": [
            16,
            35,
            12,
            10751
        ],
        "original_language": "en",
        "original_title": "The Boss Baby: Family Business",
        "synopsis": "The Templeton brothers — Tim and his Boss Baby little bro Ted — have become adults and drifted away from each other. But a new boss baby with a cutting-edge approach and a can-do attitude is about to bring them together again … and inspire a new family business.",
        "popularity": 554.468,
        "poster_path": "https://image.tmdb.org/t/p/original/kv2Qk9MKFFQo4WQPaYta599HkJP.jpg",
        "release_date": "2021-07-01",
        "title": "The Boss Baby: Family Business",
        "video": false,
        "vote_average": 7.5,
        "vote_count": 2013
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/a8Q2g0g7XzAF6gcB8qgn37ccb9Y.jpg",
        "genre_ids": [
            16,
            12,
            878
        ],
        "original_language": "ja",
        "original_title": "バブル",
        "synopsis": "In an abandoned Tokyo overrun by bubbles and gravitational abnormalities, one gifted young man has a fateful meeting with a mysterious girl.",
        "popularity": 535.022,
        "poster_path": "https://image.tmdb.org/t/p/original/kk28Lk8oQBGjoHRGUCN2vxKb4O2.jpg",
        "release_date": "2022-02-14",
        "title": "Bubble",
        "video": false,
        "vote_average": 7.5,
        "vote_count": 208
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/l83VzRBverTuAFyh9N9dMYsPr4m.jpg",
        "genre_ids": [
            80,
            28
        ],
        "original_language": "en",
        "original_title": "American Sicario",
        "synopsis": "The story of the rise and fall of the first American-born drug lord in Mexico, this tale of power, money, greed and betrayal amongst rival members of the drug cartels finds American gangster Erik Vasquez scheming to become the top dog in the Mexican underworld, only to find himself making enemies out of both the powerful cartels and his own allies.",
        "popularity": 597.116,
        "poster_path": "https://image.tmdb.org/t/p/original/nQRPSUmHGLrFRPK6v3BI1frAM1O.jpg",
        "release_date": "2021-12-10",
        "title": "American Sicario",
        "video": false,
        "vote_average": 5.9,
        "vote_count": 71
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/zxWAv1A34kdYslBi4ekMDtgIGUt.jpg",
        "genre_ids": [
            28,
            12,
            14
        ],
        "original_language": "en",
        "original_title": "Shang-Chi and the Legend of the Ten Rings",
        "synopsis": "Shang-Chi must confront the past he thought he left behind when he is drawn into the web of the mysterious Ten Rings organization.",
        "popularity": 578.852,
        "poster_path": "https://image.tmdb.org/t/p/original/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg",
        "release_date": "2021-09-01",
        "title": "Shang-Chi and the Legend of the Ten Rings",
        "video": false,
        "vote_average": 7.7,
        "vote_count": 6954
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/eG0oOQVsniPAuecPzDD1B1gnYWy.jpg",
        "genre_ids": [
            16,
            35,
            12,
            10751
        ],
        "original_language": "en",
        "original_title": "The Ice Age Adventures of Buck Wild",
        "synopsis": "The fearless one-eyed weasel Buck teams up with mischievous possum brothers Crash & Eddie as they head off on a new adventure into Buck's home: The Dinosaur World.",
        "popularity": 517.069,
        "poster_path": "https://image.tmdb.org/t/p/original/zzXFM4FKDG7l1ufrAkwQYv2xvnh.jpg",
        "release_date": "2022-01-28",
        "title": "The Ice Age Adventures of Buck Wild",
        "video": false,
        "vote_average": 6.8,
        "vote_count": 1311
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/eHRtXoPDAUUX7LWXvQfFAK2nFkG.jpg",
        "genre_ids": [
            27
        ],
        "original_language": "es",
        "original_title": "El último zombi",
        "synopsis": "",
        "popularity": 559.61,
        "poster_path": "https://image.tmdb.org/t/p/original/rSxEMxgLnC1KZAYH6pEksPsLyzR.jpg",
        "release_date": "2021-12-02",
        "title": "The Last Zombie",
        "video": false,
        "vote_average": 5.7,
        "vote_count": 3
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/rmhMB6KBxdSYatfiFoas60uF6Fc.jpg",
        "genre_ids": [
            18
        ],
        "original_language": "en",
        "original_title": "Father Stu",
        "synopsis": "The true-life story of boxer-turned-priest. When an injury ends his amateur boxing career, Stuart Long moves to Los Angeles to find money and fame. While scraping by as a supermarket clerk, he meets Carmen, a Sunday school teacher who seems immune to his bad-boy charm. Determined to win her over, the longtime agnostic starts going to church to impress her. However, a motorcycle accident leaves him wondering if he can use his second chance to help others, leading to the surprising realization that he's meant to be a Catholic priest.",
        "popularity": 554.789,
        "poster_path": "https://image.tmdb.org/t/p/original/pLAeWgqXbTeJ2gQtNvRmdIncYsk.jpg",
        "release_date": "2022-04-13",
        "title": "Father Stu",
        "video": false,
        "vote_average": 7.7,
        "vote_count": 233
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/5DCIRgOrCTayoCGggVn1kyqs1Vh.jpg",
        "genre_ids": [
            53,
            27
        ],
        "original_language": "en",
        "original_title": "Titanic 666",
        "synopsis": "After a mammoth cruise ship sails over the site of the Titanic’s disaster, dark and deadly events start to occur on board. As the ship’s captain investigates the tragic occurrences, it becomes clear that the passengers and crew from the original Titanic have returned.",
        "popularity": 569.465,
        "poster_path": "https://image.tmdb.org/t/p/original/EX0ITg5YqDgFHjujpTNhEPaJSL.jpg",
        "release_date": "2022-04-15",
        "title": "Titanic 666",
        "video": false,
        "vote_average": 5.6,
        "vote_count": 49
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/wgdWNBqPIAH29ZsL3I0AVx7XRed.jpg",
        "genre_ids": [
            28,
            9648,
            53
        ],
        "original_language": "ko",
        "original_title": "마녀 2",
        "synopsis": "A girl wakes up in a huge secret laboratory, then accidentally meets another girl who is trying to protect her house from a gang. The mystery girl overthrows the gang with her unexpected powers, and laboratory staff set out to find her.",
        "popularity": 655.567,
        "poster_path": "https://image.tmdb.org/t/p/original/9YTuscJXmr9Iua62amCgGSU8PDW.jpg",
        "release_date": "2022-06-15",
        "title": "The Witch: Part 2. The Other One",
        "video": false,
        "vote_average": 7.7,
        "vote_count": 37
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/qNRkfXBdAuXk9Qs3BEDIfmbAK9w.jpg",
        "genre_ids": [
            28
        ],
        "original_language": "en",
        "original_title": "Fortress: Sniper's Eye",
        "synopsis": "Weeks after the deadly assault on Fortress Camp, Robert makes a daring rescue to save Sasha, the widow of his old nemesis Balzary. But back in the camp's command bunker, it appears Sasha may have devious plans of her own. As a new attack breaks out, Robert is confronted with a familiar face he thought he'd never see again…",
        "popularity": 456.26,
        "poster_path": "https://image.tmdb.org/t/p/original/61J34xHVVdQHbJ4MSCWQo4e727v.jpg",
        "release_date": "2022-04-29",
        "title": "Fortress: Sniper's Eye",
        "video": false,
        "vote_average": 5.9,
        "vote_count": 97
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/vkjsoMF86dJIv6Sgtd4CcuR8kzh.jpg",
        "genre_ids": [
            16,
            14
        ],
        "original_language": "ja",
        "original_title": "劇場版 七つの大罪 光に呪われし者たち",
        "synopsis": "With the help of the \"Dragon Sin of Wrath\" Meliodas and the worst rebels in history, the Seven Deadly Sins, the \"Holy War\", in which four races, including Humans, Goddesses, Fairies and Giants fought against the Demons, is finally over. At the cost of the \"Lion Sin of Pride\" Escanor's life, the Demon King was defeated and the world regained peace. After that, each of the Sins take their own path.",
        "popularity": 500.759,
        "poster_path": "https://image.tmdb.org/t/p/original/k0ThmZQl5nHe4JefC2bXjqtgYp0.jpg",
        "release_date": "2021-07-02",
        "title": "The Seven Deadly Sins: Cursed by Light",
        "video": false,
        "vote_average": 7.9,
        "vote_count": 370
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/sKvQUSyqsFq8e1ts6oo3Xp3dPH2.jpg",
        "genre_ids": [
            16,
            12,
            35,
            14
        ],
        "original_language": "en",
        "original_title": "Luck",
        "synopsis": "Suddenly finding herself in the never-before-seen Land of Luck, the unluckiest person in the world must unite with the magical creatures there to turn her luck around.",
        "popularity": 447.381,
        "poster_path": "https://image.tmdb.org/t/p/original/1HOYvwGFioUFL58UVvDRG6beEDm.jpg",
        "release_date": "2022-08-05",
        "title": "Luck",
        "video": false,
        "vote_average": 8.3,
        "vote_count": 145
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/oasoFPah6e5kKHXEWOUVVgDoIva.jpg",
        "genre_ids": [
            10749,
            18
        ],
        "original_language": "en",
        "original_title": "365 Days: This Day",
        "synopsis": "Laura and Massimo are back and hotter than ever. But the reunited couple's new beginning is complicated by Massimo’s family ties and a mysterious man who enters Laura’s life to win her heart and trust, at any cost.",
        "popularity": 482.127,
        "poster_path": "https://image.tmdb.org/t/p/original/7qU0SOVcQ8BTJLodcAlulUAG16C.jpg",
        "release_date": "2022-04-27",
        "title": "365 Days: This Day",
        "video": false,
        "vote_average": 5.8,
        "vote_count": 682
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/c6H7Z4u73ir3cIoCteuhJh7UCAR.jpg",
        "genre_ids": [
            878,
            28,
            12
        ],
        "original_language": "en",
        "original_title": "Eternals",
        "synopsis": "The Eternals are a team of ancient aliens who have been living on Earth in secret for thousands of years. When an unexpected tragedy forces them out of the shadows, they are forced to reunite against mankind’s most ancient enemy, the Deviants.",
        "popularity": 546.995,
        "poster_path": "https://image.tmdb.org/t/p/original/lFByFSLV5WDJEv3KabbdAF959F2.jpg",
        "release_date": "2021-11-03",
        "title": "Eternals",
        "video": false,
        "vote_average": 7.1,
        "vote_count": 6038
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/sahdgvn0Brw6AgdwyLHgdCAynWG.jpg",
        "genre_ids": [
            12,
            16,
            35,
            10751,
            14
        ],
        "original_language": "en",
        "original_title": "Chickenhare and the Hamster of Darkness",
        "synopsis": "Young Chickenhare is the adopted son of King Peter, a famous adventurer. Part chicken and part hare, he has a really tough time growing up and disguises himself as a hare to avoid the mockeries of his peers. When the day of the Royal Adventurer Society trials comes, Chickenhare, hampered by his disguise, fails miserably. But he is determined to grab a second chance and find the Scepter of the Hamster of Darkness, before his evil Uncle Lapin. The Scepter will give immense power to its holder. If Lapin gets hold of it, he will be unstoppable. Accompanied by his faithful servant Abe, a sarcastic turtle, and Meg, a martial arts expert skunk, he sets of on an epic and initiatory quest.",
        "popularity": 488.21,
        "poster_path": "https://image.tmdb.org/t/p/original/2v6f1EqTo4FUxVT9MDXpF6158AX.jpg",
        "release_date": "2022-02-16",
        "title": "Chickenhare and the Hamster of Darkness",
        "video": false,
        "vote_average": 7.5,
        "vote_count": 158
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/jq1OvQj3El8BxhUxKmfmJaL8CzA.jpg",
        "genre_ids": [
            10751,
            35
        ],
        "original_language": "pl",
        "original_title": "Za duży na bajki",
        "synopsis": "In Waldek's life, filled mainly with computer games, there is a real earthquake. During her absence, mum stays under the care of a crazy and unpredictable aunt, who introduces discipline that has been alien to him so far and imposes new duties. But although an extraordinary relative gives Waldek a real survival camp, the boy also receives the most valuable life lesson from her.",
        "popularity": 509.962,
        "poster_path": "https://image.tmdb.org/t/p/original/mwT58VqFZyAeQbscfynxtroqaft.jpg",
        "release_date": "2022-03-18",
        "title": "Too Old for Fairy Tales",
        "video": false,
        "vote_average": 6.5,
        "vote_count": 20
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/w5vOnKTc0aVWdpH8joHHEJVmxpM.jpg",
        "genre_ids": [
            80,
            18,
            53
        ],
        "original_language": "en",
        "original_title": "The Outfit",
        "synopsis": "Leonard is an English tailor who used to craft suits on London’s world-famous Savile Row. After a personal tragedy, he’s ended up in Chicago, operating a small tailor shop in a rough part of town where he makes beautiful clothes for the only people around who can afford them: a family of vicious gangsters.",
        "popularity": 575.072,
        "poster_path": "https://image.tmdb.org/t/p/original/lZa5EB6PVJBT5mxhgZS5ftqdAm6.jpg",
        "release_date": "2022-03-03",
        "title": "The Outfit",
        "video": false,
        "vote_average": 7.1,
        "vote_count": 344
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/m0YjB4VfghKey8Ppsmz8qCd0v1m.jpg",
        "genre_ids": [
            28,
            35,
            80
        ],
        "original_language": "en",
        "original_title": "The Unbearable Weight of Massive Talent",
        "synopsis": "Creatively unfulfilled and facing financial ruin, Nick Cage must accept a $1 million offer to attend the birthday of a dangerous superfan. Things take a wildly unexpected turn when Cage is recruited by a CIA operative and forced to live up to his own legend, channeling his most iconic and beloved on-screen characters in order to save himself and his loved ones.",
        "popularity": 511.241,
        "poster_path": "https://image.tmdb.org/t/p/original/aqhLeieyTpTUKPOfZ3jzo2La0Mq.jpg",
        "release_date": "2022-04-20",
        "title": "The Unbearable Weight of Massive Talent",
        "video": false,
        "vote_average": 7,
        "vote_count": 549
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/o76ZDm8PS9791XiuieNB93UZcRV.jpg",
        "genre_ids": [
            27,
            28,
            878
        ],
        "original_language": "en",
        "original_title": "Resident Evil: Welcome to Raccoon City",
        "synopsis": "Once the booming home of pharmaceutical giant Umbrella Corporation, Raccoon City is now a dying Midwestern town. The company’s exodus left the city a wasteland…with great evil brewing below the surface. When that evil is unleashed, the townspeople are forever…changed…and a small group of survivors must work together to uncover the truth behind Umbrella and make it through the night.",
        "popularity": 494.65,
        "poster_path": "https://image.tmdb.org/t/p/original/7uRbWOXxpWDMtnsd2PF3clu65jc.jpg",
        "release_date": "2021-11-24",
        "title": "Resident Evil: Welcome to Raccoon City",
        "video": false,
        "vote_average": 6.1,
        "vote_count": 1753
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/wdcSkdKRwiABA5SdNth1uAnErzw.jpg",
        "genre_ids": [
            53
        ],
        "original_language": "en",
        "original_title": "Heatwave",
        "synopsis": "A woman's life takes an unexpected turn when she falls for her boss's wife. She must soon defend herself as she becomes entangled in a web of malice.",
        "popularity": 487.129,
        "poster_path": "https://image.tmdb.org/t/p/original/AeeXeyiiPOyybnjSnJoSTixOZQq.jpg",
        "release_date": "2022-01-17",
        "title": "Heatwave",
        "video": false,
        "vote_average": 7.2,
        "vote_count": 48
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/ubty43lOcYeeWMnWxszdNsrzf1z.jpg",
        "genre_ids": [
            16,
            12,
            10751,
            14
        ],
        "original_language": "de",
        "original_title": "Peterchens Mondfahrt",
        "synopsis": "When Peter sets out on a magical journey to rescue his little sister Anne, he needs to travel to mysterious territory: the Moon! Anne was kidnapped by the evil Moon Man when she tried to help the beetle Mr. Zoomzeman in search for his wife. On his fantastic adventure, Peter lands on the Star Meadow where he meets the sleepy Mr. Sandman. He knows, only at the Night Fairy’s dinner in the castle in the clouds, they can find out where Anne is – but there aren’t enough seats for everyone. So they join the wild race along the Milky Way against the five Spirits of Nature: Storm Giant, Lightning Witch, Henry Hail, Rainy Robin and Mother Frost…",
        "popularity": 429.427,
        "poster_path": "https://image.tmdb.org/t/p/original/bkp1oHMvDwDTlbRhCcqAK0A7JNd.jpg",
        "release_date": "2021-06-24",
        "title": "Moonbound",
        "video": false,
        "vote_average": 6.2,
        "vote_count": 54
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/pFwvHAFyPEqtvJEoutPuobLwrNj.jpg",
        "genre_ids": [
            16,
            35,
            10751
        ],
        "original_language": "en",
        "original_title": "Fireheart",
        "synopsis": "The film explores the world of firefighters in 1920s New York City and tells the story of a 16-year-old girl who will have to become a hero in order to save her city.",
        "popularity": 415.474,
        "poster_path": "https://image.tmdb.org/t/p/original/hepwOZWJNUmLzB68gKYEdEJAaD3.jpg",
        "release_date": "2022-01-16",
        "title": "Fireheart",
        "video": false,
        "vote_average": 7.6,
        "vote_count": 145
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/4bEL2GEAe5QLzGNT109hLMBgIrM.jpg",
        "genre_ids": [
            35,
            10751,
            16
        ],
        "original_language": "ko",
        "original_title": "Larva Pendant",
        "synopsis": "This silly short-film sequel to \"Larva Island\" and \"The Larva Island Movie\" follows farting friends Red and Yellow's bumbling misadventures in the city.",
        "popularity": 438.882,
        "poster_path": "https://image.tmdb.org/t/p/original/nPW5AkzoQSO8dWhE8WZMFvC41iW.jpg",
        "release_date": "2022-05-25",
        "title": "Larva Pendant",
        "video": false,
        "vote_average": 6.9,
        "vote_count": 59
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/ksqpPKaSlugrRMrDxfvjvrrtF8T.jpg",
        "genre_ids": [
            53,
            80,
            18
        ],
        "original_language": "es",
        "original_title": "Pipa",
        "synopsis": "Years after moving to a remote town, ex-cop Pipa is pulled back into the dark world she thought she'd left behind when a corpse appears on her property.",
        "popularity": 432.173,
        "poster_path": "https://image.tmdb.org/t/p/original/1Rgp0TpqtdJf3DoVJWeGiESSTH5.jpg",
        "release_date": "2022-07-27",
        "title": "Recurrence",
        "video": false,
        "vote_average": 5.8,
        "vote_count": 45
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/i9BtOklh2txI78wNSTNjoAZ6Fvj.jpg",
        "genre_ids": [
            35,
            10751
        ],
        "original_language": "es",
        "original_title": "Padre no hay mas que Uno 3",
        "synopsis": "Christmas is coming. The children accidentally break a Nativity scene figurine from their father's collection and must by all means get an equal one, the problem is that it is a unique antique piece. Sara, the eldest daughter breaks up with her boyfriend, Ocho, who will try to recover her favors with the help of her father-in-law, Javier. Precisely Javier's father-in-law, Marisa's father, will be welcomed into the family home to spend the holidays after her recent separation, which will not leave Javier's mother, Milagros, indifferent. Rocío, the folklore of the family, who has been playing the Virgin for several Christmases, is relegated this year to playing the shepherdess, something that her father, Javier, is not willing to assume.",
        "popularity": 444.354,
        "poster_path": "https://image.tmdb.org/t/p/original/bb7mPVCKVPGFM0NTqd5JmqqI4gu.jpg",
        "release_date": "2022-07-15",
        "title": "Father There Is Only One 3",
        "video": false,
        "vote_average": 6,
        "vote_count": 13
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/kIgfFzjjBNgx6Tr2LCw8Zkq921s.jpg",
        "genre_ids": [
            28,
            16,
            878
        ],
        "original_language": "ja",
        "original_title": "ドラゴンボールZ 復活の「F」",
        "synopsis": "One peaceful day on Earth, two remnants of Frieza's army named Sorbet and Tagoma arrive searching for the Dragon Balls with the aim of reviving Frieza. They succeed, and Frieza subsequently seeks revenge on the Saiyans.",
        "popularity": 441.808,
        "poster_path": "https://image.tmdb.org/t/p/original/soq3AxjALdBfdPAm8H7yuMmNL5Y.jpg",
        "release_date": "2015-04-18",
        "title": "Dragon Ball Z: Resurrection 'F'",
        "video": false,
        "vote_average": 6.8,
        "vote_count": 1430
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/1ILgy7Qw3aDDIIU1u3bauMimhSS.jpg",
        "genre_ids": [
            35
        ],
        "original_language": "es",
        "original_title": "Padre no hay más que uno",
        "synopsis": "Javier is what we have dubbed as a \"husband-in-law.\" That is that without taking care of the care of the house and children at all, he knows exactly what needs to be done, and that he continuously collects a sum of sentences from the type: \"It is that you do not organize\", or \"do not get nervous\", you already consider that overflowing woman drowns in a glass of water. Javier will have to face the reality of dealing with five children (between four and twelve years old) when his wife decides to go on a trip and leave him alone with them. The chaotic situation that takes place at home will progressively evolve ecologically to the most absolute disaster, but at the same time it will give parents and children the opportunity to meet and enjoy themselves for the first time.",
        "popularity": 409.931,
        "poster_path": "https://image.tmdb.org/t/p/original/tW6V8C81lzYuRy8yFe1dvvGhL4j.jpg",
        "release_date": "2019-08-02",
        "title": "Father There Is Only One",
        "video": false,
        "vote_average": 7.6,
        "vote_count": 513
    },
    {
        "adult": false,
        "backdrop_path": "https://image.tmdb.org/t/p/original/i2tcQ9nDJpdJELPA82eCd7Irasd.jpg",
        "genre_ids": [
            28,
            53,
            12
        ],
        "original_language": "en",
        "original_title": "Interceptor",
        "synopsis": "A U.S. Army Captain uses her years of tactical training to save humanity from sixteen nuclear missiles launched at the U.S. as a violent attack threatens her remote missile interceptor station.",
        "popularity": 482.757,
        "poster_path": "https://image.tmdb.org/t/p/original/cpWUtkcgRKeauhTyVMjYHxAutp4.jpg",
        "release_date": "2022-05-26",
        "title": "Interceptor",
        "video": false,
        "vote_average": 6.2,
        "vote_count": 458
    }
]

# ! CREATING MOVIES
p "Creating movies"
movies.each do |movie|
  Movie.create(movie)
end
p "Finished creating movies"

# ! ---------------------------------------------------


# ! CREATING WATCHLISTS USER 1
p "Creating Watchlist 'horror' for user 1"
Watchlist.create(user_id: 1, name: "Horror")

p "Creating Watchlist 'action' for user 1"
Watchlist.create(user_id: 1, name: "Action")

# ! CREATING ENTRIES FOR THE WATCHLISTS
p "Creating 4 entries for the watchlist 'Horror' (1) (User1)"
WatchlistMovie.create(watchlist_id: 1, movie_id: 1)
WatchlistMovie.create(watchlist_id: 1, movie_id: 5)
WatchlistMovie.create(watchlist_id: 1, movie_id: 10)
WatchlistMovie.create(watchlist_id: 1, movie_id: 20)

p "Creating 4 entries for the watchlist 'Action' (2) (User1)"
WatchlistMovie.create(watchlist_id: 2, movie_id: 6)
WatchlistMovie.create(watchlist_id: 2, movie_id: 11)
WatchlistMovie.create(watchlist_id: 2, movie_id: 21)
WatchlistMovie.create(watchlist_id: 2, movie_id: 45)

# ! ---------------------------------------------------

# ! CREATING WATCHLISTS USER 2
p "Creating Watchlist 'horror' for user 1"
Watchlist.create(user_id: 2, name: "Romance")

p "Creating Watchlist 'action' for user 1"
Watchlist.create(user_id: 2, name: "Fantastic")

# ! CREATING ENTRIES FOR THE WATCHLISTS
p "Creating 4 entries for the watchlist 'Romance' (1) (User2)"
WatchlistMovie.create(watchlist_id: 3, movie_id: 11)
WatchlistMovie.create(watchlist_id: 3, movie_id: 22)
WatchlistMovie.create(watchlist_id: 3, movie_id: 33)
WatchlistMovie.create(watchlist_id: 3, movie_id: 44)

p "Creating 4 entries for the watchlist 'Fantastic' (2) (User2)"
WatchlistMovie.create(watchlist_id: 4, movie_id: 55)
WatchlistMovie.create(watchlist_id: 4, movie_id: 66)
WatchlistMovie.create(watchlist_id: 4, movie_id: 77)
WatchlistMovie.create(watchlist_id: 4, movie_id: 88)

# ! ---------------------------------------------------

# ! CREATING REVIEWS FOR USER 1

Review.create(user_id: 1, username: User.first.username, watchlist_id: 3, comment: "This watchlist looks shitty as fuck ...", )
Review.create(user_id: 1, username: User.first.username, watchlist_id: 4, comment: "This is Amazing ! Love it !", )

# ! CREATING REVIEWS FOR USER 2

Review.create(user_id: 2, username: User.second.username, watchlist_id: 1, comment: "Will definitly shit my pant watching those...", )
Review.create(user_id: 2, username: User.second.username, watchlist_id: 2, comment: "Obviously will be boring af...", )

# const MOVIES_LIST = [
#   { id: 1, title: "Thor: Love and Thunder", synopsis: "Thor enlists the help of Valkyrie, Korg and ex-girlfriend Jane Foster to fight Gorr the God Butcher, who intends to make the gods extinct.", img_url: "https://m.media-amazon.com/images/M/MV5BYmMxZWRiMTgtZjM0Ny00NDQxLWIxYWQtZDdlNDNkOTEzYTdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg", trailer_url: "https://imdb-video.media-imdb.com/vi1613808153/1434659607842-pgv4ql-1656941657492.mp4?Expires=1659101898&Signature=FcQu0v3H26gLEPedswQcuvNpfdoXvWLAODrmY~sPVrD9WlNLdwnd12ZH7a-768qZq-fHgG6a5VDtNLvOXCb27nyZ~7XjkwvCvo9qJjNmPEUL-nf9ifAQDIrTsSxKDzeSBZB~iDvT1AHW7oafBSoXwOOI3C9CL4VM6AjM4J1Z7on2fgxQ-xvXqwWEqbtzq2j~egmNNjFu8XEc0k~c~ycA4uvgNhubwUgxP6CQ3uy3hhgh5OTfCFWovJMcvivCJTeIhd~pJM702Zb8e9x1CIyJWp6uM2e0qoHTidssnV33CgiEMY4opgHTLAdrdREl4i102DHrLmbyV070E11GUFK6vA__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA" },
#   { id: 2, title: "The Gray Man", synopsis: "When the CIA's most skilled operative-whose true identity is known to none-accidentally uncovers dark agency secrets, a psychopathic former colleague puts a bounty on his head, setting off a global manhunt by international assassins.", img_url: "https://m.media-amazon.com/images/M/MV5BOWY4MmFiY2QtMzE1YS00NTg1LWIwOTQtYTI4ZGUzNWIxNTVmXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UX1000_.jpg", trailer_url: "https://imdb-video.media-imdb.com/vi941736473/1434659607842-pgv4ql-1657910195912.mp4?Expires=1659092769&Signature=DUz00QQcQWj4OHvxAxXBc75lnMV6X5dsbdiuOLod-VHW0RqAVi~AyDGaf4xoJDfQIU3yCSHYsMGc~xdzGXP9-gSdHiVMTeKfKJca0vr0uozqDBFad7tBz9lxo4rPegOpydpuAr-8fb-qsZ5hbYerVD2AsoI5gOO2-dTGW9FlysHudLqKEiRQHael0DNe-1TL1L72OsOPAK3YciGHU7f2BP7ptO154BEUgIB4xcMnqLlPP5gbaziYSyYnKPXeO~AckA7neYk7ZUNMmjIf~vWMgDe97dA1vzfjfXJ1ZtnozR8rYqwYMfl6m~vtfqfdX9DjGwNeTSxEuZAS4H8uaSsC2Q__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA" },
#   { id: 3, title: "Jurassic World: Dominion", synopsis: "Four years after the destruction of Isla Nublar, dinosaurs now live--and hunt--alongside humans all over the world. This fragile balance will reshape the future and determine, once and for all, whether human beings are to remain the apex predators on a planet they now share with history's most fearsome creatures in a new Era.", img_url: "https://m.media-amazon.com/images/M/MV5BOTBjMjA4NmYtN2RjMi00YWZlLTliYTktOTIwMmNkYjYxYmE1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_FMjpg_UX1000_.jpg", trailer_url: "https://imdb-video.media-imdb.com/vi764854809/1434659607842-pgv4ql-1651159417077.mp4?Expires=1659092188&Signature=aJaWD86BOcGFlCjAebRHx4kjZuneJaCs6BcFUdjG3T~WhkbT--GIhHULjv2wIoPzTr6HdeGybBiYSwRjnN5-DrJ0wt4snHeat-i5V3tB6c7IvngVOhocN2neo48zptHOiBmwqicY2FFx3MfnOtJOaMVoI70NL1yWaD79Urcq4Ouh8SoClPP0FRCPXn8WxGrBhR2kH8e6PrK9dnlgC3fvX-HhNn9G68MTrLzJF22yjbzbHAdhe3zTW5qZDa-jKVEr1Ddwq2VkVcD9FfK5BilKMQvT2yV~0GNAcxUcMW~BdoVIWQ0A-92fkb~j9QxkZszB0VZwmPbFxfXAwD03FTcALA__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA" },
#   { id: 4, title: "The Northman", synopsis: "From visionary director Robert Eggers comes The Northman, an action-filled epic that follows a young Viking prince on his quest to avenge his father's murder.", img_url: "https://m.media-amazon.com/images/M/MV5BMzVlMmY2NTctODgwOC00NDMzLWEzMWYtM2RiYmIyNTNhMTI0XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_.jpg", trailer_url: "https://imdb-video.media-imdb.com/vi2628633113/1434659607842-pgv4ql-1650564160409.mp4?Expires=1659092861&Signature=nW64fpKc-L52TBMhRtzLjnlbAVGbJeympVXUXA62RBVfPJ5mMOulBjL7oNZtskycJ5lzH0geauKuhg3XfCVxVgSyC8MBQfwkwBMYEft29btOQpJBR6d8Exk7U3lroGrbYn5c6nwmkmu1OlRCVqkk6RKlWGph8a6oDB9WYP106FA-vh6TIBDO10d~KDqc7j07ZveiwtoWBdbqFQbI7LliWGdaTuis4npDREvjgGyr-We-AQqmEHtI2SsIXieYwTtPfDfdbqwmzsE~ByuFzddP5gSxW72x4dHw-O~~gbx4zPVIJY5kGssIK7DmN1iVThU0paM6atoV763Jwt-On94nVQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA" },
#   { id: 5, title: "Morbius", synopsis: "Biochemist Michael Morbius tries to cure himself of a rare blood disease, but he inadvertently infects himself with a form of vampirism instead.", img_url: "https://www.sonypictures.com/sites/default/files/styles/max_560x840/public/title-key-art/morbius_onesheet_1400x2100_he.jpg?itok=-jQVkWIe", trailer_url: "https://imdb-video.media-imdb.com/vi862765849/1434659607842-pgv4ql-1646057736250.mp4?Expires=1659092921&Signature=SaHz4LqIiHktHidZy8ufCGDJVjA0lAUMncm2Tr8Rfd0~V-mBQC-fjLf0zgWfQGtUN0r~1x1IUsURLxLELIBAlnWeW8wIP6rfg8I2iyGS6ws8KDKwv9kPk7xMoYi41vbk3Keo0XxKS0Zeiqje4ZQ5TqfNEsdYWORPtTuawwy8C4GeCgz4Rkz8s4YiQNraJDxsWNz50DKTk2FLSHoG12ctyAiEW6mMYs8Kmo0y4rFG6FY-D0T3rscQMk73ygVTeiuyHD0qKCZ26eqoIMVhDoDFyxiXTNzMfDCVnpBx7bglgMnEz3IjNXtQ~lhNfjEImB8YdhiBklPqJDN3qVMdUiS7qg__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA" },
#   { id: 6, title: "Uncharted", synopsis: "Street-smart Nathan Drake is recruited by seasoned treasure hunter Victor 'Sully' Sullivan to recover a fortune amassed by Ferdinand Magellan, and lost 500 years ago by the House of Moncada.", img_url: "https://m.media-amazon.com/images/M/MV5BMWEwNjhkYzYtNjgzYy00YTY2LThjYWYtYzViMGJkZTI4Y2MyXkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_.jpg", trailer_url: "https://imdb-video.media-imdb.com/vi420201241/1434659607842-pgv4ql-1644274969357.mp4?Expires=1659092963&Signature=TZHKB9-6IVqd9-Mv78deH8Hnl~FyHDcbHw-FSz9JxMPNUT8touLyusbW3Jjw2LSiDbtngCDc-h49f47aptV3WFYVG5noSbe-6yCk8ohOzfTdjwEVUCd2kuKYRDThoSyvGl6lZzSOFWAigFg4PWFARagbt4gWw1OLuM58uqT3tcmbaEFfhwZDX7SPnxxXRsjM8SB31blpsv~nlZtNyrAryQHgFEu12iSAIP4eUCYE~V7EZLLCrNkMCPPQfps7H81XJlsxldxd0QzgtF7cEqJLxIyMA4GwtRnskwicvz2Ru23CyBibhwmLaXVitT3GyTRPpgZStpiMQAzRFXWQ8jOYAQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA" },
#   { id: 7, title: "Dune", synopsis: "A noble family becomes embroiled in a war for control over the galaxy's most valuable asset while its heir becomes troubled by visions of a dark future.", img_url: "https://m.media-amazon.com/images/M/MV5BN2FjNmEyNWMtYzM0ZS00NjIyLTg5YzYtYThlMGVjNzE1OGViXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg", trailer_url: "https://imdb-video.media-imdb.com/vi3967205401/1434659607842-pgv4ql-1626959425069.mp4?Expires=1659093007&Signature=lnXZWCOzx3oWEKlyif~PxQAc3L1iTVbpWT-EZH-qg-Oblxh8j3ydRFeSXT0V8FJcvO0GPaMpgYd1YwwLWkq5efTIYgrXTy8QYtNoQo3-7u-iO~8s7z1aj99qvhj2aU-buqpNkjqmjp1ScnoniZyPmUnYZ~DW1bCCrcRfLNYEn8Pj3zxBo2Nlx8uuGhNLS01Eu9xSmK0fKqKPwPhVzTMWyw-jiNbjhvtLHh8DDmZgIDK6si8Rtf3vHj4DguiCyL-c~2EVOqpB3vSVi~by4xQ-UC49kXM6n5Ap1E~gks7S-gQqIYzx1yw~KR96pGnq-JeS6Q1CL-r3F8EuOFVHw~GvgQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA" },
#   { id: 7, title: "The Lion King", synopsis: "After the murder of his father, a young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.", img_url: "https://m.media-amazon.com/images/M/MV5BMjIwMjE1Nzc4NV5BMl5BanBnXkFtZTgwNDg4OTA1NzM@._V1_.jpg", trailer_url: "https://imdb-video.media-imdb.com/vi3509369881/1434659607842-pgv4ql-1561659105801.mp4?Expires=1659102329&Signature=txOCIPVCj6A~EVzuJwtCTAk9v7LimweZduAHdbCuU-hbPVD8u8BUW0qgdaiMHcBO0yGBTWL6SxF6e00~OeTTd3-Saj6YxRAl-fkWja5nZc7Z3HLl67CBqShNS2-3oO5CLU5vzjyxXx8njyzarObAxbQ1RfAMGM1n5EQFaKxIAGTAk51Bxkl83wNjMRnK09hWwjV0KBfAln5Et6P8M3si-4207iX0Qy~xMVw5Qfo2adnGjRRO0x6eUIDtYBCJpbx0nG-91k8mlujLocooQud39qT9QdRLHU1E~agqHP66IwcmfMRa1lpswCovVpU3VhpSg6muP8smOImyA1pf-sJspw__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA" }
# ]
