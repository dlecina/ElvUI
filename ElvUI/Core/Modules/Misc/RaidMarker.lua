--Credit Baudzilla
local E, L, V, P, G = unpack(ElvUI)
local M = E:GetModule('Misc')

local sin, cos, rad = math.sin, math.cos, rad -- sin~=math.sin, cos~=math.cos, rad==math.rad; why? who knows? :P

local CreateFrame = CreateFrame
local GetNumGroupMembers = GetNumGroupMembers
local UnitIsGroupLeader = UnitIsGroupLeader
local UnitIsGroupAssistant = UnitIsGroupAssistant
local IsInGroup, IsInRaid = IsInGroup, IsInRaid
local UnitExists, UnitIsDead = UnitExists, UnitIsDead
local GetCursorPosition = GetCursorPosition
local PlaySound = PlaySound
local SetRaidTarget = SetRaidTarget
local SetRaidTargetIconTexture = SetRaidTargetIconTexture
local UIErrorsFrame = UIErrorsFrame
-- GLOBALS: RaidMark_HotkeyPressed

local ButtonIsDown

function M:RaidMarkCanMark()
	if not self.RaidMarkFrame then return false end

	if GetNumGroupMembers() > 0 then
		if UnitIsGroupLeader('player') or UnitIsGroupAssistant('player') then
			return true
		elseif IsInGroup() and not IsInRaid() then
			return true
		else
			UIErrorsFrame:AddMessage(L["You don't have permission to mark targets."], 1.0, 0.1, 0.1, 1.0)
			return false
		end
	else
		return true
	end
end

function M:RaidMarkShowIcons()
	if not UnitExists('target') or UnitIsDead('target')then
		return
	end
	local x, y = GetCursorPosition()
	local scale = E.UIParent:GetEffectiveScale()
	self.RaidMarkFrame:Point('CENTER', E.UIParent, 'BOTTOMLEFT', x / scale, y / scale)
	self.RaidMarkFrame:Show()
end

function RaidMark_HotkeyPressed(keystate)
	ButtonIsDown = (keystate=='down') and M:RaidMarkCanMark()
	if ButtonIsDown and M.RaidMarkFrame then
		M:RaidMarkShowIcons()
	elseif M.RaidMarkFrame then
		M.RaidMarkFrame:Hide()
	end
end

function M:RaidMark_OnEvent()
	if ButtonIsDown and self.RaidMarkFrame then
		self:RaidMarkShowIcons()
	end
end
M:RegisterEvent('PLAYER_TARGET_CHANGED', 'RaidMark_OnEvent')

function M:RaidMarkButton_OnEnter()
	self.Texture:ClearAllPoints()
	self.Texture:Point('TOPLEFT', -10, 10)
	self.Texture:Point('BOTTOMRIGHT', 10, -10)
end

function M:RaidMarkButton_OnLeave()
	self.Texture:SetAllPoints()
end

function M:RaidMarkButton_OnClick(arg1)
	PlaySound(1115) --U_CHAT_SCROLL_BUTTON
	SetRaidTarget('target', (arg1~='RightButton') and self:GetID() or 0)
	self:GetParent():Hide()
end

local ANG_RAD = rad(360) / 7
function M:LoadRaidMarker()
	local marker = CreateFrame('Frame', nil, E.UIParent)
	marker:EnableMouse(true)
	marker:SetFrameStrata('DIALOG')
	marker:Size(100)

	for i = 1, 8 do
		local button = CreateFrame('Button', 'RaidMarkIconButton'..i, marker)
		button:Size(40)
		button:SetID(i)
		button.Texture = button:CreateTexture(button:GetName()..'NormalTexture', 'ARTWORK')
		button.Texture:SetTexture([[Interface\TargetingFrame\UI-RaidTargetingIcons]])
		button.Texture:SetAllPoints()
		SetRaidTargetIconTexture(button.Texture, i)
		button:RegisterForClicks('LeftbuttonUp','RightbuttonUp')
		button:SetScript('OnClick', M.RaidMarkButton_OnClick)
		button:SetScript('OnEnter', M.RaidMarkButton_OnEnter)
		button:SetScript('OnLeave', M.RaidMarkButton_OnLeave)
		if i == 8 then
			button:Point('CENTER')
		else
			local angle = ANG_RAD * (i - 1)
			button:Point('CENTER', sin(angle) * 60, cos(angle) * 60)
		end
	end

	M.RaidMarkFrame = marker
end
