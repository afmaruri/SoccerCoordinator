/*
------------
Project Info
------------
 
Joe Smith           42	YES	Jim and Jan Smith
Jill Tanner         36	YES	Clara Tanner
Bill Bon            43	YES	Sara and Jenny Bon
Eva Gordon          45	NO	Wendy and Mike Gordon
Matt Gill           40	NO	Charles and Sylvia Gill
Kimmy Stein         41	NO	Bill and Hillary Stein
Sammy Adams         45	NO	Jeff Adams
Karl Saygan         42	YES	Heather Bledsoe
Suzane Greenberg	44	YES	Henrietta Dumas
Sal Dali            41	NO	Gala Dali
Joe Kavalier        39	NO	Sam and Elaine Kavalier
Ben Finkelstein     44	NO	Aaron and Jill Finkelstein
Diego Soto          41	YES	Robin and Sarika Soto
Chloe Alaska        47	NO	David and Jamie Alaska
Arnold Willis       43	NO	Claire Willis
Phillip Helm        44	YES	Thomas Helm and Eva Jones
Les Clay            42	YES	Wynonna Brown
Herschel Krustofski	45	YES	Hyman and Rachel Krustofski

Dragons - March 17, 1pm
Sharks  - March 17, 3pm
Raptors - March 18, 1pm
 
*/

// Array "players" containing a dictionary per player

var players = [
    
// Note: Changed corresponding values for key "experience" to bool values for each player respectively
    
    ["name": "Joe Smith", "height":  42, "experience": true, "guardians": "Jim and Jan Smith"],

    ["name": "Jill Tanner", "height":  36, "experience": true, "guardians": "Clara Tanner"],

    ["name": "Bill Bon", "height":  43, "experience": true, "guardians": "Sara and Jenny Bon"],

    ["name": "Eva Gordon", "height":  45, "experience": false, "guardians": "Wendy and Mike Gordon"],

    ["name": "Matt Gill", "height":  40, "experience": false, "guardians": "Charles and Sylvia Gill"],

    ["name": "Kimmy Stein", "height":  41, "experience": false, "guardians": "Bill and Hillary Stein"],

    ["name": "Sammy Adams", "height":  45, "experience": false, "guardians": "Jeff Adams"],

    ["name": "Karl Saygan", "height":  42, "experience": true, "guardians": "Heather Bledsoe"],

    ["name": "Suzane Greenberg", "height":  44, "experience": true, "guardians": "Henrietta Dumas"],

    ["name": "Sal Dali", "height":  41, "experience": false, "guardians": "Gala Dali"],

    ["name": "Joe Kavalier", "height":  39, "experience": false, "guardians": "Sam and Elaine Kavalier"],

    ["name": "Ben Finkelstein", "height":  44, "experience": false, "guardians": "Aaron and Jill Finkelstein"],

    ["name": "Diego Soto", "height":  41, "experience": true, "guardians": "Robin and Sarika Soto"],

    ["name": "Chloe Alaska", "height":  47, "experience": false, "guardians": "David and Jamie Alaska"],

    ["name": "Arnold Willis", "height":  43, "experience": false, "guardians": "Claire Willis"],

    ["name": "Philip Helm", "height":  44, "experience": true, "guardians": "Thomas Helm and Eva Jones"],

    ["name": "Les Clay", "height":  42, "experience": true, "guardians": "Wynonna Brown"], //Nice Primus reference ;)

    ["name": "Herschel Krustofski", "height":  45, "experience": true, "guardians": "Hyman and Rachel Krustofski"]
    
]

// Empty arrays for each team with it's type declared to be appended with each player's dictionaries after logic

var teamSharks :[[String:Any]] = []

var teamDragons :[[String:Any]] = []

var teamRaptors :[[String:Any]] = []

// Player sorting logic based on experience and current amount of players per team

for player in players {
    if player["experience"] as? Bool == true {
        switch true {
        case teamSharks.count == teamDragons.count && teamSharks.count == teamRaptors.count: teamSharks.append(player)
        case teamSharks.count > teamDragons.count && teamSharks.count > teamRaptors.count: teamDragons.append(player)
        default: teamRaptors.append(player)
        }
    }
    else {
        switch true {
        case teamSharks.count == teamDragons.count && teamSharks.count == teamRaptors.count: teamSharks.append(player)
        case teamSharks.count > teamDragons.count && teamSharks.count > teamRaptors.count: teamDragons.append(player)
        default: teamRaptors.append(player)
        }
    }
}

teamSharks.count
teamDragons.count
teamRaptors.count

