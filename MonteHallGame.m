% Welcome to mine own custom Monte Game
% While in my free time I was inspired from the Monte Hall homework to make
% a little Matlab game just for you. 
% Sharing this to have others play is also great. I have a section for them
% There are some bugs I could not figure out sadly. I'll work on when I
% have time have fun with the technically first version. 
% Or actually like 50th because of the changes I have made to it.
% Here are the bugs I know of: 
% Bug one: does not take in characters 
% Bug two: a blank enter breaks program 
% bug three: If pressed 'enter' at the end. Program repeats and saves
% pasted responses. Creates an endless loop
%% Clear everything
clc;
clear; 
clear varibles;
%% Creating useful stuff
new = newline;
a = 1;
b = 1;
c = 1;
d = 1;
%% Repeat game
while (c == 1)
%% Who are you?  
      while (d == 1)
      prompt = 'Who are you?';
      prompt = [prompt new 'Are you one of my Electric Warframe teachers?[Y/N]'];
      Response = input(prompt,'s'); % Getting a response to see if the person playing is one of my teachers 
      clc;
              if strcmp(Response,'Y') || strcmp(Response,'y') %If typed in y or Y then take them here
                  prompt = 'Dr. Teare? Type in 1';
                  prompt = [prompt new 'Dr. Wedeward? Type in 2'];
                  prompt = [prompt new 'Dr. Osery? Type in 3'];
                  prompt = [prompt new];
                  Player1 = input(prompt); % To discover which teacher is playing
                  Player2 = -1; % forcing Player2 to zero because it will create an error and stops code
                  d = d + 1;
                  clc;
              elseif strcmp(Response,'N') || strcmp(Response,'n') % If typed in n or N then take them here
                  prompt = ['Welcome to my Monte Hall game.'];
                  prompt = [prompt new 'Type in your name.'];
                  prompt = [prompt new ];
                  Player2 = input(prompt, 's'); % Not my teacher then this will be whoever is playing
                  Player1 = -1; % forcing Player1 to zero because it will create an error and stops code
                  d = d + 1;
                  clc;
              else  % this else is if they type in any letter or number that is not Y,y,N, or n
                  S = 'Why you typing in that??????';
                  S = [S new 'I am hurt. I am offended.'];
                  S = [S new 'Ok. I am lying. Do it again.'];
                  disp(S) 
                  Player1 = -1;
                  Player2 = -1;
              end
      end
    while(a == 1)
        if (Player1 == 1) || (Player1 == 2) || (Player1 == 3) % if one of the teachers take them here
            if Player1 == 1
                Player1 = 'Cat_Master';
                Print = fprintf('Welcome %s. Shall we begin. ', Player1);
                NewPrompt =[new 'Ready to Contuine? [Y/N]'];
                Answer = input(NewPrompt,'s'); % Find out if the he can play 
                a = a + 1; % To break the while loop to contuine the game
                clc;
            elseif Player1 == 2
                Player1 = 'Smiling_Man';
                Print = fprintf('Welcome %s. Shall we begin. ', Player1);
                NewPrompt =[new 'Ready to Contuine? [Y/N]'];
                Answer = input(NewPrompt,'s'); % Find out if the he can play 
                a = a + 1; % To break the while loop to contuine the game
                clc;
            elseif Player1 == 3
                Player1 = 'Radio_Master';
                Print = fprintf('Welcome %s. Shall we begin. ', Player1);
                NewPrompt =[new 'Ready to Contuine? [Y/N]']; 
                Answer = input(NewPrompt,'s'); % Find out if the he can play 
                a = a + 1; % To break the while loop to contuine the game
                clc;
            end
         elseif strcmp(Player2, Player2) % If the player is not a teacher of mine then take them here
