milan = Dancer.create(:name => "Milan", :age => 20, :email => "watermilandrea@gmail.com", :password => "1234")
liz = Dancer.create(:name => "Liz", :age => 16, :email => "lizzy@gmail.com", :password => "ilovetodance")

dance_vision = Studio.find_or_create_by(name: "Dance Vision", address: "813 Seventh St Oregon City, OR 97045", url: "https://www.dancevisionusa.com/")
mvp = Studio.find_or_create_by(name: "MVP Dance Elite", address: "12570 SW Farmington Rd Beaverton, OR 97005", url: "https://mvpdanceelite.com/")
fired_up = Studio.find_or_create_by(name: "Fired-UP Dance", address: "15603 SW Pacific Hwy Portland, OR 97224", url: "http://firedupdanceacademy.com/")
body_vox = Studio.find_or_create_by(name: "BodyVox", address: "1201 NW 17th Ave Portland, OR 97209", url: "http://www.bodyvox.com/classes")
portland_dance_exchange = Studio.find_or_create_by(name: "Portland Dance Exchange", address: "1014 SE Clinton St Portland, OR 97202", url: "https://portlanddanceexchange.com/")
vega_dance_lab = Studio.find_or_create_by(name: "Vega Dance Lab", address: "1322 SE Water Ave Portland, OR 97214", url: "https://www.vegadancelab.com/")
steps_pdx = Studio.find_or_create_by(name: "Steps PDX", address: "522 N Thompson St FL 2 Portland, OR 97227", url: "https://www.stepspdx.com/")
classical_ballet = Studio.find_or_create_by(name: "Classical Ballet Academy", address: "7970 SE Milwaukie Ave Portland, OR 97202", url: "https://www.classicalballet.net/")


jazz = Style.find_or_create_by(name: "Jazz")
contemporary = Style.find_or_create_by(name: "Contemporary")
hip_hop = Style.find_or_create_by(name: "Hip-Hop")
hip_hop_choreo = Style.find_or_create_by(name: "Hip-Hop Choreography")
lite_feet = Style.find_or_create_by(name: "Lite Feet")
ballet = Style.find_or_create_by(name: "Ballet")
tap = Style.find_or_create_by(name: "Tap")
lyrical = Style.find_or_create_by(name: "Lyrical")
modern = Style.find_or_create_by(name: "Modern")
breaking = Style.find_or_create_by(name: "Breaking")
popping = Style.find_or_create_by(name: "Popping")
whacking = Style.find_or_create_by(name: "Whacking")

DanceClass.find_or_create_by(teacher: "Stephanie Leasure", level: "Beginnning", description: "Upbeat, Fun, Energetic class for ages 5-8! Good class for letting your little onesblow off some steam!", name: "Baby Hip-Hop")
DanceClass.find_or_create_by(teacher: "Michelle Holt", level: "Advanced", description: "High intensity Jazz class, focused on Advanced Jazz Technique and Combinations. If you are new to Jazz this class may be too difficult. This class was find_or_create_byd for advanced dancers who needed more of a push.", name: "Michelle's Advanced Jazz")
DanceClass.find_or_create_by(teacher: "Milan Page", level: "Advanced", description:"Thursday Nights at 9pm! This is a musicality and quality of movement based class. Focused on challenging your body and and brain with intricate and detail oriented choreography. Open to all But warning this class may be too difficult if you are new to choreography. Overall feel good, fun, judgement free class open to the anyone willing to learn!
", name: "Contemp with Mil")
DanceClass.find_or_create_by(teacher: "Anita Mitchell", level: "Advanced", description: "Structured ballet class focused on advanced ballet fundamentals. Open to Advanced Dancers who are trained in technical styles. You do not have to be a prima Ballerina but this class will be too difficult if you are a beginner. Ballet shoes are not required but highly recommended.", name: "Ballet With Mrs. Anita")
DanceClass.find_or_create_by(teacher: "Jesus Rodales", level: "Open to All", description: "Open Lite Feet session being held Tuesday Nights 9pm. We welcome all to learn Lite Feet through joining this freestyle session. You don't have to participate if you aren't ready yet, you are welcome to watch and observe! 100% Judgment free Zone!!
", name: "Lite Feet Session")




c1 = DanceClass.all.first
c1.style = Style.all[2]
c1.studio = Studio.all[0]
c1.dancer_id = Dancer.all[0]
c1.save

c2 = DanceClass.all[1]
c2.style = Style.all[0]
c2.studio = Studio.all[0]
c2.dancer_id = Dancer.all[0]
c2.save

c3 = DanceClass.all[2]
c3.style = Style.all[1]
c3.studio = Studio.all[0]
c3.dancer_id = Dancer.all[0]
c3.save

c4 = DanceClass.all[3]
c4.style = Style.all[5]
c4.studio = Studio.all[0]
c4.dancer_id = Dancer.all[0]
c4.save

c5 = DanceClass.all[4]
c5.style = Style.all[4]
c5.studio = Studio.all[5]
c5.dancer_id = Dancer.all[0]
c5.save























