local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/MJMODZZ/Roblox-Executor/main/LuaGUISources/ChatSpooferModules.lua"))()
local SubmitButton

local UI =
    Material.Load(
        {
            Title = "ChatSpooferAddon",
            Style = 2,
            SizeX = 400,
            SizeY = 220,
            Theme = "Aqua"
        }
    )

local Page =
    UI.New(
        {
            Title = "Main"
        }
    )

-- aardappel

local OwnMessage =
    Page.TextField(
        {
            Text = "Enter Own message",
            Callback = function(value)
                SubmitButton:SetText("Send (" .. CheckCount() .. "/39)")
            end,
            Menu = {
                Information = function(self)
                    UI.Banner(
                        {
                            Text = "You will send this message to yourself which is required for the prcess"
                        }
                    )
                end
            }
        }
    )

local SpoofName =
    Page.TextField(
        {
            Text = "Enter a name to spoof",
            Callback = function(value)
                SubmitButton:SetText("Send (" .. CheckCount() .. "/39)")
            end,
            Menu = {
                Information = function(self)
                    UI.Banner(
                        {
                            Text = "Set the name between the brackets, like \"Roblox\" or \"Server\"."
                        }
                    )
                end
            }
        }
    )

local SpoofMessage =
    Page.TextField(
        {
            Text = "Spoof the message",
            Callback = function(value)
                SubmitButton:SetText("Send (" .. CheckCount() .. "/39)")
            end,
            Menu = {
                Information = function(self)
                    UI.Banner(
                        {
                            Text = "The message that the victim will say."
                        }
                    )
                end
            }
        }
    )

SubmitButton =
    Page.Button(
        {
            Text = "Send (0/39)",
            Callback = function()
                if CheckCount() > 39 then
                    UI.Banner({
                        Text = "Error! Please dont enter more than 39 Letters"
                    })
                else
                    message =
                        "" ..
                        tostring(OwnMessage:GetText()) ..
                        "                                                                                                                                                             [" ..
                        tostring(SpoofName:GetText()) .. "]: " .. tostring(SpoofMessage:GetText())
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
                end
            end
        }
    )

function CheckCount()
    local TotalChars = #OwnMessage:GetText() + #SpoofName:GetText() + #SpoofMessage:GetText()
    return TotalChars
end