// Logic to generate Letters for each team using information of each team member

var letters: [String] = []

for teamMember in teamSharks {
    var letterSharks = "Dearest \(teamMember["guardians"]!),\n\n    We are thrilled to inform you of our acceptance of \(teamMember["name"]!) to our elite soccer team, Sharks. We enjoy having fun working with our team members but not more than being severely strict with them; therefore, we would like to let you know that we will hold our first team practice gathering on March 17 at 3pm and expect our players not one minute late. We appreciate your compliance.\n\nLovingly Yours,\nCoach Shark\n\n"
    letters.append(letterSharks)
}

for teamMember in teamDragons {
    var letterDragons = "Dearest \(teamMember["guardians"]!),\n\n    We are thrilled to inform you of our acceptance of \(teamMember["name"]!) to our elite soccer team, Dragons. We enjoy having fun working with our team members but not more than being severely strict with them; therefore, we would like to let you know that we will hold our first team practice gathering on March 17 at 1pm and expect our players not one minute late. We appreciate your compliance.\n\nLovingly Yours,\nCoach Dragon\n\n"
    letters.append(letterDragons)
}

for teamMember in teamRaptors {
    var letterRaptors = "Dearest \(teamMember["guardians"]!),\n\n    We are thrilled to inform you of our acceptance of \(teamMember["name"]!) to our elite soccer team, Raptors. We enjoy having fun working with our team members but not more than being severely strict with them; therefore, we would like to let you know that we will hold our first team practice gathering on March 18 at 1pm and expect our players not one minute late. We appreciate your compliance.\n\nLovingly Yours,\nCoach Raptor\n\n"

    letters.append(letterRaptors)
}


for letter in letters {
    print(letter)
}






// Average heights for team Sharks

var sumSharks: Int = 0
var heightsSharks: Int = 0

var teamSharksHeights :[Int] = []

for player in teamSharks{
    if var heights = player["height"] as? Int {
    teamSharksHeights.append(heights)
    }
}

while heightsSharks < teamSharksHeights.count {
    sumSharks += teamSharksHeights[heightsSharks]
    heightsSharks += 1
    
}

teamSharksHeights

var sharksHeightAverage = sumSharks / teamSharksHeights.count



// Average heights for team Raptors

var sumRaptors: Int = 0
var heightsRaptors: Int = 0

var teamRaptorsHeights :[Int] = []

for player in teamRaptors{
    if var heights = player["height"] as? Int {
        teamRaptorsHeights.append(heights)
    }
}

while heightsRaptors < teamRaptorsHeights.count {
    sumRaptors += teamRaptorsHeights[heightsRaptors]
    heightsRaptors += 1
    
}

teamRaptorsHeights

var raptorsHeightAverage = sumRaptors / teamRaptorsHeights.count



// Average heights for team Dragons

var sumDragons: Int = 0
var heightsDragons: Int = 0

var teamDragonsHeights :[Int] = []

for player in teamDragons{
    if var heights = player["height"] as? Int {
        teamDragonsHeights.append(heights)
    }
}

while heightsDragons < teamDragonsHeights.count {
    sumDragons += teamDragonsHeights[heightsDragons]
    heightsDragons += 1
    
}

teamDragonsHeights

var dragonsHeightAverage = sumDragons / teamDragonsHeights.count

// Logic to sort players and swap between teams to reach desired height balance

// First, the averages are converted to type Double

var doubleAvgHtDragons = Double(dragonsHeightAverage)
var doubleAvgHtRaptors = Double(raptorsHeightAverage)
var doubleAvgHtSharks = Double(sharksHeightAverage)

if (abs(doubleAvgHtDragons - doubleAvgHtSharks)) > 1.5 {
    print("true")
}
else {
    print("false")
}

// Then a while loop is used to compare differences of average height between teams and use logic until the undesired height balance is addressed (UNFINISHED)

/*
 
 while (abs(doubleAvgHtDragons - doubleAvgHtSharks)) > 1.5 || (abs(doubleAvgHtDragons - doubleAvgHtRaptors)) > 1.5 || (abs(doubleAvgHtRaptors - doubleAvgHtSharks)) > 1.5 {
            for experiencedPlayer in teamSharks {
                if experiencedPlayer["experience"] as? Bool == true {
                    swit
                    case teamSharks.count == teamDragons.count && teamSharks.count == teamRaptors.count: teamSharks.remove()
                        case teamSharks.count < teamDragons.count && teamSharks.count < teamRaptors.count: teamDragons.removeLast()
                        default: teamRaptors.removeLast()
            }
        }
    }
}

 */