%% Welcoming Player
Print = fprintf('Welcome %s. Shall we begin. ', Player2);
NewPrompt =[new 'Ready to Contuine? [Y/N]'];
Answer = input(NewPrompt,'s'); % They type in their name or nickname
a = a +1; % To break the while loop
clc; % Clear the screen
        elseif Player1 < 1 % If they a number thats lower then values given
            Error = '1HAHAHA you are funny for trying that but try again ;P';
            disp(Error)
        elseif (Player1 > 1) && (Player1 < 2) % If they being sneaky and typing a number between the values
            Error = '2HAHAHA you are funny for trying that but try again ;P';
            disp (Error)
        elseif (Player1 > 2) && (Player1 < 3) % If they being sneaky and typing a number between the values
            Error = '3HAHAHA you are funny for trying that but try again ;P';
            disp (Error)
        elseif Player1 > 3 % If they a number thats higher then values given
            Error = 'Why you typing in another numnber? >:( Try again';
            disp (Error)
        end
    end
    while (b == 1)
        if strcmp(Answer,'Y') || strcmp(Answer,'y') % If they can contuine take them here
            if strcmp(Player1,'Cat_Master')
                S = 'Welcome to the Game of Cats or Dogs!!!!';
                S = [S new 'I am the game Host, Billy the Cat.'];
                S = [S new 'There are three doors.'];
                S = [S new 'One holds a cat'];
                S = [S new 'The other two holds a dog'];
                S = [S new 'If you can pick the one with the Cat.'];
                S = [S new 'You win'];
                S = [S new 'Now. Which do you chose? '];
                S = [S new 'Door 1'];
                S = [S new 'Door 2'];
                S = [S new 'Door 3'];
                S = [S new];
                FirstChoice = input(S);
                b = b + 1;
            elseif strcmp(Player1,'Smiling_Man')
                S = 'Welcome to the Game of Power Systems!!!';
                S = [S new 'I am the game Host, Bob the Power Bus'];
                S = [S new 'There are three doors'];
                S = [S new 'One holds the plans for an amazing eletrical gird.'];
                S = [S new 'The other two holds plans of faulty eletrical girds.'];
                S = [S new 'If you pick the one with Amazing gird.'];
                S = [S new 'You win'];
                S = [S new 'Now. Which do you chose? '];
                S = [S new 'Door 1'];
                S = [S new 'Door 2'];
                S = [S new 'Door 3'];
                S = [S new];
                FirstChoice = input(S);
                b = b + 1;
            elseif strcmp(Player1,'Radio_Master')
                S = 'Welcome to the Game of Can you hear me?';
                S = [S new 'I am the game host, RF King'];
                S = [S new 'There are three doors'];
                S = [S new 'One holds win'];
                S = [S new 'The other two holds lose'];
                S = [S new 'If you pick win'];
                S = [S new 'You win'];
                S = [S new 'Now. Which do you pick? '];
                S = [S new 'Door 1'];
                S = [S new 'Door 2'];
                S = [S new 'Door 3'];
                S = [S new];
                FirstChoice = input(S);
                disp(S)
                b = b + 1;
          elseif strcmp(Player2,Player2)
                S = 'Welcome to the Game of Chance';
                S = [S new 'I am the game host, Cheeto dude.'];
                S = [S new 'There are three doors'];
                S = [S new 'One holds enough life time of pudding'];
                S = [S new 'The other two holds nothing'];
                S = [S new 'If you pick the pudding.'];
                S = [S new 'You win'];
                S = [S new 'Now. Which do you pick?'];
                S = [S new 'Door 1'];
                S = [S new 'Door 2'];
                S = [S new 'Door 3'];
                S = [S new];
                FirstChoice = input(S);
                b = b + 1;
            end
    
        elseif strcmp(Answer, 'N') || strcmp(Answer,'n') % If they cannot contuine take them here
            S = 'So sorry you can not play right now. Maybe next Time :D';
            disp(S) 
            return
        else 
            Error = 'Hoping to find a bug in my code ;P';
            disp(Error)
        end
    clc;
    end
%% Creating happy door :D
Happydoor = randi(3,1); % will output a value between 1 to 3 and will be the happy door

%% Creating sad doors D:
Saddoors = setdiff(1:3,Happydoor); % will output two vales 

%% Revealing door
Rdoor = setdiff(1:3,[FirstChoice,Happydoor]); % Figuring out which sad doors are left

%% Checking amount of revealing door
if length(Rdoor) ~= 1 % Checking if the Rdoor is more than 1
    alwayssad = randsample(2,1); % If Rdoor is more than one than create a new varible
    Rdoor = Rdoor(alwayssad);
