if not game:IsLoaded() then
    game.Loaded:Wait()
end;

local P_L = game.Players.LocalPlayer;
local G_W = game.Workspace.Live;

function HARDRESET()
P_L:GetMouse().KeyDown:connect(function(M_K)
local M_K = M_K:lower();
if M_K == "o" then
G_W[P_L.Name].Head.Neck:Destroy();
end;
end);
end;

---OLD UI DELETE---
function NEWOLD()
game:GetService("RunService").Stepped:Connect(function()
if P_L.PlayerGui.HUD.Bottom.Senzu.Order.Visible == true then
P_L.PlayerGui.HUD.Bottom.Senzu.Order.Visible = false;
print("CBWASHERE");
P_L.PlayerGui.HUD.Bottom.SideMenu.Charge.Visible = false;
P_L.PlayerGui.HUD.Bottom.SideMenu.TrunksSword.Visible = false;
P_L.PlayerGui.HUD.Bottom.SideMenu.HitMove.Visible = false;
P_L.PlayerGui.HUD.Bottom.SideMenu.GoDMove.Visible = false;
P_L.PlayerGui.HUD.Bottom.SideMenu.DoubleExp.Visible = false;
P_L.PlayerGui.HUD.Bottom.SideMenu.Majin.Visible = false;
P_L.PlayerGui.HUD.Bottom.SideMenu.Clothes.Visible = false;
P_L.PlayerGui.HUD.Bottom.SideMenu.Ac2.Visible = false;
P_L.PlayerGui.HUD.Bottom.SideMenu.Output2.Visible = false;
P_L.PlayerGui.HUD.Bottom.SideMenu.ImageLabel.Visible = false;
P_L.PlayerGui.HUD.Bottom.SideMenu.Nimbus.Position = UDim2.new(0,90 , 0,340);
---HEALTHBAR---
P_L.PlayerGui.HUD.FullSize.HP.Shadow:Destroy();
P_L.PlayerGui.HUD.FullSize.HP.Bar.Shadow:Destroy();
P_L.PlayerGui.HUD.FullSize.HP.Bar.BackgroundColor3 = Color3.fromRGB(255, 0, 4);
P_L.PlayerGui.HUD.FullSize.HP.Bar.BorderColor3 = Color3.fromRGB(0, 0, 0);
P_L.PlayerGui.HUD.FullSize.HP.BackgroundColor3 = Color3.fromRGB(205, 84, 75);
P_L.PlayerGui.HUD.FullSize.HP.Position = UDim2.new(0.2019, 0, 1.17, 0);
P_L.PlayerGui.HUD.FullSize.HP.Size = UDim2.new(0, 307, 0, 39);
---KIBAR---
P_L.PlayerGui.HUD.FullSize.Ki.Shadow:Destroy();
P_L.PlayerGui.HUD.FullSize.Ki.Bar.Shadow:Destroy();
P_L.PlayerGui.HUD.FullSize.Ki.Bar.BorderColor3 = Color3.fromRGB(0, 0, 0);
P_L.PlayerGui.HUD.FullSize.Ki.Position = UDim2.new(0.586, 0, 1.17, 0);
P_L.PlayerGui.HUD.FullSize.Ki.Size = UDim2.new(0, 307, 0, 39);
---EXPBAR---
P_L.PlayerGui.HUD.FullSize.EXP.Position = UDim2.new(0,8 , 0,1025);
P_L.PlayerGui.HUD.FullSize.EXP.Size = UDim2.new(0,300 , 0,10);
---ZENNI---
P_L.PlayerGui.HUD.FullSize.Money.Position = UDim2.new(0,9 , 0,975);
---TIMERS---
P_L.PlayerGui.HUD.FullSize.Timer.Position = UDim2.new(0,9 , 0,935);
P_L.PlayerGui.HUD.FullSize.Timer2.Position = UDim2.new(0,9 , 0,915);
---SENSU---
P_L.PlayerGui.HUD.Bottom.Senzu.Position = UDim2.new(0,125 , 0,650);
P_L.PlayerGui.HUD.Bottom.Senzu.Size = UDim2.new(0,75 , 0,75);
---QUEST---
P_L.PlayerGui.HUD.FullSize.Quests.Position = UDim2.new(0,1600 , 0,700);
---CREDITS---
P_L.PlayerGui.HUD.Bottom.SideMenu.Tutorial.TextLabel.Text = "CREDITS";
P_L.PlayerGui.HUD.Bottom.Tutorial.Tutorial:Destroy();
P_L.PlayerGui.HUD.Bottom.Tutorial.Melee:Destroy();
P_L.PlayerGui.HUD.Bottom.Tutorial.Melee:Destroy();
P_L.PlayerGui.HUD.Bottom.Tutorial.Melee:Destroy();
P_L.PlayerGui.HUD.Bottom.Tutorial.Melee:Destroy();
P_L.PlayerGui.HUD.Bottom.Tutorial.Melee:Destroy();
P_L.PlayerGui.HUD.Bottom.Tutorial.Melee.ImageLabel:Destroy();
P_L.PlayerGui.HUD.Bottom.Tutorial.Melee.Image = "";
P_L.PlayerGui.HUD.Bottom.Tutorial.Title.Texter.Text = "MADE BY CB";
P_L.PlayerGui.HUD.Bottom.Tutorial.Melee.TextLabel.Text = "CB IS DADDY ONG";
end;
end);
end;

