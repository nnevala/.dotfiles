Config {
    font = "xft:Droid Sans Mono:size=10:antialias=true",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = Top,
    lowerOnStart = True,
    commands = [
        Run Weather "EGLL" ["-t","<tempC>C","-L","5","-H","25","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run MultiCpu ["-t","Cpu: <total0> <total1> <total2> <total3>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Wireless "wlp4s0" ["-t", "<essid> <quality>"] 10,
        Run Network "wlp4s0" ["-t","r:<rx>, t:<tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%a %b %_d %k:%M:%S" "date" 10,
        Run BatteryP ["BAT0"] ["-t", "<left>% (<timeleft>)"] 600,
        Run DiskU [("/", "/ <free>,"), ("/home", "/home <free>")] [] 10,
        Run ThermalZone 0 ["-L", "500", "-H", "80", "-h", "#FFB6B0", "-l", "#CEFFAC", "-n", "#FFFFCC"] 30,
        Run Com "show-volume" [] "volume" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{  Vol: %volume%   SSD: %disku%   %multicpu%   %memory%   Wifi: %wlp4s0wi% (%wlp4s0%)   Bat: %battery%   Temp: %thermal0%   Out: %EGLL%   <fc=#FFFFCC>%date%</fc>"
}
