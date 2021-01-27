script_version("1.0")
require("lib.moonloader")

slot0 = require("encoding")
slot1 = require("moonloader").download_status
slot0.default = "CP1251"
u8 = slot0.UTF8

if doesDirectoryExist("moonloader\\AS Instructor") and doesFileExist("moonloader\\AS Instructor\\AS Instructor.ini") and doesFileExist("moonloader\\AS Instructor\\fa-solid-900.ttf") and doesDirectoryExist("moonloader\\lib\\samp") and doesDirectoryExist("moonloader\\lib\\samp\\events") and doesFileExist("moonloader\\lib\\samp\\events\\bitstream_io.lua") and doesFileExist("moonloader\\lib\\samp\\events\\core.lua") and doesFileExist("moonloader\\lib\\samp\\events\\extra_types.lua") and doesFileExist("moonloader\\lib\\samp\\events\\handlers.lua") and doesFileExist("moonloader\\lib\\samp\\events\\utils.lua") and doesFileExist("moonloader\\lib\\samp\\events.lua") and doesFileExist("moonloader\\lib\\samp\\raknet.lua") and doesFileExist("moonloader\\lib\\samp\\synchronization.lua") and doesFileExist("moonloader\\lib\\imgui.lua") and doesFileExist("moonloader\\lib\\MoonImGui.dll") and doesFileExist("moonloader\\lib\\imgui_addons.lua") and doesFileExist("moonloader\\lib\\fAwesome5.lua") then
	slot2 = require("vkeys")
	slot5 = require("inicfg").load(nil, "moonloader\\AS Instructor\\AS Instructor.ini")
	slot6 = require("imgui")
	slot7 = require("lib.samp.events")
	slot8 = require("fAwesome5")
	slot6.ToggleButton = require("imgui_addons").ToggleButton

	function apply_custom_style()
		uv0.SwitchContext()

		slot0 = uv0.GetStyle()
		slot1 = slot0.Colors
		slot2 = uv0.Col
		slot3 = uv0.ImVec4
		slot0.WindowRounding = 2
		slot0.WindowTitleAlign = uv0.ImVec2(0.5, 0.84)
		slot0.ChildWindowRounding = 2
		slot0.FrameRounding = 2
		slot0.ItemSpacing = uv0.ImVec2(5, 4)
		slot0.ScrollbarSize = 13
		slot0.ScrollbarRounding = 0
		slot0.GrabMinSize = 8
		slot0.GrabRounding = 1
		slot1[slot2.FrameBg] = slot3(0.16, 0.29, 0.48, 0.54)
		slot1[slot2.FrameBgHovered] = slot3(0.26, 0.59, 0.98, 0.4)
		slot1[slot2.FrameBgActive] = slot3(0.26, 0.59, 0.98, 0.67)
		slot1[slot2.TitleBg] = slot3(0.04, 0.04, 0.04, 1)
		slot1[slot2.TitleBgActive] = slot3(0.16, 0.29, 0.48, 1)
		slot1[slot2.TitleBgCollapsed] = slot3(0, 0, 0, 0.51)
		slot1[slot2.CheckMark] = slot3(0.26, 0.59, 0.98, 1)
		slot1[slot2.SliderGrab] = slot3(0.24, 0.52, 0.88, 1)
		slot1[slot2.SliderGrabActive] = slot3(0.26, 0.59, 0.98, 1)
		slot1[slot2.Button] = slot3(0.26, 0.59, 0.98, 0.4)
		slot1[slot2.ButtonHovered] = slot3(0.26, 0.59, 0.98, 1)
		slot1[slot2.ButtonActive] = slot3(0.06, 0.53, 0.98, 1)
		slot1[slot2.Header] = slot3(0.26, 0.59, 0.98, 0.31)
		slot1[slot2.HeaderHovered] = slot3(0.26, 0.59, 0.98, 0.8)
		slot1[slot2.HeaderActive] = slot3(0.26, 0.59, 0.98, 1)
		slot1[slot2.Separator] = slot1[slot2.Border]
		slot1[slot2.SeparatorHovered] = slot3(0.26, 0.59, 0.98, 0.78)
		slot1[slot2.SeparatorActive] = slot3(0.26, 0.59, 0.98, 1)
		slot1[slot2.ResizeGrip] = slot3(0.26, 0.59, 0.98, 0.25)
		slot1[slot2.ResizeGripHovered] = slot3(0.26, 0.59, 0.98, 0.67)
		slot1[slot2.ResizeGripActive] = slot3(0.26, 0.59, 0.98, 0.95)
		slot1[slot2.TextSelectedBg] = slot3(0.26, 0.59, 0.98, 0.35)
		slot1[slot2.Text] = slot3(1, 1, 1, 1)
		slot1[slot2.TextDisabled] = slot3(0.5, 0.5, 0.5, 1)
		slot1[slot2.WindowBg] = slot3(0.06, 0.06, 0.06, 0.94)
		slot1[slot2.ChildWindowBg] = slot3(1, 1, 1, 0)
		slot1[slot2.PopupBg] = slot3(0.08, 0.08, 0.08, 0.94)
		slot1[slot2.ComboBg] = slot1[slot2.PopupBg]
		slot1[slot2.Border] = slot3(0.43, 0.43, 0.5, 0.5)
		slot1[slot2.BorderShadow] = slot3(0, 0, 0, 0)
		slot1[slot2.MenuBarBg] = slot3(0.14, 0.14, 0.14, 1)
		slot1[slot2.ScrollbarBg] = slot3(0.02, 0.02, 0.02, 0.53)
		slot1[slot2.ScrollbarGrab] = slot3(0.31, 0.31, 0.31, 1)
		slot1[slot2.ScrollbarGrabHovered] = slot3(0.41, 0.41, 0.41, 1)
		slot1[slot2.ScrollbarGrabActive] = slot3(0.51, 0.51, 0.51, 1)
		slot1[slot2.CloseButton] = slot3(0.41, 0.41, 0.41, 0.5)
		slot1[slot2.CloseButtonHovered] = slot3(0.98, 0.39, 0.36, 1)
		slot1[slot2.CloseButtonActive] = slot3(0.98, 0.39, 0.36, 1)
		slot1[slot2.PlotLines] = slot3(0.61, 0.61, 0.61, 1)
		slot1[slot2.PlotLinesHovered] = slot3(1, 0.43, 0.35, 1)
		slot1[slot2.PlotHistogram] = slot3(0.9, 0.7, 0, 1)
		slot1[slot2.PlotHistogramHovered] = slot3(1, 0.6, 0, 1)
		slot1[slot2.ModalWindowDarkening] = slot3(0.8, 0.8, 0.8, 0.35)
	end

	apply_custom_style()

	slot6.Process = true
	slot9, slot10 = getScreenResolution()
	slot11 = slot6.ImInt(slot5.setting.x)
	slot12 = slot6.ImInt(slot5.setting.y)
	slot13 = slot6.ImBool(false)
	slot14 = 0
	slot15 = slot6.ImVec2(0, 0)
	slot16 = slot6.WindowFlags.NoResize
	slot17 = false
	slot18 = {}
	slot19 = {
		slot8.ICON_FA_BARS .. u8(" ����"),
		slot8.ICON_FA_ID_CARD .. u8(" �������������"),
		slot8.ICON_FA_FILE_ALT .. u8(" ��������"),
		slot8.ICON_FA_HEADSET .. u8(" ������"),
		slot8.ICON_FA_CODE .. u8(" �������"),
		slot8.ICON_FA_COGS .. u8(" ���������"),
		slot8.ICON_FA_SLIDERS_H .. u8(" ���. �������"),
		slot8.ICON_FA_INFO .. u8(" ����������"),
		slot8.ICON_FA_BARS .. u8(" ���� �������� �������")
	}
	slot18[1] = slot19
	slot18[2] = {
		"����",
		"�������������",
		"��������",
		"������",
		"������",
		"��������",
		"���. �������",
		"����������"
	}
	slot19 = {
		0,
		0
	}
	slot20 = {
		0,
		0,
		0,
		0,
		0,
		0
	}
	slot21 = {}
	slot22 = {
		slot6.ImInt(-1)
	}
	slot21[1] = slot22
	slot22 = {
		slot6.ImInt(-1)
	}
	slot21[2] = slot22
	slot22 = {
		slot6.ImBuffer(4),
		slot6.ImBuffer(1024)
	}
	slot21[3] = slot22
	slot22 = {
		slot6.ImBuffer(16)
	}
	slot21[4] = slot22
	slot22 = {
		slot6.ImBuffer(16),
		slot6.ImBuffer(32),
		slot6.ImInt(slot5.setting.type_name),
		slot6.ImBuffer(32),
		slot6.ImBool(slot5.setting.auto_invite),
		slot6.ImBool(slot5.setting.find),
		slot6.ImBool(slot5.setting.marker),
		slot6.ImInt(0),
		slot6.ImBuffer(8),
		slot6.ImBool(slot5.setting.move)
	}
	slot21[5] = slot22
	slot22 = {
		slot6.ImBuffer(65536),
		slot6.ImBuffer(4),
		slot6.ImInt(-1),
		slot6.ImBuffer(32),
		slot6.ImBuffer(16),
		slot6.ImBool(slot5.chat[1]),
		slot6.ImBool(slot5.chat[2]),
		slot6.ImBool(slot5.chat[3]),
		slot6.ImBool(slot5.chat[4]),
		slot6.ImBool(slot5.chat[5]),
		slot6.ImBool(slot5.chat[6]),
		slot6.ImBool(slot5.chat[7]),
		slot6.ImBool(slot5.chat[8]),
		slot6.ImBuffer(32),
		slot6.ImBool(slot5.setting.akcent)
	}
	slot21[6] = slot22
	slot22 = {
		slot6.ImInt(0),
		slot6.ImInt(0),
		slot6.ImInt(0)
	}
	slot21[7] = slot22
	slot22 = {
		false,
		false,
		false
	}
	slot23 = false
	slot24 = 0
	slot25 = -1
	slot26 = {}
	slot27 = {
		slot8.ICON_FA_HANDSHAKE .. u8(" �����������"),
		slot8.ICON_FA_FILE_ALT .. u8(" �����-����"),
		slot8.ICON_FA_CAR_SIDE .. u8(" ����������"),
		slot8.ICON_FA_MOTORCYCLE .. u8(" ��������"),
		slot8.ICON_FA_FISH .. u8(" �����������"),
		slot8.ICON_FA_SHIP .. u8(" ��������"),
		slot8.ICON_FA_CROSSHAIRS .. u8(" ������"),
		slot8.ICON_FA_SKULL_CROSSBONES .. u8(" �����"),
		slot8.ICON_FA_PLANE .. u8(" �����")
		slot8.ICON_FA_PLANE .. u8(" ����")
	}
	slot26[1] = slot27
	slot26[2] = {
		"����",
		"����",
		"�����������",
		"��������",
		"������",
		"�����"
	}
	slot27 = {
		{
			"invite",
			"uninvite",
			"giverank",
			"blacklist",
			"unblacklist",
			"fwarn",
			"unfwarn",
			"fmute",
			"funmute",
			"expel"
		},
		{
			"�������� � �����������",
			"���������� �� �����������",
			"������ �����",
			"��������� � ������ ������",
			"��������� �� ������� ������",
			"������ ��������",
			"������ ��������",
			"������ ����",
			"������ ����",
			"�������� �� �����������"
		},
		{
			"[id]",
			"[id] [�������]",
			"[id] [����]",
			"[id] [�������]",
			"[id]",
			"[id] [�������]",
			"[id]",
			"[id] [�������]",
			"[id]",
			"[id] [�������]"
		}
	}
	slot28 = {}
	slot29 = {
		slot8.ICON_FA_CAR_SIDE .. u8(" ����������"),
		slot8.ICON_FA_MOTORCYCLE .. u8(" ��������"),
		slot8.ICON_FA_FISH .. u8(" �����������"),
		slot8.ICON_FA_SHIP .. u8(" ��������"),
		slot8.ICON_FA_CROSSHAIRS .. u8(" ������"),
		slot8.ICON_FA_SKULL_CROSSBONES .. u8(" �����")
	}
	slot28[1] = slot29
	slot29 = {
		u8("�� ������������ �������"),
		u8("��������� ������"),
		u8("�����������������")
	}
	slot28[2] = slot29
	slot29 = {
		u8("������������� ����"),
		u8("������������ ���������"),
		u8("������������ �������� �������"),
		u8("���������� ����������� ����������")
	}
	slot28[3] = slot29
	slot29 = {
		u8("��������� �����"),
		u8("������������ ���������"),
		u8("������������ �������� �������"),
		u8("���������� ����������� ����������")
	}
	slot28[4] = slot29
	slot29 = {
		u8("1 ������"),
		u8("5 �����"),
		u8("10 �����"),
		u8("15 �����"),
		u8("30 �����"),
		u8("60 �����"),
		u8("999999 �����")
	}
	slot28[5] = slot29
	slot29 = {
		u8("���������"),
		u8("������ ������")
	}
	slot28[6] = slot29
	slot21[5][4].v = tostring(slot5.setting.name)
	slot21[5][9].v = string.gsub(slot5.license[slot21[5][8].v + 1], "&", ".")
	slot21[6][14].v = slot5.setting.akcent_text

	removeBlip(slot5.setting.blip)

	function main()
		if not isSampLoaded() or not isSampfuncsLoaded() then
			return
		end

		while not isSampAvailable() do
			wait(100)
		end

		sampAddChatMessage("[AS Instructor V" .. thisScript().version .. "] {FFFFFF}��������. �����: {FF9933}Federico_Polyakov", 3381759)

		_, my_id = sampGetPlayerIdByCharHandle(PLAYER_PED)
		my_nick = sampGetPlayerNickname(my_id)

		sampSendChat("/stats")

		slot0 = ""
		slot1 = 0
		version = thisScript().version

		print("�������� ����������.")

		if doesFileExist("moonloader\\AS Instructor.json") then
			os.remove("moonloader\\AS Instructor.json")
		end

		downloadUrlToFile("https://raw.githubusercontent.com/Tema05/AutoSchool-Instructor/master/AS%20Instructor.json", "moonloader\\AS Instructor.json", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				if doesFileExist("moonloader\\AS Instructor.json") then
					file = io.open("moonloader\\AS Instructor.json")
					slot4 = decodeJson(file:read("*a"))

					file:close()

					version = slot4.version
					text_update = slot4.text_update

					os.remove("moonloader\\AS Instructor.json")
					print("�������� ���������.")

					if version ~= thisScript().version then
						print("���������� ���������� �� ������ V" .. version)
					else
						print("���������� �����������.")
					end
				else
					print("�� ���������� ��������� ����������.")

					slot4 = true
				end
			end
		end)

		while true do
			wait(0)

			slot2, slot3, slot4, slot5 = sampHasDialogRespond(10001)

			if slot2 then
				if slot3 == 1 then
					imgui_open(8)
					imgui_open(1)
				end

				if version ~= thisScript().version then
					sampShowDialog(10002, "{3399FF}AutoSchool Instructor V" .. thisScript().version, "{FFFFFF}���������� ���������� � ������ {3399FF}V" .. thisScript().version .. " {FFFFFF}�� ������ {3399FF}V" .. version .. [[
{FFFFFF}
������ ��������� �� ������ ���������� � ������� "����������"
�� ������ ������� ���� ����� ������ "������".
����� ��������� ���������� ������� ������� {FF9933}/update]], "������", "��", 0)
				elseif warning then
					sampShowDialog(10004, "{3399FF}AutoSchool Instructor V" .. thisScript().version, [[
{FFFFFF}�� ���������� ��������� ����������.
���������� ��������� ��������:
{3399FF}1. {FFFFFF}��������� ���������� � ����������.
{3399FF}2. {FFFFFF}���������� ��������� ���������� ��� ���.
{3399FF}3. {FFFFFF}������������� ������ � ���������� ��� ���.
{3399FF}4. {FFFFFF}����������� ��������� ���������� �����.
{3399FF}5. {FFFFFF}�������������� ������.]], "��", "", 0)
				end
			end

			slot6, slot7, slot8, slot9 = sampHasDialogRespond(10002)

			if slot6 and slot7 == 1 then
				imgui_open(1)
				imgui_open(8)
			end

			slot10, slot11, slot12, slot13 = sampHasDialogRespond(10003)

			if slot10 and slot11 == 1 then
				sampSendChat("/update")
			end

			for slot17 = 1, 8, 1 do
				if uv1.imgui_open[slot17 .. "_b"] ~= "" and not sampIsChatInputActive() and not sampIsDialogActive() then
					if string.find(uv1.imgui_open[slot17 .. "_b"], "&", 1, true) then
						if isKeyDown(string.match(uv1.imgui_open[slot17 .. "_b"], "(%d+)&")) and wasKeyPressed(string.match(uv1.imgui_open[slot17 .. "_b"], "&(%d+)")) then
							imgui_open(slot17)
						end
					elseif isKeyJustPressed(uv1.imgui_open[slot17 .. "_b"]) then
						imgui_open(slot17)
					end
				end
			end

			for slot17 = 1, 50, 1 do
				if uv1.binder[slot17 .. "_text"] ~= nil and uv1.binder[slot17 .. "_text"] ~= "" and uv1.binder[slot17 .. "_time"] ~= "" and uv1.binder[slot17 .. "_type"] == 0 and not sampIsChatInputActive() and not sampIsDialogActive() then
					if string.find(uv1.binder[slot17 .. "_act"], "&", 1, true) then
						if isKeyDown(string.match(uv1.binder[slot17 .. "_act"], "(%d+)&")) and wasKeyPressed(string.match(uv1.binder[slot17 .. "_act"], "&(%d+)")) and check_stop() then
							lua_thread.create(function ()
								uv0 = 1

								sampSendChat(u8:decode(string.match(uv1.binder[uv2 .. "_text"], "([^&]+)")))

								for slot3 in string.gmatch(uv1.binder[uv2 .. "_text"], "&([^&]+)") do
									wait(tonumber(uv1.binder[uv2 .. "_time"]) * 1000)
									sampSendChat(u8:decode(slot3))
								end

								uv0 = 0
							end)
						end
					elseif isKeyJustPressed(uv1.binder[slot17 .. "_act"]) and check_stop() then
						lua_thread.create(function ()
							uv0 = 1

							sampSendChat(u8:decode(string.match(uv1.binder[uv2 .. "_text"], "([^&]+)")))

							for slot3 in string.gmatch(uv1.binder[uv2 .. "_text"], "&([^&]+)") do
								wait(tonumber(uv1.binder[uv2 .. "_time"]) * 1000)
								sampSendChat(u8:decode(slot3))
							end

							uv0 = 0
						end)
					end
				end
			end

			slot14, slot15 = getCharPlayerIsTargeting(playerHandle)

			if slot14 then
				slot14, marker_id = sampGetPlayerIdByCharHandle(slot15)

				if slot16 then
					if string.find(uv1.setting.menu, "&", 1, true) then
						if isKeyDown(string.match(uv1.setting.menu, "(%d+)&")) and wasKeyPressed(string.match(uv1.setting.menu, "&(%d+)")) then
							imgui_open(9)
						end
					elseif isKeyJustPressed(uv1.setting.menu) then
						imgui_open(9)
					end

					slot1 = 0
					marker_nick = sampGetPlayerNickname(marker_id)

					if slot0 ~= marker_nick then
						uv3[1][1].v = marker_id
						uv3[2][1].v = marker_id

						if uv3[5][7].v then
							removeBlip(blip)

							blip = addBlipForChar(slot15)
							uv1.setting.blip = blip

							uv4.save(uv1, uv5)

							if slot0 == "" then
								lua_thread.create(function ()
									while uv0 < 30 do
										wait(1000)

										uv0 = uv0 + 1

										if uv0 == 30 then
											removeBlip(blip)

											uv1 = ""
										end
									end
								end)
							end
						end

						if uv3[5][6].v then
							sampAddChatMessage("[AS Instructor] {FFFFFF}�� ��������: {FF9933}" .. marker_nick .. "[" .. marker_id .. "]", 3381759)
						end

						slot0 = marker_nick
					end
				end
			end
		end
	end

	slot29 = nil
	slot31 = {
		slot8.min_range,
		slot8.max_range
	}
	slot30 = slot6.ImGlyphRanges(slot31)

	function slot6.BeforeDrawFrame()
		if uv0 == nil then
			slot0 = uv1.ImFontConfig()
			slot0.MergeMode = true
			uv0 = uv1.GetIO().Fonts:AddFontFromFileTTF("moonloader/AS Instructor/fa-solid-900.ttf", 13, slot0, uv2)
		end
	end

	function imgui_open(slot0)
		if slot0 == uv0 or uv1.Process == false then
			uv2.v = not uv2.v
			uv1.Process = uv2.v
		end

		if slot0 == 1 then
			uv3 = uv1.ImVec2(266, 250)
		elseif slot0 == 2 then
			uv3 = uv1.ImVec2(340, 216)
		elseif slot0 == 9 then
			uv3 = uv1.ImVec2(266, 344)
		else
			uv3 = uv1.ImVec2(450, 300)
		end

		if uv4[5][10].v then
			if slot0 == 6 or slot0 == 7 then
				uv5 = uv1.WindowFlags.NoResize + uv1.WindowFlags.MenuBar
			else
				uv5 = uv1.WindowFlags.NoResize
			end
		elseif slot0 == 6 or slot0 == 7 then
			uv5 = uv1.WindowFlags.NoResize + uv1.WindowFlags.MenuBar + uv1.WindowFlags.NoMove
		else
			uv5 = uv1.WindowFlags.NoResize + uv1.WindowFlags.NoMove
		end

		if slot0 == 9 then
			uv5 = uv1.WindowFlags.NoResize + uv1.WindowFlags.NoMove
			uv6.v = uv7 / 2 - 133
			uv8.v = uv9 / 2 - 172
			uv10[6] = 0
		else
			uv6.v = uv11.setting.x
			uv8.v = uv11.setting.y
		end

		uv0 = slot0

		if uv4[5][10].v == false then
			uv12 = true
		end
	end

	function check_rank(slot0)
		if rank == -1 then
			return false
		elseif rank == 0 then
			sampAddChatMessage("[AS Instructor] {FFFFFF}�� �� ��������� ���.", 3381759)

			return false
		elseif rank < slot0 then
			sampAddChatMessage("[AS Instructor] {FFFFFF}� " .. slot0 .. " �����.", 3381759)

			return false
		else
			return true
		end
	end

	function check_stop()
		if uv0 == 1 then
			sampAddChatMessage("[AS Instructor] {FFFFFF}�� ��������.", 3381759)

			return false
		else
			return true
		end
	end

	function GetPressedKeysName()
		for slot4, slot5 in pairs(uv0) do
			if isKeyDown(slot5) and slot5 ~= VK_RBUTTON and slot5 ~= VK_LBUTTON and slot5 ~= VK_MENU and slot5 ~= VK_CONTROL and slot5 ~= VK_SHIFT and slot5 ~= VK_ALT then
				if "" == "" then
					slot0 = uv0.id_to_name(slot5)
				else
					return slot0 .. " + " .. uv0.id_to_name(slot5)
				end
			end
		end

		return slot0
	end

	function GetPressedKeysNumber()
		for slot4, slot5 in pairs(uv0) do
			if isKeyDown(slot5) and slot5 ~= VK_RBUTTON and slot5 ~= VK_LBUTTON and slot5 ~= VK_MENU and slot5 ~= VK_CONTROL and slot5 ~= VK_SHIFT and slot5 ~= VK_ALT then
				if "" == "" then
					slot0 = slot5
				else
					return slot0 .. "&" .. slot5
				end
			end
		end

		return tostring(slot0)
	end

	function GetNameKeysToNumber(slot0, slot1)
		if uv0[slot0][slot1] ~= "" then
			if string.find(uv0[slot0][slot1], "&", 1, true) then
				slot6, slot8 = string.match(uv0[slot0][slot1], "(%d+)&(%d+)")

				return uv1.id_to_name(tonumber(slot2)) .. " + " .. uv1.id_to_name(tonumber(slot3))
			else
				return uv1.id_to_name(tonumber(uv0[slot0][slot1]))
			end
		else
			return ""
		end
	end

	slot31 = true

	function slot7.onSendDeathNotification()
		uv0 = false
	end

	function slot7.onSendSpawn()
		lua_thread.create(function ()
			wait(100)

			if uv0 == true then
				uv0 = false
				_, my_id = sampGetPlayerIdByCharHandle(PLAYER_PED)
				my_nick = sampGetPlayerNickname(my_id)

				sampSendChat("/stats")
				sampAddChatMessage("[AS Instructor] {FFFFFF}����� ����������: {FF9933}" .. my_nick .. "[" .. my_id .. "]", 3381759)
				sampAddChatMessage("[AS Instructor] {FFFFFF}��� �������� �������� ���� ������� {FF9933}/as", 3381759)
				sampAddChatMessage("[AS Instructor] {FFFFFF}��� �������� ���� �������� ������� ������� {FF9933}��� {FFFFFF}������ ��", 3381759)
				sampAddChatMessage("[AS Instructor] {FFFFFF}������ � ������� ������ ����������������� � ������� {FF9933}����� ����", 3381759)

				if version ~= thisScript().version then
					sampAddChatMessage("[AS Instructor] {FFFFFF}���������� ���������� � ������ {3399FF}V" .. thisScript().version .. " {FFFFFF}�� ������ {3399FF}V" .. version, 3381759)
					sampAddChatMessage("[AS Instructor] {FFFFFF}������ ��������� �� ������ ���������� � ������� \"����������\"", 3381759)
					sampAddChatMessage("[AS Instructor] {FFFFFF}����� ��������� ���������� ������� ������� {FF9933}/update", 3381759)
				end

				sampShowDialog(10001, "{3399FF}AutoSchool Instructor V" .. thisScript().version, "{FFFFFF}����� ����������: {FF9933}" .. my_nick .. "[" .. my_id .. [[
]
{FFFFFF}��� �������� �������� ���� ������� {FF9933}/as
{FFFFFF}��� �������� ���� �������� ������� ������� {FF9933}��� {FFFFFF}������ ��
������ � ������� ������ ����������������� � ������� {FF9933}����� ����]], "����", "��", 0)
			end
		end)
	end

	function onWindowMessage(slot0, slot1, slot2)
		if slot1 == VK_ESCAPE and slot0 == 256 and uv0.Process and not sampIsChatInputActive() and not sampIsDialogActive() then
			lua_thread.create(function ()
				consumeWindowMessage(true, false)
				wait(100)

				uv0.v = false
			end)
		end
	end

	rank = -1

	function slot7.onShowDialog(slot0, slot1, slot2, slot3, slot4, slot5)
		if rank == -1 and slot0 == 235 then
			uv0 = false

			if string.match(slot5, "�����������: {B83434}%[(%D+)%]") == "�����������" then
				rank = tonumber(string.match(slot5, "���������: {B83434}%A+%((%d+)%)"))
				rank_name = string.match(slot5, "���������: {B83434}(%A+)%(%d+%)")
			else
				rank = 0
			end

			return false
		end

		if slot0 == 1234 then
			if uv1[1] and slot2 == "{BFBBBA}�������" and string.match(slot5, "���: {FFD700}(%a+_%a+)") == sampGetPlayerNickname(uv2[1][1].v) then
				if tonumber(string.match(slot5, "��� � �����: {FFD700}(%d+)")) < 3 then
					lua_thread.create(function ()
						sampSendChat("/me ���� ������� �������� �������� � ����� ��������� ���")
						wait(2000)
						sampSendChat("/todo � ��������� �� ��� �� ���������.*� �������������� �� ����")
						wait(2000)
						sampSendChat("�� ������ ��������� � ����� ������� 3 ����.")
						wait(2000)
						sampSendChat("/b ����� 3 �����.")
					end)
					removeBlip(blip)

					uv1 = {
						false,
						false,
						false
					}

					return false
				end

				if tonumber(string.match(slot5, "�����������������: {FFD700}(%d+)")) < 35 then
					lua_thread.create(function ()
						sampSendChat("/me ���� ������� �������� �������� � ����� ��������� ���")
						wait(2000)
						sampSendChat("/todo � ��������� �� ��� �� ���������.*� �������������� �� ����")
						wait(2000)
						sampSendChat("�� �����������������.")
						wait(2000)
						sampSendChat("/b ����� 35 �����������������.")
					end)
					removeBlip(blip)

					uv1 = {
						false,
						false,
						false
					}

					return false
				end

				if string.find(slot5, "�����������:", 1, true) then
					lua_thread.create(function ()
						sampSendChat("/me ���� ������� �������� �������� � ����� ��������� ���")
						wait(2000)
						sampSendChat("/todo � ��������� �� ��� �� ���������.*� �������������� �� ����")
						wait(2000)
						sampSendChat("�� ��� �������� � ������ �����������.")
						wait(2000)
						sampSendChat("/b ��������� �� ����� �����������.")
					end)
					removeBlip(blip)

					uv1 = {
						false,
						false,
						false
					}

					return false
				end

				if string.find(slot5, "���������� �������� ���. �����") then
					lua_thread.create(function ()
						sampSendChat("/me ���� ������� �������� �������� � ����� ��������� ���")
						wait(2000)
						sampSendChat("/todo � ��������� �� ��� �� ���������.*� �������������� �� ����")
						wait(2000)
						sampSendChat("�� �������� � ��������������� ��������.")
						wait(2000)
						sampSendChat("/b �������� ���-�����.")
					end)
					removeBlip(blip)

					uv1 = {
						false,
						false,
						false
					}

					return false
				end

				if string.find(slot5, "������� � �� {FF6200}�����������", 1, true) then
					lua_thread.create(function ()
						sampSendChat("/do ������� � ����� ������ � �����.")
						wait(2000)
						sampSendChat("/me ����� � ���� �������� ��������")
						wait(2000)
						sampSendChat("/todo � ��������� �� ��� �� ���������.*� �������������� �� ����")
						wait(2000)
						sampSendChat("� ��� ������� �� ���.")
						wait(2000)
						sampSendChat("/b �������� ��������� �� ����� ��� ������� �� �� �� az � ������.")
					end)
					removeBlip(blip)

					uv1 = {
						false,
						false,
						false
					}

					return false
				end

				lua_thread.create(function ()
					sampSendChat("/me ���� ������� �������� �������� � ����� ��������� ���")
					wait(1000)
					sampSendChat("/do ������� � �����.")
					wait(1000)
					sampSendChat("/todo �� � �������.*������� ������� �������")
				end)

				uv1[1] = false

				return false
			end

			if uv1[2] and slot2 == "{BFBBBA}���. �����" and string.match(slot5, "���: (%a+_%a+)") == sampGetPlayerNickname(uv2[1][1].v) then
				if tonumber(string.match(slot5, "{CEAD2A}����������������: (%d+)")) > 5 then
					lua_thread.create(function ()
						sampSendChat("/me ���� ���-����� � �������� ��������")
						wait(2000)
						sampSendChat("/me ����� ��������� ��������")
						wait(2000)
						sampSendChat("/todo � ��������� �� ��� �� ���������.*� �������������� �� ����")
						wait(2000)
						sampSendChat("� ��� � ���-����� �������� ��� �� ������ ����������������.")
						wait(2000)
						sampSendChat("/b ���������� � ��������� � ��������.")
					end)
					removeBlip(blip)

					uv1 = {
						false,
						false,
						false
					}

					return false
				end

				lua_thread.create(function ()
					sampSendChat("/me ���� ���-����� �������� �������� � ����� ��������� �")
					wait(1000)
					sampSendChat("/do ���-����� � �����.")
					wait(1000)
					sampSendChat("/todo �� � �������.*������� ���-����� �������")
				end)

				uv1[2] = false

				return false
			end

			if uv1[3] and slot0 == 1234 and slot2 == "{BFBBBA}��������" then
				lua_thread.create(function ()
					sampSendChat("/me ���� �������� �������� �������� � ����� ��������� ��")
					wait(1000)
					sampSendChat("/do �������� � �����.")
					wait(1000)
					sampSendChat("/todo �� � �������.*������� �������� �������")
				end)

				uv1[3] = false

				return false
			end
		end

		if uv3 ~= -1 and slot0 == 6 and slot2 == "{BFBBBA}�������� ��������" then
			if uv3 > 1 then
				uv3 = uv3 + 1
			end

			sampSendDialogResponse(6, 1, uv3, -1)

			uv3 = -1

			return false
		end

		if uv4 and slot2 == "{BFBBBA}���. �����" and string.match(slot5, "���: (%a+_%a+)") == sampGetPlayerNickname(uv2[2][1].v) then
			if string.find(slot5, "��������� ��������(��)", 1, true) then
				uv3 = 4

				removeBlip(blip)
				lua_thread.create(function ()
					uv0 = 1

					sampSendChat("/me ���� ���-����� �������� �������� � ����� ��������� �")
					wait(2000)
					sampSendChat("/do ���-����� � �����.")
					wait(2000)
					sampSendChat("/todo �� � �������.*������� ���-����� �������")
					wait(2000)
					sampSendChat("/do �� ����� ����� �������� � �����.")
					wait(2000)
					sampSendChat("/me ���� ����� � �������� �������� �� ������")
					wait(2000)
					sampSendChat("/todo ���, �������.*��������� �������� �������� ��������")
					sampSendChat("/givelicense " .. uv1[2][1].v)

					uv0 = 0
				end)
			else
				removeBlip(blip)
				lua_thread.create(function ()
					uv0 = 1

					sampSendChat("/me ���� ���-����� �������� �������� � ����� ��������� �")
					wait(2000)
					sampSendChat("/todo � ��������� � �� ���� ������� ��� �������� �� ������.*������� ���-����� �������")
					wait(2000)
					sampSendChat("�������� � ����� ������ � �������� \"��������� ������\" � ���-�����.")

					uv0 = 0
				end)
			end

			uv4 = false

			return false
		end
	end

	slot32 = true

	function slot7.onSendChat(slot0)
		if uv0[6][15].v and slot0 ~= "((" and slot0 ~= "(" and slot0 ~= ")" and slot0 ~= "))" and slot0 ~= ":D" and slot0 ~= "xD" and slot0 ~= "q" then
			if uv1 == true then
				uv1 = false

				sampSendChat("[" .. u8:decode(uv0[6][14].v) .. "] " .. slot0)

				return false
			else
				uv1 = true
			end
		end
	end

	function slot7.onServerMessage(slot0, slot1)
		if slot0 == -10270721 and string.match(slot1, "%[������%] {FFFFFF}� ����� ������ ��� ���� �������� �� (%A+)!") then
			sampSendChat("� ��� ��� ���� �������� �� " .. string.match(slot1, "%[������%] {FFFFFF}� ����� ������ ��� ���� �������� �� (%A+)!") .. ".")
		end

		if uv0[6][6].v == false and (slot0 == -1 and slot1 == "{DFCFCF}[���������] {DC4747}����� ������� ��������� ������� {DFCFCF}/engine{DC4747} ��� ������� {DFCFCF}N" or slot0 == -1 and slot1 == "{DFCFCF}[���������] {DC4747}��� ���������� ������������� ����������� �������: {DFCFCF}(NUM4/NUM6)" or slot0 == -1 and slot1 == "{DFCFCF}[���������] {DC4747}� ���������� ������������ �����{DFCFCF} [/radio]" or slot0 == -1 and string.find(slot1, "���� ��������� ��������������� �� ������ {9ACD32}%a+_%a+", 1, false) or slot0 == -10270721 and slot1 == "[������] {FFFFFF}����� � ���� ��� ����������!" or slot0 == -1714683649 and slot1 == "����������� /olock ����� ������� ��������������� ���������." or slot0 == 1941201407 and slot1 == "[����������] {FFFFFF}�� ������� ���������� ��� ��" or slot0 == -1800355329 and slot1 == "[����������] {FFFFFF}����� ���������� �� ������ [/unrentcar]" or slot0 == -1800355329 and slot1 == "[����������] {FFFFFF}����� ������� ���������� ����������� [/jlock]" or slot0 == 1941201407 and slot1 == "[����������] {FFFFFF}�� ���������� �� ������ ����������" or slot0 == -1104335361 and slot1 == "�������� ������ �� ������������ �����!") then
			return false
		end

		if uv0[6][7].v == false and (slot0 == -1029514497 and string.find(slot1, " %a+_%a+ �������%(�%) ����� � ����� ���������", 1, false) or slot0 == -1029514497 and string.find(slot1, " %a+_%a+ �������� ������� ���������", 1, false) or slot0 == 1182971135 and string.find(slot1, " ��������� ������� ������� | %-  %a+_%a+ %.", 1, false) or slot0 == 1182971135 and string.find(slot1, "��������� �� ������� | %-  %a+_%a+ %.", 1, false) or slot0 == -1029514497 and string.find(slot1, " %a+_%a+ �������%(�%) ����� �� ����� ���������", 1, false) or slot0 == -1029514497 and string.find(slot1, " %a+_%a+ ��������%(�%) ���������", 1, false)) then
			return false
		end

		if uv0[6][8].v == false and (slot0 == 1687547391 and slot1 == "[���������] {FFFFFF}������ ��������� ��������������� �����:" or slot0 == -1 and slot1 == "{FFFFFF}1.{6495ED} 111 - {FFFFFF}��������� ������ ��������" or slot0 == -1 and slot1 == "{FFFFFF}2.{6495ED} 060 - {FFFFFF}������ ������� �������" or slot0 == -1 and slot1 == "{FFFFFF}3.{6495ED} 911 - {FFFFFF}����������� �������" or slot0 == -1 and slot1 == "{FFFFFF}4.{6495ED} 912 - {FFFFFF}������ ������" or slot0 == -1 and slot1 == "{FFFFFF}5.{6495ED} 913 - {FFFFFF}�����" or slot0 == -1 and slot1 == "{FFFFFF}6.{6495ED} 914 - {FFFFFF}�������" or slot0 == -1 and slot1 == "{FFFFFF}7.{6495ED} 8828 - {FFFFFF}���������� ������������ �����") then
			return false
		end

		if uv0[6][9].v == false and slot0 == -6684673 and string.find(slot1, "%a+_%a+ ������%(�%) .+ �� �������", 1, false) then
			return false
		end

		if uv0[6][10].v == false and slot0 == -89368321 then
			return false
		end

		if uv0[6][11].v == false and slot0 == -2686721 then
			return false
		end

		if uv0[6][12].v == false and slot0 == -1104335361 then
			return false
		end

		if uv0[6][13].v == false and (slot0 == 73381119 or slot0 == "-1" and slot1 == "") then
			return false
		end
	end

	function slot7.onSendCommand(slot0)
		if slot0 == "/reset" then
			thisScript():reload()

			return false
		end

		if slot0 == "/resetpos" then
			uv0[5][10].v = true
			uv1.setting.move = true
			uv2.v = 42
			uv3.v = 482
			uv1.setting.x = 42
			uv1.setting.y = 482

			uv4.save(uv1, uv5)

			uv6 = true

			return false
		end

		if slot0 == "/update" then
			if version ~= thisScript().version then
				sampAddChatMessage("[SMIHelper] {FFFFFF}������ �������� ����������.", 3381759)
				downloadUrlToFile("https://github.com/Tema05/AutoSchool-Instructor/raw/master/AS%20Instructor.luac", thisScript().path, function (slot0, slot1, slot2, slot3)
					if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
						sampAddChatMessage("[SMIHelper] {FFFFFF}�������� ���������� V" .. version .. " ���������.", 3381759)
						thisScript():reload()
					end
				end)
			else
				sampAddChatMessage("[AS Instructor] {FFFFFF}���������� �����������.", 3381759)
			end

			return false
		end

		for slot4 = 1, 8, 1 do
			if slot0 == "/" .. uv1.imgui_open[slot4] then
				imgui_open(slot4)

				return false
			end
		end

		if uv8 == 0 then
			for slot4 = 1, 50, 1 do
				if uv1.binder[slot4 .. "_text"] ~= nil and uv1.binder[slot4 .. "_text"] ~= "" and uv1.binder[slot4 .. "_time"] ~= "" and uv1.binder[slot4 .. "_type"] == 1 and slot0 == uv1.binder[slot4 .. "_act"] then
					lua_thread.create(function ()
						uv0 = 1

						sampSendChat(u8:decode(string.match(uv1.binder[uv2 .. "_text"], "([^&]+)")))

						for slot3 in string.gmatch(uv1.binder[uv2 .. "_text"], "&([^&]+)") do
							wait(tonumber(uv1.binder[uv2 .. "_time"]) * 1000)
							sampSendChat(u8:decode(slot3))
						end

						uv0 = 0
					end)

					return false
				end
			end

			slot1, slot2 = nil

			if tonumber(string.match(slot0, "/.+ (%d+)")) ~= nil and slot1 < 1000 and slot0 == "/" .. uv1.command.invite .. " " .. slot1 then
				if check_rank(9) then
					lua_thread.create(function ()
						uv0 = 1

						sampSendChat("/do ���� �� ���������� � �������.")
						wait(2000)
						sampSendChat("/me ������ ���� �� ���������� �� �������")
						wait(2000)
						sampSendChat("/todo ����� ����������!*������� ���� �������� ��������")
						wait(2000)
						sampSendChat("���������� �� 2 �����.")

						uv0 = 2

						sampSendChat("/invite " .. uv1)

						uv0 = 0

						removeBlip(blip)

						buffer = ""
					end)
				end

				return false
			elseif string.find(slot0, "/" .. uv1.command.invite, 1, true) == 1 then
				sampAddChatMessage("[AS Instructor] {FFFFFF}/" .. uv1.command.invite .. " " .. uv9[3][1], 3381759)

				uv8 = 0

				return false
			end

			if slot1 ~= nil and slot1 < 1000 and slot0 == "/" .. uv1.command.unblacklist .. " " .. slot1 then
				if check_rank(9) then
					lua_thread.create(function ()
						uv0 = 1

						sampSendChat("/do ������� � ����� ������ ����������� � �����.")
						wait(2000)
						sampSendChat("/me ����� � ������ \"׸���� ������\"")
						wait(2000)
						sampSendChat("/do ������ ������.")
						wait(2000)
						sampSendChat("/me ����� �������� �� ������� \"׸���� ������\"")

						uv0 = 2

						sampSendChat("/unblacklist " .. uv1)

						uv0 = 0

						removeBlip(blip)
					end)
				end

				return false
			elseif string.find(slot0, "/" .. uv1.command.unblacklist, 1, true) == 1 then
				sampAddChatMessage("[AS Instructor] {FFFFFF}/" .. uv1.command.unblacklist .. " " .. uv9[3][5], 3381759)

				uv8 = 0

				return false
			end

			if slot1 ~= nil and slot1 < 1000 and slot0 == "/" .. uv1.command.unfwarn .. " " .. slot1 then
				if check_rank(9) then
					lua_thread.create(function ()
						uv0 = 1

						sampSendChat("/do ������� � ����� ������ ����������� � �����.")
						wait(2000)
						sampSendChat("/me ����� � ������ \"��������\"")
						wait(2000)
						sampSendChat("/do ������ ������.")
						wait(2000)
						sampSendChat("/me ���� ������� ���������� � ������� \"��������\"")

						uv0 = 2

						sampSendChat("/unfwarn " .. uv1)

						uv0 = 0

						removeBlip(blip)
					end)
				end

				return false
			elseif string.find(slot0, "/" .. uv1.command.unfwarn, 1, true) == 1 then
				sampAddChatMessage("[AS Instructor] {FFFFFF}/" .. uv1.command.unfwarn .. " " .. uv9[3][7], 3381759)

				uv8 = 0

				return false
			end

			if slot1 ~= nil and slot1 < 1000 and slot0 == "/" .. uv1.command.funmute .. " " .. slot1 then
				if check_rank(9) then
					lua_thread.create(function ()
						uv0 = 2

						sampSendChat("/funmute " .. uv1)

						uv0 = 0

						removeBlip(blip)
					end)
				end

				return false
			elseif string.find(slot0, "/" .. uv1.command.funmute, 1, true) == 1 then
				sampAddChatMessage("[AS Instructor] {FFFFFF}/" .. uv1.command.funmute .. " " .. uv9[3][9], 3381759)

				uv8 = 0

				return false
			end

			slot1, slot2 = string.match(slot0, "/.+ (%d+) (%A+)")

			if tonumber(slot3) ~= nil and slot1 < 1000 and slot0 == "/" .. uv1.command.uninvite .. " " .. slot1 .. " " .. slot2 then
				if check_rank(9) then
					lua_thread.create(function ()
						uv0 = 1

						sampSendChat("/do ������� � ����� ������ ����������� � �����.")
						wait(2000)
						sampSendChat("/me ����� � ������ \"����������\"")
						wait(2000)
						sampSendChat("/do ������ ������.")
						wait(2000)
						sampSendChat("/me ��� ���������� � ������ \"����������\"")

						uv0 = 2

						sampSendChat("/uninvite " .. uv1 .. " " .. uv2)

						uv0 = 0

						removeBlip(blip)
					end)
				end

				return false
			elseif string.find(slot0, "/" .. uv1.command.uninvite, 1, true) == 1 then
				sampAddChatMessage("[AS Instructor] {FFFFFF}/" .. uv1.command.uninvite .. " " .. uv9[3][2], 3381759)

				uv8 = 0

				return false
			end

			if slot1 ~= nil and slot1 < 1000 and slot0 == "/" .. uv1.command.blacklist .. " " .. slot1 .. " " .. slot2 then
				if check_rank(9) then
					lua_thread.create(function ()
						uv0 = 1

						sampSendChat("/do ������� � ����� ������ ����������� � �����.")
						wait(2000)
						sampSendChat("/me ����� � ������ \"׸���� ������\"")
						wait(2000)
						sampSendChat("/do ������ ������.")
						wait(2000)
						sampSendChat("/me ��� ������� � ������ \"׸���� ������\"")

						uv0 = 2

						sampSendChat("/blacklist " .. uv1 .. " " .. uv2)

						uv0 = 0

						removeBlip(blip)
					end)
				end

				return false
			elseif string.find(slot0, "/" .. uv1.command.blacklist, 1, true) == 1 then
				sampAddChatMessage("[AS Instructor] {FFFFFF}/" .. uv1.command.blacklist .. " " .. uv9[3][4], 3381759)

				uv8 = 0

				return false
			end

			if slot1 ~= nil and slot1 < 1000 and slot0 == "/" .. uv1.command.fwarn .. " " .. slot1 .. " " .. slot2 then
				if check_rank(9) then
					lua_thread.create(function ()
						uv0 = 1

						sampSendChat("/do ������� � ����� ������ ����������� � �����.")
						wait(2000)
						sampSendChat("/me ����� � ������ \"��������\"")
						wait(2000)
						sampSendChat("/do ������ ������.")
						wait(2000)
						sampSendChat("/me ����� ������� ���������� � ������� \"��������\"")

						uv0 = 2

						sampSendChat("/fwarn " .. uv1 .. " " .. uv2)

						uv0 = 0

						removeBlip(blip)
					end)
				end

				return false
			elseif string.find(slot0, "/" .. uv1.command.fwarn, 1, true) == 1 then
				sampAddChatMessage("[AS Instructor] {FFFFFF}/" .. uv1.command.fwarn .. " " .. uv9[3][6], 3381759)

				uv8 = 0

				return false
			end

			if slot1 ~= nil and slot1 < 1000 and slot0 == "/" .. uv1.command.fmute .. " " .. slot1 .. " " .. slot2 then
				if check_rank(8) then
					lua_thread.create(function ()
						uv0 = 2

						sampSendChat("/fmute " .. uv1 .. " " .. uv2)

						uv0 = 0

						removeBlip(blip)
					end)
				end

				return false
			elseif string.find(slot0, "/" .. uv1.command.fmute, 1, true) == 1 then
				sampAddChatMessage("[AS Instructor] {FFFFFF}/" .. uv1.command.fmute .. " " .. uv9[3][8], 3381759)

				uv8 = 0

				return false
			end

			if slot1 ~= nil and slot1 < 1000 and slot0 == "/" .. uv1.command.expel .. " " .. slot1 .. " " .. slot2 then
				if check_rank(5) then
					lua_thread.create(function ()
						uv0 = 1

						sampSendChat("/do ����� �� �����.")
						wait(2000)
						sampSendChat("/me ������ ����� � ������ ������ �� ���")
						wait(2000)
						sampSendChat("/do ������ ������ �������� �� �����������.")

						uv0 = 2

						sampSendChat("/expel " .. uv1 .. " " .. uv2)

						uv0 = 0

						removeBlip(blip)
					end)
				end

				return false
			elseif string.find(slot0, "/" .. uv1.command.expel, 1, true) == 1 then
				sampAddChatMessage("[AS Instructor] {FFFFFF}/" .. uv1.command.expel .. " " .. uv9[3][10], 3381759)

				uv8 = 0

				return false
			end

			slot1, slot2 = string.match(slot0, "/.+ (%d+) (%d)")
			slot2 = tonumber(slot4)

			if tonumber(slot3) ~= nil and slot1 < 1000 and slot2 < 10 and slot0 == "/" .. uv1.command.giverank .. " " .. slot1 .. " " .. slot2 then
				if check_rank(9) then
					lua_thread.create(function ()
						uv0 = 1

						sampSendChat("/do ����� ������� � �������.")
						wait(2000)
						sampSendChat("/me ������ �� ������� �������")
						wait(2000)
						sampSendChat("/todo � ����������, ������� ���������*������� ������� ����������")
						wait(2000)
						sampSendChat("����������� �������� � ��� �� ����.")

						uv0 = 2

						sampSendChat("/giverank " .. uv1 .. " " .. uv2)

						uv0 = 0

						removeBlip(blip)
					end)
				end

				return false
			elseif string.find(slot0, "/" .. uv1.command.giverank, 1, true) == 1 then
				sampAddChatMessage("[AS Instructor] {FFFFFF}/" .. uv1.command.giverank .. " " .. uv9[3][3], 3381759)

				uv8 = 0

				return false
			end

			return
		end

		if uv8 ~= 2 then
			slot1 = false

			for slot5 = 1, 10, 1 do
				if string.find(slot0, "/" .. uv1.command[uv9[1][slot5]], 1, true) == 1 then
					slot1 = true
				end
			end

			for slot5 = 1, 50, 1 do
				if uv1.binder[slot5 .. "_text"] ~= nil and uv1.binder[slot5 .. "_text"] ~= "" and uv1.binder[slot5 .. "_time"] ~= "" and uv1.binder[slot5 .. "_type"] == 1 and string.find(slot0, uv1.binder[slot5 .. "_act"], 1, true) == 1 then
					slot1 = true
				end
			end

			if slot1 then
				sampAddChatMessage("[AS Instructor] {FFFFFF}�� ��������.", 3381759)

				return false
			end
		end
	end

	function slot6.OnDrawFrame()
		if uv0.v then
			uv1.SetNextWindowSize(uv2, uv1.Cond.FirstUseEver)

			if uv3 == false then
				uv1.SetNextWindowPos(uv1.ImVec2(uv4.v, uv5.v), uv1.Cond.FirstUseEver)
			else
				uv1.SetNextWindowPos(uv1.ImVec2(uv4.v, uv5.v))

				uv3 = false
			end

			uv1.Begin(uv6[1][uv7], uv0, uv8)

			if uv7 == 1 then
				if uv1.Button(uv6[1][2], uv1.ImVec2(250, 25)) then
					imgui_open(2)
				end

				if uv1.Button(uv6[1][3], uv1.ImVec2(250, 25)) then
					imgui_open(3)
				end

				if uv1.Button(uv6[1][4], uv1.ImVec2(250, 25)) then
					imgui_open(4)
				end

				if uv1.Button(uv6[1][5], uv1.ImVec2(250, 25)) then
					imgui_open(5)
				end

				if uv1.Button(uv6[1][6], uv1.ImVec2(250, 25)) then
					imgui_open(6)
				end

				if uv1.Button(uv6[1][7], uv1.ImVec2(250, 25)) then
					imgui_open(7)
				end

				if uv1.Button(uv6[1][8], uv1.ImVec2(250, 25)) then
					imgui_open(8)
				end

				uv1.Text("AutoSchool Instructor V" .. thisScript().version)
			elseif uv7 == 2 then
				uv1.BeginChild("", uv1.ImVec2(103, 156), true)
				uv1.Text(uv9.ICON_FA_USER_TIMES .. u8(" ������"))
				uv1.Separator()

				if uv1.Selectable(u8("��� ��������")) and check_rank(5) and check_stop() then
					removeBlip(blip)

					uv10 = {
						false,
						false,
						false
					}

					lua_thread.create(function ()
						uv0 = 1

						sampSendChat("/todo � ��������� �� ��� �� ���������.*� �������������� �� ����")
						wait(2000)
						sampSendChat("� ��� ��� ��������.")
						wait(2000)
						sampSendChat("/b �������� ������� � �����.")

						uv0 = 0
					end)
				end

				if uv1.Selectable(u8("��� ���-�����")) and check_rank(5) and check_stop() then
					removeBlip(blip)

					uv10 = {
						false,
						false,
						false
					}

					lua_thread.create(function ()
						uv0 = 1

						sampSendChat("/todo � ��������� �� ��� �� ���������.*� �������������� �� ����")
						wait(2000)
						sampSendChat("� ��� ��� ���-�����.")
						wait(2000)
						sampSendChat("/b �������� ���-����� � ��������.")

						uv0 = 0
					end)
				end

				if uv1.Selectable(u8("����� ���")) and check_rank(5) and check_stop() then
					removeBlip(blip)

					uv10 = {
						false,
						false,
						false
					}

					lua_thread.create(function ()
						uv0 = 1

						sampSendChat("/do ������� � ����� ������ � �����.")
						wait(2000)
						sampSendChat("/me ����� � ���� �������� ��������")
						wait(2000)
						sampSendChat("/todo � ��������� �� ��� �� ���������.*� �������������� �� ����")
						wait(2000)
						sampSendChat("� ��� �������� ���, �������� ��� ��������.")
						wait(2000)
						sampSendChat("/b ������� ��� ����� ���.")

						uv0 = 0
					end)
				end

				uv1.EndChild()
				uv1.SameLine()
				uv1.BeginChild(" ", uv1.ImVec2(216, 156), true)
				uv1.Text(u8("������� id ������:"))
				uv1.SameLine()
				uv1.PushItemWidth(85)
				uv1.InputInt("  ", uv12[1][1])
				uv1.PopItemWidth()

				if uv1.Button(uv9.ICON_FA_PLAY .. u8(" ������ �������������"), uv1.ImVec2(200, 20)) and check_rank(5) and check_stop() then
					if uv12[5][3].v == 1 and uv12[5][4].v ~= "" then
						sampSendChat("������������, ���� ����� " .. u8:decode(uv12[5][4].v) .. ". �� ������ �� �������������?")
					else
						sampSendChat("������������, ���� ����� " .. my_nick .. ". �� ������ �� �������������?")
					end
				end

				if uv1.Button(uv9.ICON_FA_FILE_ALT .. u8(" ��������� ���������"), uv1.ImVec2(200, 20)) and check_rank(5) and check_stop() then
					if uv12[1][1].v > -1 and uv12[1][1].v < 1000 then
						removeBlip(blip)

						uv10 = {
							true,
							true,
							true
						}

						lua_thread.create(function ()
							uv0 = 1

							sampSendChat("�������, ����� �� ���� ������������? �������, ���-����� � ��������.")
							wait(1000)
							sampSendChat("/b ����� �������� ������������ �������: /showpass " .. my_id .. ", /showmc " .. my_id .. ", /showlic " .. my_id .. " �� ��!")

							uv0 = 0
						end)
					else
						sampAddChatMessage("[AS Instructor] {FFFFFF}������� id ������:", 3381759)
					end
				end

				if uv1.Button(uv9.ICON_FA_QUESTION .. u8(" ���������� � ����"), uv1.ImVec2(200, 20)) and check_rank(5) and check_stop() then
					lua_thread.create(function ()
						uv0 = 1

						sampSendChat("������, ������ � ����� ���� ��������.")
						wait(2000)
						sampSendChat("���������� � ����.")

						uv0 = 0
					end)
				end

				if uv1.Button(uv9.ICON_FA_QUESTION .. u8(" ������ ������ ��?"), uv1.ImVec2(200, 20)) and check_rank(5) and check_stop() then
					sampSendChat("������ �� ������ ������ ������ ����?")
				end

				if uv1.Button(uv9.ICON_FA_USER_CHECK .. u8(" ������������� ��������"), uv1.ImVec2(200, 20)) and check_rank(5) and check_stop() then
					removeBlip(blip)

					uv10 = {
						false,
						false,
						false
					}

					sampSendChat("/todo ����������! �� ������ �������������!* � ������� �� ����")

					if uv12[5][5].v == true then
						lua_thread.create(function ()
							wait(250)

							if check_rank(9) then
								if marker_id ~= nil then
									lua_thread.create(function ()
										uv0 = 1

										wait(2000)
										sampSendChat("/do ���� �� ���������� � �������.")
										wait(2000)
										sampSendChat("/me ������ ���� �� ���������� �� �������")
										wait(2000)
										sampSendChat("/todo ����� ����������!*������� ���� �������� ��������")
										wait(2000)
										sampSendChat("���������� �� 2 �����.")

										uv0 = 2

										sampSendChat("/invite " .. marker_id)

										uv0 = 0
									end)
								else
									sampAddChatMessage("[AS Instructor] {FFFFFF}�������� ������.", 3381759)
								end
							end
						end)
					end
				end

				uv1.EndChild()

				if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
					imgui_open(1)
				end
			elseif uv7 == 3 then
				uv1.BeginChild("", uv1.ImVec2(110, 240), true)
				uv1.Separator()
				uv1.TextColored(uv1.ImVec4(1, 0.6, 0.2, 1), u8("����������:"))
				uv1.Separator()

				for slot3 = 1, 2, 1 do
					if uv1.Selectable(uv13[1][slot3]) and check_rank(3) and check_stop() then
						if slot3 == 1 then
							lua_thread.create(function ()
								uv0 = 1

								if uv1[5][3].v == 1 and uv1[5][4].v ~= "" then
									sampSendChat("/do �� ����� ����� ������� � �������� \"" .. rank_name .. " - " .. u8:decode(uv1[5][4].v) .. "\"")
								else
									sampSendChat("/do �� ����� ����� ������� � �������� \"" .. rank_name .. " - " .. my_nick .. "\"")
								end

								wait(1000)
								sampSendChat("������������, ��� � ���� ��� ������?")

								uv0 = 0
							end)
						else
							lua_thread.create(function ()
								uv0 = 1

								sampSendChat("/todo ���, �������.*��������� �����-���� �������� ��������")
								wait(2000)
								sampSendChat("/do � �����-����� ��������:")

								for slot3 = 1, 6, 1 do
									wait(2000)
									sampSendChat("/do �������� �� " .. uv1[2][slot3] .. " - " .. string.gsub(uv2.license[slot3], "&", ".") .. "$")
								end

								uv0 = 0
							end)
						end
					end
				end

				uv1.Separator()
				uv1.TextColored(uv1.ImVec4(1, 0.6, 0.2, 1), u8("��������:"))
				uv1.Separator()

				for slot3 = 3, 9, 1 do
					if uv1.Selectable(uv13[1][slot3]) and check_rank(3) then
						if slot3 ~= 9 then
							uv15[1] = slot3 - 2
						elseif check_stop() then
							sampSendChat("�������� �� ����� ����� �������� ������ � ��������� �. ���-��������.")
						end
					end
				end

				uv1.EndChild()
				uv1.SameLine()
				uv1.BeginChild(" ", uv1.ImVec2(319, 240), true)

				if uv15[1] ~= 0 then
					uv1.Text(u8("������� id ������:"))
					uv1.SameLine()
					uv1.PushItemWidth(90)
					uv1.InputInt("  ", uv12[2][1])
					uv1.PopItemWidth()

					if uv1.Button(uv9.ICON_FA_FILE_SIGNATURE .. u8(" ������� �������� �� " .. string.match(uv13[2][uv15[1]], "([^%d%s%-]+)")), uv1.ImVec2(235, 20)) and check_rank(3) and check_stop() then
						if uv15[1] == 5 then
							uv16 = true

							lua_thread.create(function ()
								uv0 = 1

								sampSendChat("��� ������� �������� �� ������ ���������� �������� ���-�����.")
								wait(1000)
								sampSendChat("/b ����� �������� ���-����� �������: /showmc " .. my_id)

								uv0 = 0
							end)
						elseif uv12[2][1].v > -1 and uv12[2][1].v < 1000 then
							uv17 = uv15[1] - 1

							removeBlip(blip)
							lua_thread.create(function ()
								uv0 = 1

								sampSendChat("/do �� ����� ����� �������� � �����.")
								wait(2000)
								sampSendChat("/me ���� ����� � �������� �������� �� " .. string.match(uv1[2][uv2 + 1], "([^%d%s%-]+)"))
								wait(2000)
								sampSendChat("/todo ���, �������.*��������� �������� �������� ��������")
								sampSendChat("/givelicense " .. uv3[2][1].v)

								uv0 = 0
							end)
						else
							sampAddChatMessage("[AS Instructor] {FFFFFF}������� ���������� id.", 3381759)
						end
					end

					if uv15[1] == 5 and uv1.Button(uv9.ICON_FA_USER_TIMES .. u8(" ��� ���-�����"), uv1.ImVec2(150, 20)) and check_rank(3) and check_stop() then
						removeBlip(blip)
						lua_thread.create(function ()
							uv0 = 1

							sampSendChat("� ��������� � �� ���� ������� ��� �������� �� �����.")
							wait(2000)
							sampSendChat("�������� � ����� ������ ��� ������� ���-�����.")
							wait(1000)
							sampSendChat("/b �������� ���-����� � ��������.")

							uv0 = 0
						end)
					end
				end

				uv1.EndChild()

				if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
					imgui_open(1)
				end
			elseif uv7 == 4 then
				uv1.BeginChild("", uv1.ImVec2(70, 240), true)

				for slot3 = 1, 10, 1 do
					if uv1.Selectable(u8("���� �") .. slot3) then
						for slot7 = 1, 10, 1 do
							if uv14.lecture[slot7 .. "_text"] == "" and slot7 ~= id then
								uv14.lecture[slot7 .. "_text"] = nil
								uv14.lecture[slot7 .. "_time"] = nil
							end
						end

						if uv14.lecture[slot3 .. "_text"] == nil then
							uv14.lecture[slot3 .. "_text"] = ""
							uv14.lecture[slot3 .. "_time"] = 1
						end

						uv18.save(uv14, uv19)

						uv12[3][1].v = tostring(uv14.lecture[slot3 .. "_time"])
						uv12[3][2].v = string.gsub(uv14.lecture[slot3 .. "_text"], "&", "\n")
						uv15[2] = slot3
					end
				end

				uv1.EndChild()
				uv1.SameLine()
				uv1.BeginChild(" ", uv1.ImVec2(359, 240), true)

				if uv15[2] ~= 0 then
					uv1.Text(u8("��������:"))
					uv1.SameLine()
					uv1.PushItemWidth(30)

					if uv1.InputText(u8("������(�) "), uv12[3][1], uv1.InputTextFlags.CharsDecimal) then
						uv14.lecture[uv15[2] .. "_time"] = uv12[3][1].v

						uv18.save(uv14, uv19)
					end

					uv1.PopItemWidth()
					uv1.SameLine(231)

					if uv1.Button(uv9.ICON_FA_TRASH_ALT .. u8(" ������� ������"), uv1.ImVec2(120, 20)) then
						uv14.lecture[uv15[2] .. "_text"] = nil
						uv15[2] = 0
					end

					uv1.Text(u8("������� �����:"))

					if uv1.InputTextMultiline("  ", uv12[3][2], uv1.ImVec2(343, 158)) then
						uv14.lecture[uv15[2] .. "_text"] = string.gsub(uv12[3][2].v, "\n", "&")

						uv18.save(uv14, uv19)
					end

					if uv1.Button(uv9.ICON_FA_MICROPHONE .. u8(" ��������� ������ �") .. uv15[2], uv1.ImVec2(343, 20)) and check_stop() then
						if uv12[3][2].v ~= "" then
							sampSendChat(u8:decode(string.match(uv14.lecture[uv15[2] .. "_text"], "([^&]+)")))
						else
							sampAddChatMessage("[AS Instructor] {FFFFFF}������� �����.", 3381759)
						end

						lua_thread.create(function ()
							uv0 = 1

							for slot3 in string.gmatch(uv1.lecture[uv2[2] .. "_text"], "&([^&]+)") do
								wait(tonumber(uv1.lecture[uv2[2] .. "_time"]) * 1000)
								sampSendChat(u8:decode(slot3))
							end

							uv0 = 0
						end)
					end
				end

				uv1.EndChild()

				if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
					imgui_open(1)
				end
			elseif uv7 == 5 then
				uv1.BeginChild("", uv1.ImVec2(82, 240), true, uv1.WindowFlags.NoScrollbar)

				for slot3 = 1, 10, 1 do
					if uv1.Selectable("/" .. uv14.command[uv20[1][slot3]]) then
						uv12[4][1].v = uv14.command[uv20[1][slot3]]
						uv15[3] = slot3
					end
				end

				uv1.EndChild()
				uv1.SameLine()
				uv1.BeginChild(" ", uv1.ImVec2(347, 240), true)

				if uv15[3] ~= 0 then
					uv1.Text("/")
					uv1.SameLine()
					uv1.InputText("  ", uv12[4][1])

					if uv1.Button(uv9.ICON_FA_SAVE .. u8(" ���������"), uv1.ImVec2(100, 20)) then
						slot0 = true

						for slot4 = 1, 10, 1 do
							if uv12[4][1].v == uv14.command[uv20[1][slot4]] and slot4 ~= uv15[3] then
								slot0 = false
							end
						end

						for slot4 = 1, 8, 1 do
							if uv12[4][1].v == uv14.imgui_open[slot4] then
								slot0 = false
							end
						end

						if slot0 and uv12[4][1].v ~= "reset" and uv12[4][1].v ~= "resetpos" and uv12[4][1].v ~= "update" then
							uv14.command[uv20[1][uv15[3]]] = uv12[4][1].v

							uv18.save(uv14, uv19)
							sampAddChatMessage("[AS Instructor] {FFFFFF}������� {FF9933}/" .. u8:decode(uv12[4][1].v) .. " {FFFFFF}��� " .. uv20[2][uv15[3]] .. " ���������.", 3381759)
						else
							sampAddChatMessage("[AS Instructor] {FFFFFF}������ ������� ��������� � ������ � �� ����� ���������.", 3381759)
						end
					end

					uv1.Text(u8("������� ��� " .. uv20[2][uv15[3]] .. "."))
					uv1.Text(u8("������: /") .. uv14.command[uv20[1][uv15[3]]] .. " " .. u8(uv20[3][uv15[3]]))
				end

				uv1.EndChild()

				if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
					imgui_open(1)
				end
			elseif uv7 == 6 then
				uv1.BeginMenuBar()

				if uv1.MenuItem(u8("���������")) then
					uv21[1] = 1
				end

				uv1.Text("|")

				if uv1.MenuItem(u8("�����.")) then
					uv21[1] = 2
				end

				uv1.Text("|")

				if uv1.MenuItem(u8("��������")) then
					uv21[1] = 3
				end

				uv1.Text("|")

				if uv1.MenuItem(u8("���� �������� �������")) then
					uv12[5][2].v = GetNameKeysToNumber("setting", "menu")
					uv21[1] = 4
				end

				uv1.Text("|")

				if uv1.MenuItem(u8("������")) then
					uv21[1] = 5
				end

				uv1.EndMenuBar()

				if uv21[1] == 0 then
					uv1.BeginChild("", uv1.ImVec2(434, 220), true)
					uv1.EndChild()
				elseif uv21[1] == 1 then
					uv1.BeginChild("", uv1.ImVec2(124, 220), true)

					for slot3 = 1, 8, 1 do
						if uv1.Selectable(uv6[1][slot3]) then
							uv12[5][1].v = uv14.imgui_open[slot3]
							uv12[5][2].v = GetNameKeysToNumber("imgui_open", slot3 .. "_b")
							uv15[4] = slot3
						end
					end

					uv1.EndChild()
					uv1.SameLine()
					uv1.BeginChild(" ", uv1.ImVec2(305, 220), true)

					if uv15[4] ~= 0 then
						uv1.Text(uv6[1][uv15[4]])
						uv1.Text(u8("������� �������:"))
						uv1.Text("/")
						uv1.SameLine()
						uv1.InputText("  ", uv12[5][1])

						if uv1.Button(uv9.ICON_FA_SAVE .. u8(" ���������"), uv1.ImVec2(100, 20)) then
							if uv12[5][1].v ~= "" then
								slot0 = true

								for slot4 = 1, 10, 1 do
									if uv12[5][1].v == uv14.command[uv20[1][slot4]] then
										slot0 = false
									end
								end

								for slot4 = 1, 8, 1 do
									if uv12[5][1].v == uv14.imgui_open[slot4] and slot4 ~= uv15[4] then
										slot0 = false
									end
								end

								for slot4 = 1, 50, 1 do
									if uv14.binder[slot4 .. "_act"] ~= nil and "/" .. uv12[5][1].v == uv14.binder[slot4 .. "_act"] then
										slot0 = false
									end
								end

								if slot0 and uv12[5][1].v ~= "reset" and uv12[5][1].v ~= "resetpos" and uv12[5][1].v ~= "update" then
									uv14.imgui_open[uv15[4]] = uv12[5][1].v

									uv18.save(uv14, uv19)
									sampAddChatMessage("[AS Instructor] {FFFFFF}������� {FF9933}/" .. u8:decode(uv12[5][1].v) .. " {FFFFFF}��� �������� " .. uv6[2][uv15[4]] .. " ���������.", 3381759)
								else
									sampAddChatMessage("[AS Instructor] {FFFFFF}������ ������� ��������� � ������ � �� ����� ���������.", 3381759)
								end
							else
								sampAddChatMessage("[AS Instructor] {FFFFFF}������� �������.", 3381759)
							end
						end

						uv1.Text(u8("������:"))
						uv1.TextColored(uv1.ImVec4(1, 0.6, 0.2, 1), uv12[5][2].v)

						if uv1.Button(uv9.ICON_FA_PEN .. u8(" ��������"), uv1.ImVec2(100, 20)) then
							uv1.OpenPopup("Activate")
						end

						if uv1.BeginPopup("Activate") then
							uv1.Text(u8("������� ������ ������."))
							uv1.Text(u8("������:"))
							uv1.SameLine()
							uv1.TextColored(uv1.ImVec4(1, 0.6, 0.2, 1), GetPressedKeysName())

							if uv1.Button(uv9.ICON_FA_TIMES_CIRCLE .. u8(" �������"), uv1.ImVec2(100, 20)) then
								uv1.CloseCurrentPopup()
							end

							uv1.SameLine()

							if uv1.Button(" " .. uv9.ICON_FA_SAVE .. u8(" ��������� "), uv1.ImVec2(100, 20)) then
								if GetPressedKeysNumber() ~= "" then
									slot0 = true

									for slot4 = 1, 8, 1 do
										if GetPressedKeysNumber() == uv14.imgui_open[slot4 .. "_b"] and slot4 ~= uv15[4] then
											slot0 = false
										end
									end

									for slot4 = 1, 50, 1 do
										if uv14.binder[slot4 .. "_act"] ~= nil and GetPressedKeysNumber() == uv14.binder[slot4 .. "_act"] then
											slot0 = false
										end
									end

									if slot0 and GetPressedKeysNumber() ~= uv14.setting.menu then
										uv12[5][2].v = GetPressedKeysName()
										uv14.imgui_open[uv15[4] .. "_b"] = GetPressedKeysNumber()

										uv18.save(uv14, uv19)
										sampAddChatMessage("[AS Instructor] {FFFFFF}������ {FF9933}" .. uv12[5][2].v .. " {FFFFFF}��� �������� " .. uv6[2][uv15[4]] .. " ���������", 3381759)
										uv1.CloseCurrentPopup()
									else
										sampAddChatMessage("[AS Instructor] {FFFFFF}������ ������ ��� ������������ � �� ����� ���������.", 3381759)
									end
								else
									sampAddChatMessage("[AS Instructor] {FFFFFF}������� �� ������ ������.", 3381759)
								end
							end

							uv1.EndPopup()
						end

						uv1.SameLine()

						if uv1.Button(uv9.ICON_FA_TRASH_ALT .. u8(" �������"), uv1.ImVec2(100, 20)) then
							uv12[5][2].v = ""
							uv14.imgui_open[uv15[4] .. "_b"] = ""

							uv18.save(uv14, uv19)
						end
					end

					uv1.EndChild()
				elseif uv21[1] == 2 then
					uv1.BeginChild("", uv1.ImVec2(434, 220), true)
					uv1.Text(u8("��� � �����������:"))

					slot3 = {
						u8("��� ��� �� �������"),
						u8("��� � ������ ����")
					}

					if uv1.Combo(" ", uv12[5][3], slot3, 2) then
						uv14.setting.type_name = uv12[5][3].v

						uv18.save(uv14, uv19)
					end

					if uv12[5][3].v == 1 then
						uv1.Text(u8("���� ���: (������: ���� �������)"))

						if uv1.InputText("  ", uv12[5][4]) then
							uv14.setting.name = uv12[5][4].v

							uv18.save(uv14, uv19)
						end
					end

					if uv1.ToggleButton(u8("������������� ���������."), uv12[5][5]) then
						uv14.setting.auto_invite = uv12[5][5].v

						uv18.save(uv14, uv19)
					end

					uv1.SameLine()
					uv1.Text(u8("������������� ���������."))

					if uv1.ToggleButton(u8("������ � ��� � ���������."), uv12[5][6]) then
						uv14.setting.find = uv12[5][6].v

						uv18.save(uv14, uv19)
					end

					uv1.SameLine()
					uv1.Text(u8("������ � ��� � ���������."))

					if uv1.ToggleButton(u8("������ ��� ���������� �������."), uv12[5][7]) then
						removeBlip(blip)

						buffer = ""
						uv14.setting.marker = uv12[5][7].v

						uv18.save(uv14, uv19)
					end

					uv1.SameLine()
					uv1.Text(u8("������ ��� ���������� �������."))
					uv1.EndChild()
				elseif uv21[1] == 3 then
					uv1.BeginChild("", uv1.ImVec2(434, 220), true)
					uv1.Text(u8("��� � �����������:"))

					slot3 = {
						u8("��� ��� �� �������"),
						u8("��� � ������ ����")
					}

					if uv1.Combo(" ", uv12[5][3], slot3, 2) then
						uv14.setting.type_name = uv12[5][3].v

						uv18.save(uv14, uv19)
					end

					if uv12[5][3].v == 1 then
						uv1.Text(u8("���� ���: (������: ���� �������)"))

						if uv1.InputText("  ", uv12[5][4]) then
							uv14.setting.name = uv12[5][4].v

							uv18.save(uv14, uv19)
						end
					end

					uv1.Text(u8("�����-����:"))

					if uv1.Combo("   ", uv12[5][8], uv22[1], 6) then
						uv12[5][9].v = string.gsub(uv14.license[uv12[5][8].v + 1], "&", ".")
					end

					uv1.Text(u8("����:"))
					uv1.SameLine()
					uv1.PushItemWidth(55)

					if uv1.InputText("    ", uv12[5][9], uv1.InputTextFlags.CharsDecimal) then
						uv14.license[uv12[5][8].v + 1] = string.gsub(uv12[5][9].v, "%.", "&")

						uv18.save(uv14, uv19)
					end

					uv1.PopItemWidth()
					uv1.EndChild()
				elseif uv21[1] == 4 then
					uv1.BeginChild("", uv1.ImVec2(434, 220), true)
					uv1.Text(u8("��������� ���� �������� �������:"))
					uv1.Text(u8("������� ��� ������ �� ������ � ������� ������ �����������������"))
					uv1.Text(u8("� �������"))
					uv1.SameLine()
					uv1.TextColored(uv1.ImVec4(1, 0.6, 0.2, 1), uv12[5][2].v)

					if uv1.Button(uv9.ICON_FA_PEN .. u8(" ��������"), uv1.ImVec2(100, 20)) then
						uv1.OpenPopup("Activate")
					end

					if uv1.BeginPopup("Activate") then
						uv1.Text(u8("������� ������ ������."))
						uv1.Text(u8("������:"))
						uv1.SameLine()
						uv1.TextColored(uv1.ImVec4(1, 0.6, 0.2, 1), GetPressedKeysName())

						if uv1.Button(uv9.ICON_FA_TIMES_CIRCLE .. u8(" �������"), uv1.ImVec2(100, 20)) then
							uv1.CloseCurrentPopup()
						end

						uv1.SameLine()

						if uv1.Button(" " .. uv9.ICON_FA_SAVE .. u8(" ��������� "), uv1.ImVec2(100, 20)) then
							if GetPressedKeysNumber() ~= "" then
								slot0 = true

								for slot4 = 1, 8, 1 do
									if GetPressedKeysNumber() == uv14.imgui_open[slot4 .. "_b"] then
										slot0 = false
									end
								end

								for slot4 = 1, 50, 1 do
									if uv14.binder[slot4 .. "_act"] ~= nil and GetPressedKeysNumber() == uv14.binder[slot4 .. "_act"] then
										slot0 = false
									end
								end

								if slot0 then
									uv12[5][2].v = GetPressedKeysName()
									uv14.setting.menu = GetPressedKeysNumber()

									uv18.save(uv14, uv19)
									sampAddChatMessage("[AS Instructor] {FFFFFF}������ {FF9933}" .. uv12[5][2].v .. " {FFFFFF}��� �������� ���� �������� ������� ���������", 3381759)
									uv1.CloseCurrentPopup()
								else
									sampAddChatMessage("[AS Instructor] {FFFFFF}������ ������ ��� ������������ � �� ����� ���������.", 3381759)
								end
							else
								sampAddChatMessage("[AS Instructor] {FFFFFF}������� �� ������ ������.", 3381759)
							end
						end

						uv1.EndPopup()
					end

					uv1.SameLine()

					if uv1.Button(uv9.ICON_FA_TRASH_ALT .. u8(" �������"), uv1.ImVec2(100, 20)) then
						uv12[5][2].v = ""
						uv14.setting.menu = ""

						uv18.save(uv14, uv19)
					end

					uv1.EndChild()
				elseif uv21[1] == 5 then
					uv1.BeginChild("", uv1.ImVec2(434, 220), true)

					if uv1.ToggleButton(u8("����������� ����������� ���� �������."), uv12[5][10]) then
						uv14.setting.move = uv12[5][10].v

						uv18.save(uv14, uv19)

						if uv12[5][10].v == true then
							uv8 = uv1.WindowFlags.NoResize + uv1.WindowFlags.MenuBar
						else
							uv8 = uv1.WindowFlags.NoResize + uv1.WindowFlags.MenuBar + uv1.WindowFlags.NoMove
							uv3 = true
						end
					end

					uv1.SameLine()
					uv1.Text(u8("����������� ����������� ���� �������."))
					uv1.Text(u8("������� ����: (� ��������)"))
					uv1.Text(u8("������ �� ������ ����:"))

					if uv1.Button("-", uv1.ImVec2(20, 20)) then
						uv4.v = uv4.v - 1
					end

					uv1.SameLine(28)
					uv1.PushItemWidth(378)
					uv1.SliderInt(" ", uv4, 1, uv23)
					uv1.SameLine(406)
					uv1.PopItemWidth()

					if uv1.Button("+", uv1.ImVec2(20, 20)) then
						uv4.v = uv4.v + 1
					end

					uv1.Text(u8("������ �� �������� ����:"))

					if uv1.Button(" - ", uv1.ImVec2(20, 20)) then
						uv5.v = uv5.v - 1
					end

					uv1.SameLine(28)
					uv1.PushItemWidth(378)
					uv1.SliderInt("  ", uv5, 1, uv24)
					uv1.SameLine(406)
					uv1.PopItemWidth()

					if uv1.Button(" + ", uv1.ImVec2(20, 20)) then
						uv5.v = uv5.v + 1
					end

					if uv1.Button(uv9.ICON_FA_SAVE .. u8(" ���������"), uv1.ImVec2(100, 20)) then
						uv14.setting.x = uv4.v
						uv14.setting.y = uv5.v

						uv18.save(uv14, uv19)

						uv3 = true

						sampAddChatMessage("[AS Instructor] {FFFFFF}����� ������� ������� ���������.", 3381759)
						sampAddChatMessage("[AS Instructor] {FFFFFF}���-�� �������� ��������� ������� ������� {FF9933}/resetpos", 3381759)
					end

					uv1.EndChild()
				end

				if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
					imgui_open(1)
				end
			elseif uv7 == 7 then
				uv1.BeginMenuBar()

				if uv1.MenuItem(u8("������")) then
					uv21[2] = 1
				end

				uv1.Text("|")

				if uv1.MenuItem(u8("���")) then
					uv21[2] = 2
				end

				uv1.Text("|")

				if uv1.MenuItem(u8("������")) then
					uv21[2] = 3
				end

				uv1.EndMenuBar()

				if uv21[2] == 0 then
					uv1.BeginChild("", uv1.ImVec2(434, 220), true)
					uv1.EndChild()
				elseif uv21[2] == 1 then
					uv1.BeginChild("", uv1.ImVec2(70, 220), true, uv1.WindowFlags.NoScrollbar)

					for slot3 = 1, 50, 1 do
						if uv1.Selectable(u8("���� �") .. slot3) then
							for slot7 = 1, 50, 1 do
								if uv14.binder[slot7 .. "_text"] == "" and slot7 ~= slot3 then
									uv14.binder[slot7 .. "_text"] = nil
									uv14.binder[slot7 .. "_time"] = nil
									uv14.binder[slot7 .. "_type"] = nil
									uv14.binder[slot7 .. "_act"] = nil
								end
							end

							if uv14.binder[slot3 .. "_text"] == nil then
								uv14.binder[slot3 .. "_text"] = ""
								uv14.binder[slot3 .. "_time"] = 1
								uv14.binder[slot3 .. "_type"] = -1
								uv14.binder[slot3 .. "_act"] = ""
							end

							uv18.save(uv14, uv19)

							uv12[6][1].v = string.gsub(tostring(uv14.binder[slot3 .. "_text"]), "&", "\n")
							uv12[6][2].v = tostring(uv14.binder[slot3 .. "_time"])
							uv12[6][3].v = uv14.binder[slot3 .. "_type"]

							if uv14.binder[slot3 .. "_type"] == -1 then
								uv12[6][4].v = ""
							elseif uv14.binder[slot3 .. "_type"] == 0 then
								uv12[6][4].v = GetNameKeysToNumber("binder", slot3 .. "_act")
							else
								uv12[6][4].v = uv14.binder[slot3 .. "_act"]
							end

							uv15[5] = slot3
						end
					end

					uv1.EndChild()
					uv1.SameLine()
					uv1.BeginChild(" ", uv1.ImVec2(359, 220), true)

					if uv15[5] ~= 0 then
						uv1.Text(u8("���������:"))
						uv1.SameLine()
						uv1.TextColored(uv1.ImVec4(1, 0.6, 0.2, 1), uv12[6][4].v)
						uv1.SameLine(231)

						if uv1.Button(uv9.ICON_FA_PEN .. u8(" ��������"), uv1.ImVec2(120, 20)) then
							uv1.OpenPopup("Activate")
						end

						if uv1.BeginPopup("Activate") then
							if uv14.binder[uv15[5] .. "_type"] == -1 then
								uv1.BeginChild("   ", uv1.ImVec2(205, 20), false)
							elseif uv14.binder[uv15[5] .. "_type"] == 0 then
								uv1.BeginChild("   ", uv1.ImVec2(205, 80), false)
							else
								uv1.BeginChild("   ", uv1.ImVec2(205, 86), false)
							end

							uv1.PushItemWidth(205)

							slot3 = {
								u8("��������� �� ������"),
								u8("��������� �� �������")
							}

							if uv1.Combo("  ", uv12[6][3], slot3, 2) then
								uv14.binder[uv15[5] .. "_type"] = uv12[6][3].v
							end

							uv1.PopItemWidth()

							if uv14.binder[uv15[5] .. "_type"] ~= -1 then
								if uv14.binder[uv15[5] .. "_type"] == 0 then
									uv1.Text(u8("������� �� ������ ������."))
									uv1.Text(u8("������:"))
									uv1.SameLine()
									uv1.TextColored(uv1.ImVec4(1, 0.6, 0.2, 1), GetPressedKeysName())

									if uv1.Button(uv9.ICON_FA_TIMES_CIRCLE .. u8(" �������"), uv1.ImVec2(100, 20)) then
										uv1.CloseCurrentPopup()
									end

									uv1.SameLine()

									if uv1.Button(uv9.ICON_FA_SAVE .. u8(" ���������"), uv1.ImVec2(100, 20)) then
										if GetPressedKeysNumber() ~= "" then
											slot0 = true

											for slot4 = 1, 8, 1 do
												if GetPressedKeysNumber() == uv14.imgui_open[slot4 .. "_b"] then
													slot0 = false
												end
											end

											for slot4 = 1, 50, 1 do
												if uv14.binder[slot4 .. "_act"] ~= nil and GetPressedKeysNumber() == uv14.binder[slot4 .. "_act"] and slot4 ~= uv15[5] then
													slot0 = false
												end
											end

											if slot0 and uv14.setting.menu then
												uv12[6][4].v = GetPressedKeysName()
												uv14.binder[uv15[5] .. "_act"] = GetPressedKeysNumber()

												uv18.save(uv14, uv19)
												sampAddChatMessage("[AS Instructor] {FFFFFF}������ {FF9933}" .. uv12[6][4].v .. " {FFFFFF}��� ��������� ����� �" .. uv15[5] .. " ���������.", 3381759)
												uv1.CloseCurrentPopup()
											else
												sampAddChatMessage("[AS Instructor] {FFFFFF}������ ������ ��� ������������ � �� ����� ���������.", 3381759)
											end
										else
											sampAddChatMessage("[AS Instructor] {FFFFFF}������� �� ������ ������.", 3381759)
										end
									end
								else
									uv1.Text(u8("������� �������:"))
									uv1.Text("/")
									uv1.SameLine()
									uv1.PushItemWidth(196)
									uv1.InputText("    ", uv12[6][5])
									uv1.PopItemWidth()

									if uv1.Button(uv9.ICON_FA_TIMES_CIRCLE .. u8(" �������"), uv1.ImVec2(100, 20)) then
										uv1.CloseCurrentPopup()
									end

									uv1.SameLine()

									if uv1.Button(uv9.ICON_FA_SAVE .. u8(" ���������"), uv1.ImVec2(100, 20)) then
										if uv12[6][5].v ~= "" then
											slot0 = true

											for slot4 = 1, 10, 1 do
												if uv12[6][5].v == uv14.command[uv20[1][slot4]] then
													slot0 = false
												end
											end

											for slot4 = 1, 8, 1 do
												if uv12[6][5].v == uv14.imgui_open[slot4] then
													slot0 = false
												end
											end

											for slot4 = 1, 50, 1 do
												if uv14.binder[slot4 .. "_act"] ~= nil and "/" .. uv12[6][5].v == uv14.binder[slot4 .. "_act"] and slot4 ~= uv15[5] then
													slot0 = false
												end
											end

											if slot0 and uv12[6][5].v ~= "reset" and uv12[6][5].v ~= "resetpos" and uv12[6][5].v ~= "update" then
												uv12[6][4].v = "/" .. uv12[6][5].v
												uv14.binder[uv15[5] .. "_act"] = uv12[6][4].v

												uv18.save(uv14, uv19)
												sampAddChatMessage("[AS Instructor] {FFFFFF}������� {FF9933}" .. uv12[6][4].v .. " {FFFFFF}��� ��������� ����� �" .. uv15[5] .. " ���������.", 3381759)
												uv1.CloseCurrentPopup()
											else
												sampAddChatMessage("[AS Instructor] {FFFFFF}������ ������� ��������� � ������ � �� ����� ���������.", 3381759)
											end
										else
											sampAddChatMessage("[AS Instructor] {FFFFFF}������� �������.", 3381759)
										end
									end
								end
							end

							uv1.EndChild()
							uv1.EndPopup()
						end

						uv1.Text(u8("��������:"))
						uv1.SameLine()
						uv1.PushItemWidth(30)

						if uv1.InputText(u8("������(�)"), uv12[6][2], uv1.InputTextFlags.CharsDecimal) then
							uv14.binder[uv15[5] .. "_time"] = uv12[6][2].v

							uv18.save(uv14, uv19)
						end

						uv1.PopItemWidth()
						uv1.SameLine(231)

						if uv1.Button(uv9.ICON_FA_TRASH_ALT .. u8(" ������� ����"), uv1.ImVec2(120, 20)) and check_stop() then
							uv14.binder[uv15[5] .. "_text"] = nil
							uv14.binder[uv15[5] .. "_time"] = nil
							uv14.binder[uv15[5] .. "_type"] = nil
							uv14.binder[uv15[5] .. "_act"] = nil

							uv18.save(uv14, uv19)

							uv15[5] = 0
						end

						uv1.Text(u8("������� �����:"))

						if uv1.InputTextMultiline("     ", uv12[6][1], uv1.ImVec2(343, 137)) then
							uv14.binder[uv15[5] .. "_text"] = string.gsub(uv12[6][1].v, "\n", "&")

							uv18.save(uv14, uv19)
						end
					end

					uv1.EndChild()
				elseif uv21[2] == 2 then
					uv1.BeginChild("", uv1.ImVec2(434, 220), true, uv1.WindowFlags.NoScrollbar)

					if uv1.Button(u8("�������� ���"), uv1.ImVec2(100, 20)) then
						if uv12[6][13].v == true then
							for slot3 = 1, 100, 1 do
								sampAddChatMessage("", -1)
							end
						else
							uv12[6][13].v = true

							for slot3 = 1, 100, 1 do
								sampAddChatMessage("", -1)
							end

							uv12[6][13].v = false
						end
					end

					if uv1.ToggleButton("��������� ��� ������� � ������.", uv12[6][6]) then
						uv14.chat[1] = uv12[6][6].v

						uv18.save(uv14, uv19)
					end

					uv1.SameLine()
					uv1.Text(u8("��������� ��� ������� � ������."))

					if uv1.ToggleButton("��������� ���������/������.", uv12[6][7]) then
						uv14.chat[2] = uv12[6][7].v

						uv18.save(uv14, uv19)
					end

					uv1.SameLine()
					uv1.Text(u8("��������� ���������/������."))

					if uv1.ToggleButton("��������� ��� ������ ������ ��������.", uv12[6][8]) then
						uv14.chat[3] = uv12[6][8].v

						uv18.save(uv14, uv19)
					end

					uv1.SameLine()
					uv1.Text(u8("��������� ��� ������ ������ ��������."))

					if uv1.ToggleButton("��������� �������� ��������.", uv12[6][9]) then
						uv14.chat[4] = uv12[6][9].v

						uv18.save(uv14, uv19)
					end

					uv1.SameLine()
					uv1.Text(u8("��������� �������� ��������."))

					if uv1.ToggleButton("��������� �� �������.", uv12[6][10]) then
						uv14.chat[5] = uv12[6][10].v

						uv18.save(uv14, uv19)
					end

					uv1.SameLine()
					uv1.Text(u8("��������� �� �������."))

					if uv1.ToggleButton("��������� �������������.", uv12[6][11]) then
						uv14.chat[6] = uv12[6][11].v

						uv18.save(uv14, uv19)
					end

					uv1.SameLine()
					uv1.Text(u8("��������� �������������."))

					if uv1.ToggleButton("������� �������� ���������.", uv12[6][12]) then
						uv14.chat[7] = uv12[6][12].v

						uv18.save(uv14, uv19)
					end

					uv1.SameLine()
					uv1.Text(u8("������� �������� ���������."))

					if uv1.ToggleButton("��������������� �������.", uv12[6][13]) then
						uv14.chat[8] = uv12[6][13].v

						uv18.save(uv14, uv19)
					end

					uv1.SameLine()
					uv1.Text(u8("��������������� �������."))
					uv1.EndChild()
				elseif uv21[2] == 3 then
					uv1.BeginChild("", uv1.ImVec2(434, 220), true, uv1.WindowFlags.NoScrollbar)
					uv1.Text(u8("������� ������:"))
					uv1.Text("[")
					uv1.SameLine()

					if uv1.InputText("]", uv12[6][14]) then
						uv14.setting.akcent_text = uv12[6][14].v

						uv18.save(uv14, uv19)
					end

					if uv1.ToggleButton("�������� ������.", uv12[6][15]) then
						uv14.setting.akcent = uv12[6][15].v

						uv18.save(uv14, uv19)
					end

					uv1.SameLine()
					uv1.Text(u8("�������� ������."))
					uv1.EndChild()
				end

				if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
					imgui_open(1)
				end
			elseif uv7 == 8 then
				uv1.BeginChild("", uv1.ImVec2(434, 240), true)

				if uv1.Button(u8("��������� ����������"), uv1.ImVec2(150, 20)) then
					sampAddChatMessage("[AS Instructor] {FFFFFF}�������� ����������.", 3381759)
					downloadUrlToFile("https://raw.githubusercontent.com/Tema05/AutoSchool-Instructor/master/AS%20Instructor.json", "moonloader\\AS Instructor.json", function (slot0, slot1, slot2, slot3)
						if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
							if doesFileExist("moonloader\\AS Instructor.json") then
								file = io.open("moonloader\\AS Instructor.json")
								slot4 = decodeJson(file:read("*a"))

								file:close()

								version = slot4.version
								text_update = slot4.text_update

								os.remove("moonloader\\AS Instructor.json")
								sampAddChatMessage("[AS Instructor] {FFFFFF}�������� ���������.", 3381759)

								if version ~= thisScript().version then
									sampAddChatMessage("[AS Instructor] {FFFFFF}���������� ���������� � ������ {3399FF}V" .. thisScript().version .. " {FFFFFF}�� ������ {3399FF}V" .. version, 3381759)
									sampAddChatMessage("[AS Instructor] {FFFFFF}������ ��������� �� ������ ���������� � ������� \"����������\"", 3381759)
									sampAddChatMessage("[AS Instructor] {FFFFFF}����� ��������� ���������� ������� ������� {FF9933}/update", 3381759)
									sampShowDialog(10003, "{3399FF}AutoSchool Instructor V" .. thisScript().version, "{FFFFFF}���������� ���������� � ������ {3399FF}V" .. thisScript().version .. " {FFFFFF}�� ������ {3399FF}V" .. version .. [[
{FFFFFF}
������ ��������� �� ������ ���������� � ������� "����������"
����� ��������� ���������� ������� ������� {FF9933}/update
{FFFFFF}��� ������� ������ "���������"]], "���������", "��", 0)
								else
									sampAddChatMessage("[AS Instructor] {FFFFFF}���������� �����������.", 3381759)
								end
							else
								sampAddChatMessage("[AS Instructor] {FFFFFF}�� ���������� ��������� ����������.", 3381759)
								sampShowDialog(10004, "{3399FF}AutoSchool Instructor V" .. thisScript().version, [[
{FFFFFF}�� ���������� ��������� ����������.
���������� ��������� ��������:
{3399FF}1. {FFFFFF}��������� ���������� � ����������.
{3399FF}2. {FFFFFF}���������� ��������� ���������� ��� ���.
{3399FF}3. {FFFFFF}������������� ������ � ���������� ��� ���.
{3399FF}4. {FFFFFF}����������� ��������� ���������� �����.
{3399FF}5. {FFFFFF}�������������� ������.]], "��", "", 0)
							end
						end
					end)
				end

				uv1.Text(u8("������ �������: V") .. thisScript().version)
				uv1.Text(text_update)
				uv1.EndChild()

				if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
					imgui_open(1)
				end
			elseif uv7 == 9 then
				if uv15[6] == 0 then
					if uv1.Button(uv9.ICON_FA_HANDSHAKE .. u8(" ���������������� ������"), uv1.ImVec2(250, 20)) and check_rank(3) and check_stop() then
						imgui_open(9)
						lua_thread.create(function ()
							uv0 = 1

							if uv1[5][3].v == 1 and uv1[5][4].v ~= "" then
								sampSendChat("/do �� ����� ����� ������� � �������� \"" .. rank_name .. " - " .. u8:decode(uv1[5][4].v) .. "\"")
							else
								sampSendChat("/do �� ����� ����� ������� � �������� \"" .. rank_name .. " - " .. my_nick .. "\"")
							end

							wait(1000)
							sampSendChat("������������, ��� � ���� ��� ������?")

							uv0 = 0
						end)
					end

					if uv1.Button(uv9.ICON_FA_FILE_ALT .. u8(" �������� �����-����"), uv1.ImVec2(250, 20)) and check_rank(3) and check_stop() then
						imgui_open(9)
						lua_thread.create(function ()
							uv0 = 1

							sampSendChat("/todo ���, �������.*��������� �����-���� �������� ��������")
							wait(2000)
							sampSendChat("/do � �����-����� ��������:")

							for slot3 = 1, 6, 1 do
								wait(2000)
								sampSendChat("/do �������� �� " .. uv1[2][slot3] .. " - " .. string.gsub(uv2.license[slot3], "&", ".") .. "$")
							end

							uv0 = 0
						end)
					end

					if uv1.Button(uv9.ICON_FA_FILE_SIGNATURE .. u8(" ������� �������� ������"), uv1.ImVec2(250, 20)) then
						uv12[7][1].v = 0
						uv15[6] = 1
					end

					if uv1.Button(uv9.ICON_FA_USER_PLUS .. u8(" ������� � �����������"), uv1.ImVec2(250, 20)) then
						imgui_open(9)
						sampSendChat("/" .. uv14.command.uninvite .. " " .. marker_id)
					end

					if uv1.Button(uv9.ICON_FA_USER_MINUS .. u8(" ������� �� �����������"), uv1.ImVec2(250, 20)) then
						for slot3 = 1, 3, 1 do
							uv12[7][slot3].v = 0
						end

						uv15[6] = 2
					end

					if uv1.Button(uv9.ICON_FA_SORT_AMOUNT_UP .. u8(" ������ ���������"), uv1.ImVec2(250, 20)) then
						uv12[7][1].v = 0
						uv15[6] = 3
					end

					if uv1.Button(uv9.ICON_FA_USER_TIMES .. u8(" ������� � ������ ������"), uv1.ImVec2(250, 20)) then
						uv12[7][1].v = 0
						uv15[6] = 4
					end

					if uv1.Button(uv9.ICON_FA_USER_CHECK .. u8(" ������ �� ������� ������"), uv1.ImVec2(250, 20)) then
						imgui_open(9)
						sampSendChat("/" .. uv14.command.unblacklist .. " " .. marker_id)
					end

					if uv1.Button(uv9.ICON_FA_THUMBS_DOWN .. u8(" ���� ������� ����������"), uv1.ImVec2(250, 20)) then
						uv12[7][1].v = 0
						uv15[6] = 5
					end

					if uv1.Button(uv9.ICON_FA_THUMBS_UP .. u8(" ����� ������� ����������"), uv1.ImVec2(250, 20)) then
						imgui_open(9)
						sampSendChat("/" .. uv14.command.unfwarn .. " " .. marker_id)
					end

					if uv1.Button(uv9.ICON_FA_MICROPHONE_SLASH .. u8(" ���� ��� ����������"), uv1.ImVec2(250, 20)) then
						uv12[7][1].v = 0
						uv15[6] = 6
					end

					if uv1.Button(uv9.ICON_FA_MICROPHONE .. u8(" ����� ��� ����������"), uv1.ImVec2(250, 20)) then
						imgui_open(9)
						sampSendChat("/" .. uv14.command.funmute .. " " .. marker_id)
					end

					if uv1.Button(uv9.ICON_FA_USER_SLASH .. u8(" ������� �� �����������"), uv1.ImVec2(250, 20)) then
						uv12[7][1].v = 0
						uv15[6] = 7
					end
				elseif uv15[6] == 1 then
					uv1.Text(u8("��������:"))
					uv1.SameLine()
					uv1.PushItemWidth(184)
					uv1.Combo("", uv12[7][1], uv22[1], 6)
					uv1.PopItemWidth()

					if uv1.Button(uv9.ICON_FA_FILE_SIGNATURE .. u8(" ������� �������� �� " .. string.match(uv13[2][uv12[7][1].v + 1], "([^%d%s%-]+)")), uv1.ImVec2(250, 20)) and check_rank(3) and check_stop() then
						imgui_open(9)

						uv15[6] = 0

						if uv12[7][1].v == 4 then
							uv16 = true

							lua_thread.create(function ()
								uv0 = 1

								sampSendChat("��� ������� �������� �� ������ ���������� �������� ���-�����.")
								wait(1000)
								sampSendChat("/b ����� �������� ���-����� �������: /showmc " .. my_id)

								uv0 = 0
							end)
						else
							uv17 = uv12[7][1].v

							removeBlip(blip)
							lua_thread.create(function ()
								uv0 = 1

								sampSendChat("/do �� ����� ����� �������� � �����.")
								wait(2000)
								sampSendChat("/me ���� ����� � �������� �������� �� " .. string.match(uv1[2][uv2 + 1], "([^%d%s%-]+)"))
								wait(2000)
								sampSendChat("/todo ���, �������.*��������� �������� �������� ��������")
								sampSendChat("/givelicense " .. marker_id)

								uv0 = 0
							end)
						end
					end

					if uv12[7][1].v == 4 and uv1.Button(uv9.ICON_FA_USER_TIMES .. u8(" � ������ ��� ���-�����"), uv1.ImVec2(250, 20)) and check_rank(3) and check_stop() then
						imgui_open(9)

						uv15[6] = 0

						removeBlip(blip)
						lua_thread.create(function ()
							uv0 = 1

							sampSendChat("� ��������� � �� ���� ������� ��� �������� �� �����.")
							wait(2000)
							sampSendChat("�������� � ����� ������ ��� ������� ���-�����.")
							wait(1000)
							sampSendChat("/b �������� ���-����� � ��������.")

							uv0 = 0
						end)
					end

					if uv1.Button(uv9.ICON_FA_HAND_POINT_RIGHT .. u8(" �������� �� ����� � ��"), uv1.ImVec2(250, 20)) and check_rank(3) and check_stop() then
						imgui_open(9)

						uv15[6] = 0

						sampSendChat("�������� �� ����� ����� �������� ������ � ��������� �. ���-��������.")
					end

					if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
						uv15[6] = 0
					end
				elseif uv15[6] == 2 then
					uv1.PushItemWidth(250)

					slot3 = {
						u8("������� ��� ��"),
						u8("������� � ��")
					}

					uv1.Combo("", uv12[7][1], slot3, 2)
					uv1.Text(u8("������� ����������:"))
					uv1.Combo(" ", uv12[7][2], uv22[2], 3)
					uv1.PopItemWidth()

					if uv12[7][1].v == 1 then
						uv1.Text(u8("������� ��:"))
						uv1.PushItemWidth(250)
						uv1.Combo("  ", uv12[7][3], uv22[3], 4)
						uv1.PopItemWidth()

						if uv1.Button(uv9.ICON_FA_USER_MINUS .. u8(" ������� �� �����������"), uv1.ImVec2(250, 20)) then
							imgui_open(9)

							uv15[6] = 0

							if check_stop() and check_rank(9) then
								lua_thread.create(function ()
									uv0 = 1

									sampSendChat("/do ������� � ����� ������ ����������� � �����.")
									wait(2000)
									sampSendChat("/me ����� � ������ \"����������\"")
									wait(2000)
									sampSendChat("/do ������ ������.")
									wait(2000)
									sampSendChat("/me ��� ���������� � ������ \"����������\"")
									wait(2000)
									sampSendChat("/me ����� � ������ \"׸���� ������\"")
									wait(2000)
									sampSendChat("/do ������ ������.")
									wait(2000)
									sampSendChat("/me ��� ���������� � ������ \"׸���� ������\"")

									uv0 = 2

									sampSendChat("/uninvite " .. marker_id .. " " .. u8:decode(uv1[2][uv2[7][2].v + 1]))
									sampSendChat("/blacklist " .. marker_id .. " " .. u8:decode(uv1[3][uv2[7][3].v + 1]))

									uv0 = 0

									removeBlip(blip)
								end)
							end
						end
					elseif uv1.Button(uv9.ICON_FA_USER_MINUS .. u8(" ������� �� �����������"), uv1.ImVec2(250, 20)) then
						imgui_open(9)

						uv15[6] = 0

						sampSendChat("/" .. uv14.command.uninvite .. " " .. marker_id .. " " .. u8:decode(uv22[2][uv12[7][2].v + 1]))
					end

					if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
						uv15[6] = 0
					end
				elseif uv15[6] == 3 then
					uv1.PushItemWidth(250)

					slot3 = {
						u8("1 ����"),
						u8("2 ����"),
						u8("3 ����"),
						u8("4 ����"),
						u8("5 ����"),
						u8("6 ����"),
						u8("7 ����"),
						u8("8 ����"),
						u8("9 ����")
					}

					uv1.Combo("", uv12[7][1], slot3, 9)
					uv1.PopItemWidth()

					if uv1.Button(uv9.ICON_FA_SORT_AMOUNT_UP .. u8(" ������ ���������"), uv1.ImVec2(250, 20)) then
						imgui_open(9)

						uv15[6] = 0

						sampSendChat("/" .. uv14.command.giverank .. " " .. marker_id .. " " .. uv12[7][1].v + 1)
					end

					if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
						uv15[6] = 0
					end
				elseif uv15[6] == 4 then
					uv1.PushItemWidth(250)
					uv1.Combo("", uv12[7][1], uv22[3], 4)
					uv1.PopItemWidth()

					if uv1.Button(uv9.ICON_FA_USER_TIMES .. u8(" ������� � ������ ������"), uv1.ImVec2(250, 20)) then
						imgui_open(9)

						uv15[6] = 0

						sampSendChat("/" .. uv14.command.blacklist .. " " .. marker_id .. " " .. u8:decode(uv22[3][uv12[7][1].v + 1]))
					end

					if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
						uv15[6] = 0
					end
				elseif uv15[6] == 5 then
					uv1.PushItemWidth(250)
					uv1.Combo("", uv12[7][1], uv22[4], 4)
					uv1.PopItemWidth()

					if uv1.Button(uv9.ICON_FA_THUMBS_DOWN .. u8(" ���� ������� ����������"), uv1.ImVec2(250, 20)) then
						imgui_open(9)

						uv15[6] = 0

						sampSendChat("/" .. uv14.command.fwarn .. " " .. marker_id .. " " .. u8:decode(uv22[4][uv12[7][1].v + 1]))
					end

					if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
						uv15[6] = 0
					end
				elseif uv15[6] == 6 then
					uv1.PushItemWidth(250)
					uv1.Combo("", uv12[7][1], uv22[5], 7)
					uv1.PopItemWidth()

					if uv1.Button(uv9.ICON_FA_MICROPHONE_SLASH .. u8(" ���� ��� ����������"), uv1.ImVec2(250, 20)) then
						imgui_open(9)

						uv15[6] = 0

						if uv12[7][1].v == 6 then
							if check_rank(9) then
								sampSendChat("/" .. uv14.command.fmute .. " " .. marker_id .. " 999999")
							end
						else
							sampSendChat("/" .. uv14.command.fmute .. " " .. marker_id .. " " .. string.match(uv22[5][uv12[7][1].v + 1], "(%d+)"), -1)
						end
					end

					if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
						uv15[6] = 0
					end
				elseif uv15[6] == 7 then
					uv1.PushItemWidth(250)
					uv1.Combo("", uv12[7][1], uv22[6], 2)
					uv1.PopItemWidth()

					if uv1.Button(uv9.ICON_FA_USER_SLASH .. u8(" ������� �� �����������"), uv1.ImVec2(250, 20)) then
						imgui_open(9)

						uv15[6] = 0

						sampSendChat("/" .. uv14.command.expel .. " " .. marker_id .. " " .. u8:decode(uv22[6][uv12[7][1].v + 1]))
					end

					if uv1.Button(u8("�����"), uv1.ImVec2(100, 20)) then
						uv15[6] = 0
					end
				end
			end

			uv1.End()
		else
			uv1.Process = false
		end
	end

	return