---UI---
local CBWASHERE = Instance.new("ScreenGui");
local PING = Instance.new("TextLabel");
local HEALTH = Instance.new("TextLabel");
local KI = Instance.new("TextLabel");

CBWASHERE.Name = "CBWASHERE";
CBWASHERE.Parent = game.CoreGui;
CBWASHERE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
CBWASHERE.ResetOnSpawn = false;

HEALTH.Name = "HEALTH";
HEALTH.Parent = CBWASHERE;
HEALTH.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
HEALTH.BackgroundTransparency = 1.000;
HEALTH.BorderColor3 = Color3.fromRGB(0, 0, 0);
HEALTH.BorderSizePixel = 0;
HEALTH.Position = UDim2.new(0.202999994, 0, 0.842000008, 0);
HEALTH.Size = UDim2.new(0, 320, 0, 42);
HEALTH.Font = Enum.Font.SourceSans;
function HEALTHHH()
game:GetService("RunService").RenderStepped:connect(function()
HEALTH.Text = "HEALTH : " .. math.floor(G_W[P_L.Name].Humanoid.Health);
end);
end;
HEALTH.TextColor3 = Color3.fromRGB(0, 0, 0);
HEALTH.TextScaled = true;
HEALTH.TextSize = 14.000;
HEALTH.TextWrapped = true;

KI.Name = "KI";
KI.Parent = CBWASHERE;
KI.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
KI.BackgroundTransparency = 1.000;
KI.BorderColor3 = Color3.fromRGB(0, 0, 0);
KI.BorderSizePixel = 0;
KI.Position = UDim2.new(0.582000017, 0, 0.842999995, 0);
KI.Size = UDim2.new(0, 320, 0, 42);
KI.Font = Enum.Font.SourceSans;
function KIII()
game:GetService("RunService").RenderStepped:connect(function()
KI.Text = "KI : " .. math.floor(G_W[P_L.Name].Ki.Value);
end);
end;
KI.TextColor3 = Color3.fromRGB(0, 0, 0);
KI.TextScaled = true;
KI.TextSize = 14.000;
KI.TextWrapped = true;

PING.Name = "PING";
PING.Parent = CBWASHERE;
PING.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
PING.BackgroundTransparency = 0;
PING.BorderSizePixel = 2;
PING.Position = UDim2.new(0.902846634, 0, 0.0111248456, 0);
PING.Size = UDim2.new(0, 148, 0, 29);
PING.Font = Enum.Font.SourceSans;
function PINGG()
game:GetService("RunService").RenderStepped:connect(function()
local X = game.Stats.Network.ServerStatsItem["Data Ping"]:GetValueString();
local Y = string.sub(X, 1 , 3);
PING.Text  = "PING: " .. (Y);
end);
end;
PING.TextColor3 = Color3.fromRGB(0, 0, 0);
PING.TextScaled = true;
PING.TextSize = 14.000;
PING.TextWrapped = true;

NEWOLD();
HEALTHHH();
KIII();
PINGG();
HARDRESET();