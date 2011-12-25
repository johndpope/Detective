"Detective" by Andrew Nelson


Understand the commands "talk" and "speak" and as something new.
Understand "talk to [someone]" as talking to. Talking to is an action applying to one visible thing.

When play begins:
	say "You wake up on a hard couch, feeling like you suddenly remember everything in your whole life in one staggeringly lucid moment. You realize you've been sleeping on your badge, and the indentation in your belly makes you feel like you've been punched in the gut.[line break][line break]Your phone buzzes to life with 'CHIEF' displayed on its glowing face."
Break Room is a room. "The detective's office breakroom has barely enough space for the filth and mice it is infested with. You hear phones ringing and general commotion through the cheap, thin door to the north."
Your phone is an object in Break Room. Your phone can be answered or unanswered. Your phone is unanswered. The description is "You wish you could wake up next to someone prettier."
Filth is scenery in the Break Room. The description is "The detectives' inconsistent 4-hour sleep schedules and round-the-clock work prevent you from finding much time to clean up after yourselves."
The couch is scenery in the Break Room. The description is "There's always a can of Febreeze nearby."
Player is on couch.

Instead of answering:
	say "The chief detective is on the other end with new orders: 'We need you on-scene at a distress call from 2578 Round Way. Possible kidnapping. Be there asap.'[line break][line break]And with that the grizzled, curt man of 60 hangs up; yet you can almost feel him staring at you with his steely eyes if you don't get moving immediately.";
	now Your phone is answered;
	now player is holding Your phone.
	
Office is a room. "You are greeted by several desks piled with phones and paperwork, which their human counterparts are busily shuffling around. The break room is to the south, and the front door to the parking lot is to the east."
Office is north of Break Room. There is a door south of Office and north of Break Room.
Instead of going to Office when phone is not answered:
	say "You know what happens to people who don't answer their phone in this precinct? Ask Detective Tim."

Detective Tim is a person in Office.
Instead of talking to Detective Tim:
	say "The tired detective yawns, 'Man, I've got loads of work to do, but I think I'm getting off before midnight today! Hehe... I hope.'[line break][line break]You turn your phone's ringtone up to its loudest volume."

The Parking Lot is a room. "Time to go to your assignment."
The parking lot is east of Office. 
The squad car is a vehicle in the parking lot. It is pushable between rooms.
Laptop is an object in the squad car. The laptop can be on or off. The laptop is off. The description is "Open your laptop to check directions, databases, and other important stuff."
Instead of opening:
	say "You plug the address in, and get directions to the assignment. Time to move out!";
	now laptop is on.

Understand the commands "drive" and "move out" as something new.
Understand "drive" and "move out" as driving. Driving is an action applying to nothing.
Instead of driving:
	move player to Driveway.
	
Driveway is a room. "[if visited]The yard is to the east, and the front door is to the north. [end if]The owners must be pretty wealthy, you think as you pull into the driveway of a fortress-like mansion with a strong-looking gate. The officer on duty is in his squad car here, too."
Driveway is south of the parking lot.
Instead of going south from Parking Lot when the player is not on squad car:
	say "You may be in fresh-out-of-the-academy athletic condition, but maybe driving would be a better idea."
Instead of going  south from Parking Lot when the laptop is off:
	say "You should probably get some directions from your laptop."
	
Instead of going north from Driveway:
	say "You're on the case, you can't leave!".

Officer Bigby is a man in Driveway. Officer Bigby can be concerned or unconcerned. Officer Bigby is unconcerned. The description is "Sitting in his squad car, the officer looks like he was bored waiting for you."
Instead of talking to Officer Bigby when bookcase is locked:
	say "He lets you know that he couldn't find anything, but you might want to take a look around the yard and inside to check for signs of disturbance and what may have happened."
Gate is scenery in Driveway. "A metal gate surrounds the property as if they were holding off a hoard.These people must be very interested in security."

Yard is a room. Yard is east of Driveway. "You're in the front yard. In the east corner you see a vegetable and herb garden, the entrance to the mansion is to the north, and the driveway is west."
The Garden is a room. Garden is east of the Yard. "The soil seems disturbed, and a few plants are bent. Hiding behind this and the shrubbery would provide sufficient cover for a peeping tom. You notice the window here is broken and blood drips down the wall from it.[if unvisited] A chewed tennis ball lies at your feet as a dog growls from around the corner at you. It doesn't look happy.[end if]".
Ball is an object in Garden. Ball can be thrown or unthrown. Ball is unthrown.

Understand the commands "throw" and "throwing" as something new.
Understand "throw [something]" as throwing. Throwing is an action applying to one visible thing.
Instead of throwing:
		say "The dog lightens up and happily chases the ball into the backyard. You might want to get inside in case he wants to play with the next guy who comes near the window.";
		now ball is thrown;
		remove ball from play.
		
Instead of going from Garden when ball is unthrown:
		say "The dog comes closer and closer to you.".

Foyer is a room. Foyer is north of Yard. "[if unvisited]You enter the mansion. 'Definitely a ritzy place,' you think as you trip over something fancy looking.[end if] There is a trail of blood between the kitchen and main room. The exit is to the south, the main room to the north, and the kitchen to the east."
Fancy thing is scenery in the Foyer. " You have no idea what it is, but it's probably quite expensive. Therefore this seems out of place, just lying here on the floor. It seems to have just been dropped here by the door. Very suspicious."
Kitchen is a room. Kitchen is east of Foyer. "The broken window is rather bloody and you see a trail running to the main room. It appears the person had some pretty hard times breaking in. I suspect it was the guard dog."

Main room is a room.  "The space is lavishly decorated, and high-quality furniture graces the room with class. There is a chandelier on the ceiling and a large bookcase to the east. The only problem is that there's empty spaces everywhere, where it appears someone has taken the valuable objects that should be there."
Main room is north of Foyer.
Safe Room is a room. "In the dim lighting, you don't see much as you and Officer Bigby enter the room, guns drawn. Around the corner, however, is a man, bleeding from his leg with a bag full of valuables. It seems the dog had a burglar for lunch!".
Safe Room is west of Main Room.
The bookcase is a door. Bookcase can be locked or unlocked. The bookcase is locked. The bookcase is inside from the main room and outside from the Safe Room. The description is "One section of books on the bookcase is odd-looking."
Books are scenery in the Main Room. The description is "It seems some of the books are one big chunk. You'd have to examine them more closely to figure out what the deal is."
Instead of taking books:
	say "As you grab and try to pull a book off the shelf, you hear a click and the section of shelves now appears to be able to swing out like a door! It must be a Safe Room.";
	now bookcase is unlocked.
Instead of going west from Main Room when bookcase is locked:
	say "There's a bookcase there."
Instead of going to Safe Room when Officer Bigby is in Driveway:
	say "You hear someone muttering around the corner of the closet-like space. You should get some backup.";

Instead of talking to Officer Bigby when bookcase is unlocked:
	say "You tell him that you found a secret door and have reason to believe someone may be in there. Officer Bigby gets out of his car and is ready to follow you.";
	now Officer Bigby is concerned.
Every turn:
	if Officer Bigby is concerned:
		let the way be the best route from the location of Officer Bigby to the location of the player, using doors;
		try Officer Bigby going the way.

Burglar is a man in Safe Room.
Instead of talking to Burglar:
	say "You question the man about what he is doing. The man replies, a little delirious from his blood loss, 'bahaha..ha... the dog... I climbed through the window and expected... *pant*... to get in and out without trouble... But that DOG BIT ME![line break][line break]And with that the man leans back on the wall for support and you make your arrest. Good job rookie!";
	end the game in victory.