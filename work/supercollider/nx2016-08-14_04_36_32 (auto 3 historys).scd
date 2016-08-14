


(
a = 0;
w = SkipJack({
        if(History.current.player.isActive.not){
                1.wait;
                History.loadStory(Platform.userHomeDir ++ "/nxI/historys/nxI2016-08-14_00_33_57.scd");
                History.play;
                a = a + 1;

        }
}, 0.1, { a > 2 }, name: \histWatch);
)