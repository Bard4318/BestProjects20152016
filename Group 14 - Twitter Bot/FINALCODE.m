%% TWITTER BOT - GROUP 14 - Economic Analysis with Matrices %%

%% Short summary of features:
% 
%  • automated following of users
%  • automated retweeting of users' tweets
%  • automated posting of tweets from a list of preset messages
%  • indefinite use of the bot - repeats itself every 24 hours
%  • the bot doesn't give away the account's nature (more below)

%% Detailed summary of the bot:
% 
%  - The bot retweets tweets posted by other users related to a preset
%    list of stock prices. For this task we have concentrated our interest
%    around tweets with the '$' symbol, followed by various stocks' NYSE
%    code. Using the twitty toolbox is not simple for this bot as it
%    has to run indefinitely and has to fetch data and make sure it
%    complies with what twitty can accept (i.e. tweet IDs in string
%    format).
% 
%  - The bot tries to ensure that its nature is not easily given away.
%    To achieve this we have made sure that there is a handful of messages
%    for each list of tweets that has to be posted each day. Another
%    example for this is that our account retweets other people's tweets at
%    random times using a random number generator. Again, doing that we had
%    to make sure that it does not affect the 24 hour loop, which made us
%    introduce the totalwait variable (used by the follow bot as well).
%
%  - One of the aims of the twitter bot was to follow users through our 
%    Twitter account based on certain demographics. The filtering of the
%    users was achieved by searching for tweets of users from the UK and 
%    the US, containing specific keywords some of which include: 
%    finance, stocks, currency, forex, business. 
%
%  - Moreover, we choose to follow the Twitter accounts that have a minimum
%    number of followers, specified by the user. Furthermore, the user has 
%    the option to use the Json parser or Jsonlab. Finally, another
%    important filtering feature is the option to specify the maximum 
%    number of people to follow. Once that number is reached the script 
%    will stop.
%
%  - To make the code easily readable and understandable to someone who has
%    not been involved in its writing, we have included comments throughout
%    the script and used correct indentation for conditional loops such as,
%    while...end. Furthermore, there is a user guide below that allows 
%    any user to make specific changes in order to access his/her own
%    Twitter account and to be able to run the code.
   
