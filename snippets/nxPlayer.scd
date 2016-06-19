
// one time

History.loadStory("try.scd");
History.play;

// 3 times

(
a = 0;
w = SkipJack({
        if(History.current.player.isActive.not){
                1.wait;
                History.loadStory(File.getcwd ++ "/try.scd");
                History.play;
                a = a + 1;

        }
}, 0.1, { a > 2 }, name: \histWatch);
)