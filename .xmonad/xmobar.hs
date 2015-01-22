Config {
    font = "xft:Droid Sans Mono:size=10:antialias=true",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = Top,
    lowerOnStart = True,
    commands = [
        Run MultiCpu ["-t","<autototal>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run Memory ["-t","<usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Wireless "wlp3s0" ["-t", "<essid> <qualitybar>"] 10,
        Run Date "%a %b %_d %k:%M:%S" "date" 10,
        Run DiskU [("/", "[/ <free>]"), ("/home", "[/home <free>]")] [] 10,
        Run ThermalZone 0 ["-L", "500", "-H", "80", "-h", "#FFB6B0", "-l", "#CEFFAC", "-n", "#FFFFCC"] 30,
        Run ThermalZone 1 ["-L", "500", "-H", "80", "-h", "#FFB6B0", "-l", "#CEFFAC", "-n", "#FFFFCC"] 30,
        Run ThermalZone 2 ["-L", "500", "-H", "80", "-h", "#FFB6B0", "-l", "#CEFFAC", "-n", "#FFFFCC"] 30,
        Run Com "volume" [] "vol" 10,
        Run Com "fan-speed" ["fan1"] "pump" 10,
        Run Com "fan-speed" ["fan2"] "fan" 10,
        Run Com "wifi" ["wlp3s0"] "wifi" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{  [vol %vol%] %disku% [%multicpu%] [%memory%] [%thermal0%] [%thermal1%] [%thermal2%] [%pump%] [%fan%] [%wlp3s0wi%] [<fc=#FFFFCC>%date%</fc>]"
}