%%
% ** *USER GUIDE:* **
%  - In order for the code to run, specific files are needed. Files include
%    twitty_1.1.1,parse_json, jsonlab-1.1 and processTweets (links to 
%    these files can be found below). Furthermore, it is essential
%    to provide your own personal credentials including consumer key,
%    consumer secret, access token and access token secret. A way to do
%    this is to create a mat file and save your credentials in it so you
%    can load it in your code like we did below in the 'set some
%    parameters' section. 
%  - In order to obtain your own personal credentials
%    there is a detailed procedure in the twitter documentation:
%    https://dev.twitter.com/docs/auth/tokens-devtwittercom. 
%    The steps you have to follow are first of all to  
%    go to the dev.twitter.com "My applications" page either through
%    dev.twitter.com/apps or by selecting "My applications" in the options
%    in the page of your profile in Twitter. Then, you have to create an
%    application by clicking "Create new application". This will provide
%    you with the Consumer keys needed. Then click "Create my access token"
%    to get the two Access tokens. 
%  - Now to save your credentials and create a mat file you have to create 
%    a variable with your own credentials 
%    (ex :creds = struct('ConsumerKey','your-consumer-key-here',...
%    'ConsumerSecret','your-consumer-secret-here',...
%    'AccessToken','your-token-here',...
%    'AccessTokenSecret','your-token-secret-here');
%    and then save it.(ex: save creds.mat). This will create a mat file
%    that you can load in your code in order to use your own credentials.
%  - Also, it is vital to change the username in line 137 with your own
%    account's username for the bot to work. The bot is also focusing on
%    users/tweets that come from the US and the UK. Change as necessary.

%    Upon running the code you will be asked on the command window a few
%    questions so that the bot will accommodate closer to what you are
%    looking for.

%    Q:Does this script run indefinitely, even if I turn off my computer?

%    A: The answer is simply no. If you turn off your computer then your
%    Matlab script will terminate and the bot will not work until you run
%    it again. You might want to consider getting a VPS (Virtual Private
%    Server) where you can run your bot 24/7 if that is what you are
%    looking to do.

%  - Some of the problems encountered during the writing/compilation of the
%    code were: getting our data to comply with twitty's requirements,
%    making sure that the bot can run smoothly for an indefinite period of
%    time (even forevermore), compiling everyone's code into a single
%    script, which meant changing dummy variables that were used in two
%    different standalone codes simultaneously, ensuring that time
%    intervals did not affect the daily repetition of the bot, targeting
%    users from specific geolocations, who are interested in specific
%    things and are quite active within the Twitter community (i.e. high
%    amount of followers). Additionally, there were also design
%    issues, as almost every member's script involved an intentional
%    infinite looping, which was a problem when contemplating all the
%    scripts into a single script. Last but not least, there was an issue
%    with checking that the bot runs perfectly with the time intervals, but
%    we overcame the problem of waiting for 24 hours with tricking Matlab
%    using CheatEngine. WIN!

%    Motivation for creating this bot: With more and more social networks
%    dominating the Internet, there has been an unprecedented amount of
%    social networking "tools" for businesses that helps them promote
%    products. Websites like Twitter and apps like Instagram are
%    undoubtedly the main targets of such tools and we wanted to create our
%    own bot that focuses on Twitter and explores how a business or even
%    just a person can interact with 300m MAU (monthly active users)
%    without having a person do all the work manually. This means that jobs
%    are lost and substituted by computers that do all the work a human would
%    originally do.

%  - In order to create this code we have used tools created by other
%    people. Those tools include:
%  ** Twitty(http://uk.mathworks.com/matlabcentral/fileexchange/34837-twitty)
%     by Vladimir Bondarenko.
%  ** JSON Parser(http://uk.mathworks.com/matlabcentral/fileexchange/20565-json-parser)
%     by Joel Feenstra.
%  ** JSON LAB(http://www.mathworks.com/matlabcentral/fileexchange/33381-jsonlab--a-toolbox-to-encode-decode-json-files-in-matlab-octave)
%     by Qianqian Fang.
%  ** ProcessTweets(https://github.com/toshiakit/AnalyzeTwitter) by Toshiaki Takeuchi.
%
%  Also, Loren Shure's user guide on analyzing Twitter with MATLAB proved
%  to be really helpful.
%  http://blogs.mathworks.com/loren/2014/06/04/analyzing-twitter-with-matlab/
%  
%
%% Set some parameters
acc_user = 'browngeorge205'; % Twitter account username
countries = {'UK', 'US'}; % Countries to include in search 
comm_users = input('Exclude commercial users (y/n)? ','s'); % remove commercial users
max2follow = input('What is the maximum number of people to follow? ');
num = input('What is the minimum number of followers a user must have? '); % Choose the minimum number of followers

addpath('twitty_1.1.1'); % Twitty
addpath parse_json; % Twitty's default json parser
addpath('jsonlab-1.1/jsonlab'); % JSONlab in case we like it more
load('creds.mat') % load credentials from a mat file
tw = twitty(creds); % instantiate a Twitty object

% choose a json parser
disp('Choose a parser.')
parserChoice = input('Press 1 for json parser or 2 for jsonlab [1]: ','s');
if  strcmp(parserChoice,'1') || isempty(parserChoice)
    tw.jsonParser = @ parse_json; % Warning: Control Character '\%' is not valid.
elseif strcmp(parserChoice,'2')
    tw.jsonParser = @ loadjson;  % specify JSONlab as json parser (works better)
else
    error('Invalid json parser') 
end

%set up an infinite loop to keep our programme running 24/7

x=1;

while x>0 % this loop will continue indefinitely
    
    timeinterval_1=60*60; % want to pause for one hour, timeinterval/1 is one hour expressed in seconds
    
    possibletweets1 = {'Morning everyone!Have a nice day',...
        'Good morning people, interesting tweets will follow today!!',...
        'it seems to be a really busy day today'};
    
    %update status choosing randomly from possibletweets1
    
    tweet1=possibletweets1{randi(length(possibletweets1))};
    
    S = tw.updateStatus(tweet1);
    
    disp(sprintf(tweet1)); %Display the tweets posted in the command window.
    
    pause(timeinterval_1); % wait one hour before sending another tweet
    
    
    timeinterval_2=240*60; % want to pause for four hours, timeinterval/2 is four hours expressed in seconds
    
    % produce one tweet message randomly chosen from the set of possible tweets
    possibletweets2={'Stay updated with the latest stock trends',...
        'Be alert, must see tweets are coming!',...
        'Keep an eye on my tweets! Interesting stuff out there'};
    
    %update status choosing randomly from possibletweets2
    tweet2=possibletweets2{randi(length(possibletweets2))};
    
    S = tw.updateStatus(tweet2);
    
    disp(sprintf(tweet2)); %Display the tweets posted in the command window.
    
    pause(timeinterval_2); % wait four hours before sending another tweet
    
    %% Retweeting process
    
    format long
    
    %set a specific list of stocks we want updates for
    stocklist = {'$JPM', '$HSBC','$STT',...
        '$WFC','$CSGN','$RBS','$BLK','$COF'};
    
    t=0; %to create a loop
    i=length(stocklist);
    totalwait=0;
    while t>=0 && i>0 %loop begins
        lookup=stocklist{i};
        rng(0,'twister');
        a = 15;
        b = 30;
        r = (b-a).*rand(1,1) + a;
        timeinterval = 60*r; %% time interval between 60*(15 to 30) seconds.
        %%Better than having a set interval that gives
        %%away the nature of the account
        
        %%Choosing a max of 60x30 time interval for
        %%the retweets ensures that this part will not
        %%delay the posting of tweet3.
        
        %get recent activity related to the chosen NYSE coded stock
        stock = tw.search(lookup,'count',5,'include_entities','true','lang','en');
        [stockUsers,stockTweets] = processTweets.extract(stock); %use of processTweets
        
        if length(stock) == 1
            stockstatuses = stock{1}.statuses;
        else
            stockstatuses = stock;
        end
        
        StockUp = stockstatuses{1,1}.id_str; %%gets the ID !string! as needed
        %%for twitty
        
        ret= tw.retweetStatus(StockUp); %%twitty function
        
        t=(t+1)^1.01; %%update variable t
        
        i=i-1;
        pause(timeinterval); %%wait until process is repeated
        totalwait=totalwait+timeinterval;
    end
    
    
    timeinterval_3=300*60; % want to pause for five hours, timeinterval/3 is five hours expressed in seconds
    % produce one tweet message randomly chosen from the set of possible tweets
    timeinterval_3=timeinterval_3-totalwait; %%the retweeting process has delayed
    %%the script by a few hours
    %%so we subtract the delay
    possibletweets3={'Follow me and check out the most reliable news',...
        'if you are interested in financial markets,hit the follow button!',...
        'Thanks to all my followers,spread the word people'};
    
    %update status choosing randomly from possibletweets3
    
    tweet3=possibletweets3{randi(length(possibletweets3))};
    
    S = tw.updateStatus(tweet3);
    
    disp(sprintf(tweet3)); %Display the tweets posted in the command window.
    pause(timeinterval_3); % wait five hours before sending another tweet
    
    %% Search for tweets using keywords
    % Current number of people we follow
    CurrentFollow = tw.friendsIds('screen_name', acc_user);
    CurrentFollow = length(CurrentFollow{1,1}.ids);
    fprintf('At the moment you are following %d users.\n',CurrentFollow)
    
    % search for English tweets from the UK or US that mention specific keywords
    iter=1;
    repeat=1; %%the following process will run twice - check how var is updated
    totalwait=0;
    while iter>0 && repeat>-1
        time = datetime('now');
        timestr = datestr(time);
        disp('--------------------------------------')
        fprintf('%s - Iteration: %d\n',timestr,iter)
        timeinterval = 15*60;    % run every 15 minutes
        totalwait=totalwait+timeinterval;
        choice = randi(length(countries),1); % choose a country for the search
        
        if choice == 1
            disp('You are collecting data from the UK.')
            coordinates = '53.81982,-2.406348,300mi';
        else
            disp('You are collecting data from the US.')
            coordinates = '39.8,-95.583068847656,1600mi';
        end
        
        % search for keywords
        finance = tw.search('finance','count',100,'include_entities','true','lang','en','geocode',coordinates);
        stocks = tw.search('stocks','count',100,'include_entities','true','lang','en','geocode',coordinates);
        currency = tw.search('currency','count',100,'include_entities','true','lang','en','geocode',coordinates);
        forex = tw.search('forex','count',100,'include_entities','true','lang','en','geocode',coordinates);
        business = tw.search('business','count',100,'include_entities','true','lang','en','geocode',coordinates);
        economist = tw.search('economist','count',100,'include_entities','true','lang','en','geocode',coordinates);
        bloomberg = tw.search('bloomberg','count',100,'include_entities','true','lang','en','geocode',coordinates);
        
        
        %% Process tweets
        % process the structure array to get some info
        [financeUsers,financeTweets] = processTweets.extract(finance);
        [stocksUsers,stocksTweets] = processTweets.extract(stocks);
        [currencyUsers,currencyTweets] = processTweets.extract(currency);
        [forexUsers,forexTweets] = processTweets.extract(forex);
        [businessUsers,businessTweets] = processTweets.extract(business);
        [economistUsers,economistTweets] = processTweets.extract(economist);
        [bloombergUsers,bloombergTweets] = processTweets.extract(bloomberg);
        
        % Remove commercial users or not
        if  strcmp(comm_users,'y') || strcmp(comm_users,'yes')
            financeUsers(financeUsers.isCommercial,:) = [];
            stocksUsers(stocksUsers.isCommercial,:) = [];
            currencyUsers(currencyUsers.isCommercial,:) = [];
            forexUsers(forexUsers.isCommercial,:) = [];
            businessUsers(businessUsers.isCommercial,:) = [];
            economistUsers(economistUsers.isCommercial,:) = [];
            bloombergUsers(bloombergUsers.isCommercial,:) = [];
        elseif strcmp(comm_users,'n') || strcmp(comm_users,'no')
            disp('Commercial users are included.')
        else
            error('Invalid parameter commercial users.')
        end
        
        % sort the user table by follower count in descending order
        [~,financeOrder] = sortrows(financeUsers,'Followers','descend');
        [~,stocksOrder] = sortrows(stocksUsers,'Followers','descend');
        [~,currencyOrder] = sortrows(currencyUsers,'Followers','descend');
        [~,forexOrder] = sortrows(forexUsers,'Followers','descend');
        [~,businessOrder] = sortrows(businessUsers,'Followers','descend');
        [~,economistOrder] = sortrows(economistUsers,'Followers','descend');
        [~,bloombergOrder] = sortrows(bloombergUsers,'Followers','descend');
        
        %% Get Top users in terms of followers (more than num)
        % firstly we index
        financeIdx = financeUsers.Followers>num;
        stocksIdx = stocksUsers.Followers>num;
        currencyIdx = currencyUsers.Followers>num;
        forexIdx = forexUsers.Followers>num;
        businessIdx = businessUsers.Followers>num;
        economistIdx = economistUsers.Followers>num;
        bloombergIdx = bloombergUsers.Followers>num;
        
        % Find the top users
        TopfinanceUsers=financeUsers(financeIdx,:);
        TopstocksUsers=stocksUsers(stocksIdx,:);
        TopcurrencyUsers=currencyUsers(currencyIdx,:);
        TopforexUsers=forexUsers(forexIdx,:);
        TopbusinessUsers=businessUsers(businessIdx,:);
        TopeconomistUsers=economistUsers(economistIdx,:);
        TopbloombergUsers=bloombergUsers(bloombergIdx,:);
        
        % Find how many new users we will follow
        FollowOld = tw.friendsIds('screen_name', acc_user);
        if isempty(FollowOld{1,1}.ids) % to make sure it runs when we don't follow anyone.
            FollowOld{1,1}.ids=[];
        end
        
        newUsers = [TopfinanceUsers;TopstocksUsers;TopcurrencyUsers;...
            TopforexUsers;TopbusinessUsers;TopeconomistUsers;TopbloombergUsers];
        UniqueNewUsersId = unique(newUsers.Id); % find the unique users (it's possible to be in two categories)
        NumNewUsers = sum(~ismember(UniqueNewUsersId,FollowOld{1,1}.ids')); % number of new users we will follow
        
        %% Allows the authenticating users to follow the specified user.
        % Follow the top users (in terms of followers)
        for i=1:height(newUsers)
            tw.friendshipsCreate('screen_name',newUsers.Screen_Name(i),'follow','true');
        end
        
        %% Print some information
        % number of new follows
        fprintf('You are following %d new users.\n',NumNewUsers)
        
        % number of total follows
        FollowNew = tw.friendsIds('screen_name', acc_user);
        TotalUsers = length(FollowNew{1,1}.ids);
        fprintf('In total, you follow %d users.\n',TotalUsers)
        
        % if we follow more than a specified number of users we will exit the
        % program.
        if TotalUsers>=max2follow
            break
        end
        
        iter=iter+1;
        repeat=repeat-1;
        pause(timeinterval); % pause for 15 minutes (or whatever is specified)
        
    end
    
    
    timeinterval_4=420*60; % want to pause for seven hours, timeinterval/4 is seven hours expressed in seconds
    timeinterval_4=timeinterval_4-totalwait;
    % produce one tweet message randomly chosen from the set of possible tweets
    possibletweets4={'Hey! Take a look at my profile','Still working..What a day!',...
        'I have just read some great news! Coming up...Stay updated'};
    
    tweet4=possibletweets4{randi(length(possibletweets4))};
    S = tw.updateStatus(tweet4);%update status choosing
    %randomly from possibletweets4
    
    
    disp(sprintf(tweet4)); %Display the tweets posted in the command window.
    pause(timeinterval_4); % wait six hours before sending another tweet
    
    %% Retweeting process
    
    t=0; %to create a loop
    i=length(stocklist);
    totalwait=0;
    
    while t>=0 && i>0 %loop begins
        lookup=stocklist{i};
        rng(0,'twister');
        a = 32.5;
        b = 52.5;
        r = (b-a).*rand(1,1) + a;
        timeinterval = 60*r; %% time interval between 60*(32.5 to 52.5) seconds.
        %%Better than having a set interval that gives
        %%away the nature of the account
        
        %%Choosing a max of 60x52.5 time interval for
        %%the retweets ensures that this part will not
        %%delay the posting of tweet3.
        
        %get recent activity related to the chosen NYSE coded stock
        stock = tw.search(lookup,'count',5,'include_entities','true','lang','en');
        [stockUsers,stockTweets] = processTweets.extract(stock); %use of processTweets
        
        if length(stock) == 1
            stockstatuses = stock{1}.statuses;
        else
            stockstatuses = stock;
        end
        
        StockUp = stockstatuses{1,1}.id_str; %%gets the ID !string! as needed
        %%for twitty
        
        ret= tw.retweetStatus(StockUp); %%twitty function
        
        t=(t+1)^1.01; %%update variable t
        
        i=i-1;
        pause(timeinterval); %%wait until process is repeated
        totalwait=totalwait+timeinterval;
    end
    
    
    timeinterval_5=420*60;% want to pause for seven hours, timeinterval/5 is seven hours expressed in seconds
    % produce one tweet message randomly chosen from the set of possible tweets
    possibletweets5={'That is it for today folks!','Done for today,Catch up tomorrow',...
        'Have a great evening everyone!'};
    
    tweet5=possibletweets5{randi(length(possibletweets5))};
    S = tw.updateStatus(tweet5); %update status choosing randomly from possibletweets5
    
    disp(sprintf(tweet5)); %Display the tweets posted in the command window.
    pause(timeinterval_5); % wait seven hours before sending another tweet
    
    x=x+1;
end
