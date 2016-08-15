


(
x = 0;
w = SkipJack({
        if(History.current.player.isActive.not){
                1.wait;
                History.loadStory(Platform.userHomeDir ++ "/nxI/historys/nxI2016-08-15_03_45_40.scd");
                History.play;
                x = x + 1;

        }
}, 0.1, { x > 2 }, name: \histWatch);
)