end
  if strcmp(Player1,'Cat_Master')
      D = 'Alright then. Thank you for your choice. Maybe your right maybe your wrong.';
      D = [D new 'What is behind a door you did not pick?'];
      disp(D)
      disp(Rdoor)
      S = 'Oh snap. Looks like there is a dog.';
      S = [S new 'There is a chance you could have picked the correct one.'];
      S = [S new 'But here is a twist. Would you like to switch.? [Y/N]'];
      S = [S new];
      Switch = input(S,'s');  
      b = b + 1;
    elseif strcmp(Player1,'Smiling_Man')
        D = 'Alright then. Thank you for your choice. Maybe your right maybe your wrong.';
        D = [D new 'What is behind a door you did not pick?'];
        disp(D)
        disp(Rdoor)
        S = 'Oh snap. Looks like there is a faulty grid.';
        S = [S new 'There is a chance you could have picked the correct one.'];
        S = [S new 'But here is a twist. Would you like to switch? [Y/N]'];
        S = [S new];
        Switch = input(S,'s');
        b = b + 1;
    elseif strcmp(Player1,'Radio_Master')
        D = 'Alright then. Thank you for your choice. Maybe your right maybe your wrong.';
        D = [D new 'What is behind a door you did not pick?'];
        disp(D)
        disp(Rdoor)
        S = 'Oh snap. Looks like there is a lose';
        S = [S new 'There is a chance you could have picked the correct one.'];
        S = [S new 'But here is a twist. Would you like to switch? [Y/N]'];
        S = [S new];
        Switch = input(S,'s');
        b = b + 1;
    elseif strcmp(Player2,Player2)
        D = 'Alright then. Thank you for your choice. Maybe your right maybe your wrong.';
        D = [D new 'What is behind a door you did not pick?'];
        disp(D)
        disp(Rdoor)
        S = 'Oh snap. Looks like there is no pudding';
        S = [S new 'There is a chance you could have picked the correct one.'];
        S = [S new 'But here is a twist. Would you like to switch? [Y/N]'];
        S = [S new];
        Switch = input(S,'s');
        b = b + 1;
 end
    
%% close to the end
if strcmp(Switch,'Y') || strcmp(Switch,'y')
%% If said yes
SecondChance = setdiff(1:3, [Rdoor,FirstChoice]); % Making sure Second choice was either first choice and reveal door
S = 'It has seemed like you have decided to switch.';
S = [S new 'Time to reveal if you won the prize.'];
disp(S)

elseif strcmp(Switch,'N') || strcmp(Switch,'n')
S = 'It has seemed like you have decided not to switch.';
S = [S new 'Time to reveal if you won the prize.'];
end
clc;
%% Displaying if you are a winner or....not...I'm sorry
if strcmp(Switch,'Y') || strcmp(Switch,'y')

    if SecondChance == Happydoor
          S = 'You have won. YAYAYAYAYAYAYAYAYAY!!!!!';
          S = [S new 'Would you like to play again?[Y/N]'];
          S = [S new ];
          Repeat = input(S,'s');

    elseif SecondChance ~= Happydoor
          S = 'You lose';
          S = [S new 'Would you like to play again?[Y/N]'];
          S = [S new ];
          Repeat = input(S,'s');
    end
    elseif strcmp(Switch,'N') || strcmp(Switch,'n')
        if FirstChoice == Happydoor
          S = 'You have won. YAYAYAYAYAYAYAYAYAY!!!!!';
          S = [S new 'Would you like to play again?[Y/N]'];
          S = [S new ];
          Repeat = input(S,'s');
    elseif FirstChoice ~= Happydoor
          S = 'You lose';
          S = [S new 'Would you like to play again?[Y/N]'];
          S = [S new ];
          Repeat = input(S,'s');
        end
end
if strcmp(Repeat,'Y') || strcmp(Repeat,'y')
   S = 'Have fun!!!';
   disp(S)
%% clearing everything 
clc;
clear;
clear varibles;
%% resetting varibles
new = newline;
a = 1;
b = 1;
c = 1;
d = 1;
elseif strcmp(Repeat,'N') || strcmp(Repeat,'n')
    c = c + 1;
    S = 'See you later.';
    disp(S)
end
end