end

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then
		return
	end

	while not isSampAvailable() do
		wait(100)
	end

	sampAddChatMessage("[AS Instructor] {FFFFFF}���������� ����������� ����������.", 3381759)
	sampAddChatMessage("[AS Instructor] {FFFFFF}������ �������� ���������.", 3381759)

	slot0 = 0
	slot1 = false

	if not doesDirectoryExist("moonloader\\AS Instructor") then
		createDirectory("moonloader\\AS Instructor")
	end

	if not doesFileExist("moonloader\\AS Instructor\\AS Instructor.ini") then
		slot0 = slot0 + 1

		downloadUrlToFile("https://raw.githubusercontent.com/Tema05/AutoSchool-Instructor/master/AS%20Instructor.ini", "moonloader\\AS Instructor\\AS Instructor.ini", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� AS Instructor.ini ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	if not doesFileExist("moonloader\\AS Instructor\\fa-solid-900.ttf") then
		slot0 = slot0 + 1

		downloadUrlToFile("https://github.com/Tema05/lib/blob/master/fa-solid-900.ttf?raw=true", "moonloader\\AS Instructor\\fa-solid-900.ttf", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� fa-solid-900.ttf ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	if not doesDirectoryExist("moonloader\\lib\\samp") then
		slot1 = true

		createDirectory("moonloader\\lib\\samp")
	end

	if not doesDirectoryExist("moonloader\\lib\\samp\\events") then
		slot1 = true

		createDirectory("moonloader\\lib\\samp\\events")
	end

	if not doesFileExist("moonloader\\lib\\samp\\events\\bitstream_io.lua") then
		slot1 = true
		slot0 = slot0 + 1

		downloadUrlToFile("https://raw.githubusercontent.com/Tema05/lib/master/bitstream_io.lua", "moonloader\\lib\\samp\\events\\bitstream_io.lua", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� bitstream_io.lua ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	if not doesFileExist("moonloader\\lib\\samp\\events\\core.lua") then
		slot1 = true
		slot0 = slot0 + 1

		downloadUrlToFile("https://raw.githubusercontent.com/Tema05/lib/master/core.lua", "moonloader\\lib\\samp\\events\\core.lua", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� core.lua ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	if not doesFileExist("moonloader\\lib\\samp\\events\\extra_types.lua") then
		slot1 = true
		slot0 = slot0 + 1

		downloadUrlToFile("https://raw.githubusercontent.com/Tema05/lib/master/extra_types.lua", "moonloader\\lib\\samp\\events\\extra_types.lua", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� extra_types.lua ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	if not doesFileExist("moonloader\\lib\\samp\\events\\handlers.lua") then
		slot1 = true
		slot0 = slot0 + 1

		downloadUrlToFile("https://raw.githubusercontent.com/Tema05/lib/master/handlers.lua", "moonloader\\lib\\samp\\events\\handlers.lua", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� handlers.lua ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	if not doesFileExist("moonloader\\lib\\samp\\events\\utils.lua") then
		slot1 = true
		slot0 = slot0 + 1

		downloadUrlToFile("https://raw.githubusercontent.com/Tema05/lib/master/utils.lua", "moonloader\\lib\\samp\\events\\utils.lua", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� utils.lua ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	if not doesFileExist("moonloader\\lib\\samp\\events.lua") then
		slot1 = true
		slot0 = slot0 + 1

		downloadUrlToFile("https://raw.githubusercontent.com/Tema05/lib/master/events.lua", "moonloader\\lib\\samp\\events.lua", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� events.lua ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	if not doesFileExist("moonloader\\lib\\samp\\raknet.lua") then
		slot1 = true
		slot0 = slot0 + 1

		downloadUrlToFile("https://raw.githubusercontent.com/Tema05/lib/master/raknet.lua", "moonloader\\lib\\samp\\raknet.lua", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� raknet.lua ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	if not doesFileExist("moonloader\\lib\\samp\\synchronization.lua") then
		slot1 = true
		slot0 = slot0 + 1

		downloadUrlToFile("https://raw.githubusercontent.com/Tema05/lib/master/synchronization.lua", "moonloader\\lib\\samp\\synchronization.lua", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� synchronization.lua ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	if not doesFileExist("moonloader\\lib\\imgui.lua") then
		slot0 = slot0 + 1

		downloadUrlToFile("https://raw.githubusercontent.com/Tema05/lib/master/imgui.lua", "moonloader\\lib\\imgui.lua", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� imgui.lua ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	if not doesFileExist("moonloader\\lib\\MoonImGui.dll") then
		slot1 = true
		slot0 = slot0 + 1

		downloadUrlToFile("https://github.com/Tema05/lib/blob/master/MoonImGui.dll?raw=true", "moonloader\\lib\\MoonImGui.dll", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� MoonImGui.dll ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	if not doesFileExist("moonloader\\lib\\imgui_addons.lua") then
		slot0 = slot0 + 1

		downloadUrlToFile("https://raw.githubusercontent.com/Tema05/lib/master/imgui_addons.lua", "moonloader\\lib\\imgui_addons.lua", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� imgui_addons.lua ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	if not doesFileExist("moonloader\\lib\\fAwesome5.lua") then
		slot0 = slot0 + 1

		downloadUrlToFile("https://raw.githubusercontent.com/Tema05/lib/master/fAwesome5.lua", "moonloader\\lib\\fAwesome5.lua", function (slot0, slot1, slot2, slot3)
			if slot1 == uv0.STATUS_ENDDOWNLOADDATA then
				sampAddChatMessage("[AS Instructor] {FFFFFF}���� fAwesome5.lua ��������.", 3381759)

				uv1 = uv1 - 1
			end
		end)
	end

	while true do
		wait(2500)

		if slot0 == 0 then
			if slot1 == true then
				sampShowDialog(10005, "{3399FF}AutoSchool Instructor", "{FFFFFF}��� ���������� ������ ������� ���������� ��������� � ����.", "��", "", 0)
			else
				sampAddChatMessage("[AS Instructor] {FFFFFF}�������� ��������� ���������.", 3381759)
				thisScript():reload()
			end
		end
	end
end
