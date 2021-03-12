do

PROTO_PRBF2DISC = Proto("prdisc","PRBF2 discovery")
-- create the fields for our "protocol"
data_F = ProtoField.bytes("prdisc.data","data")
conv_F = ProtoField.bytes("prdisc.conv","temp","Request")
temp_F = ProtoField.int32("prdisc.temp","temp")
timestamp_F = ProtoField.bytes("prdisc.timestamp","timestamp")

server_info_timelimit_F= ProtoField.stringz("prdisc.timelimit","timelimit") 
server_info_roundtime_F= ProtoField.stringz("prdisc.roundtime","roundtime") 
server_info_trackerindex_F= ProtoField.stringz("prdisc.trackerindex","trackerindex") 
server_info_trackerdownload_F= ProtoField.stringz("prdisc.trackerdownload","trackerdownload") 
server_info_autobalance_F= ProtoField.stringz("prdisc.autobalance","autobalance") 
server_info_friendlyfire_F= ProtoField.stringz("prdisc.friendlyfire","friendlyfire") 
server_info_tkmode_F= ProtoField.stringz("prdisc.tkmode","teamkill mode") 
server_info_startdelay_F= ProtoField.stringz("prdisc.startdelay","startdelay") 
server_info_spawntime_F= ProtoField.stringz("prdisc.spawntime","spawntime") 
server_info_sponsortext_F= ProtoField.stringz("prdisc.sponsortext","sponsortext") 
server_info_sponsorlogouri_F= ProtoField.stringz("prdisc.sponsorlogouri","sponsorlogouri") 
server_info_communitylogourl_F= ProtoField.stringz("prdisc.communitylogourl","communitylogourl") 
server_info_scorelimit_F= ProtoField.stringz("prdisc.scorelimit","scorelimit") 
server_info_ticketratio_F= ProtoField.stringz("prdisc.ticketratio","ticketratio") 
server_info_teamratio_F= ProtoField.stringz("prdisc.teamratio","teamratio") 
server_info_team1_F= ProtoField.stringz("prdisc.team1","team1") 
server_info_team2_F= ProtoField.stringz("prdisc.team2","team2") 
server_info_fps_F= ProtoField.stringz("prdisc.fps","fps") 
server_info_plasma_F= ProtoField.stringz("prdisc.plasma","plasma") 
server_info_globalunlocks_F= ProtoField.stringz("prdisc.globalunlocks","globalunlocks") 
server_info_reservedslots_F = ProtoField.stringz("prdisc.reservedslots","reservedslots") 
server_info_coopbotratio_F = ProtoField.stringz("prdisc.coopbotratio","Bot ratio") 
server_info_coopbotcount_F = ProtoField.stringz("prdisc.coopbotcount","Bot num")
server_info_coopbotdiff_F = ProtoField.stringz("prdisc.coopbotdiff","Bot difficulty")
server_info_novehicles_F = ProtoField.stringz("prdisc.novehicles","novehicles")
server_info_unknown_F = ProtoField.string("prdisc.UNKNOWN","unknown")

server_info_part_F = ProtoField.bytes("prdisc.PART","PART")

server_info_part_zero_F = ProtoField.bytes("prdisc.part_zero","info part 0")
server_info_part_one_F = ProtoField.bytes("prdisc.part_one","info part 1")
server_info_player_section_F = ProtoField.bytes("prdisc.players","players")
server_info_score_section_F = ProtoField.bytes("prdisc.score","score")
server_info_ping_section_F = ProtoField.bytes("prdisc.ping","ping")
server_info_team_section_F = ProtoField.bytes("prdisc.team","team")
server_info_deaths_section_F = ProtoField.bytes("prdisc.deaths","deaths")
server_info_pid_section_F = ProtoField.bytes("prdisc.pid","pid")
server_info_skill_section_F = ProtoField.bytes("prdisc.skill","skill")
server_info_aibot_section_F = ProtoField.bytes("prdisc.AIBot","AIBot")
server_info_player_F = ProtoField.stringz("prdisc.player", "playername")
server_info_score_F = ProtoField.stringz("prdisc.score", "score")
server_info_item_F = ProtoField.stringz("prdisc.item", "item")

----- response -----
server_version_F = ProtoField.string("prdisc.server_version","server_version")
server_name_F = ProtoField.string("prdisc.server_name","server_name")
mod_version_F = ProtoField.string("prdisc.mod_version","mod_version")
mod_name_F = ProtoField.string("prdisc.mod_name","mod_name")
map_name_F = ProtoField.stringz("prdisc.map_name","map_name")
game_type_F = ProtoField.string("prdisc.game_type","game_type")

num_active_player_F = ProtoField.stringz("prdisc.num_active_player","num_active_player")
num_max_player_F = ProtoField.stringz("prdisc.num_max_player","num_max_player")
server_port1_F = ProtoField.stringz("prdisc.server_port1","server_port1")
bf2_mod_F = ProtoField.stringz("prdisc.bf2_mod","bf2_mod")
bf_mode_F = ProtoField.stringz("prdisc.bf_mode","bf_mode")
password_on_F = ProtoField.stringz("prdisc.password_on","password_on")
gameversion_F = ProtoField.stringz("prdisc.gameversion","gameversion")
server_port2_F = ProtoField.stringz("prdisc.server_port2","server_port2")
server_os_F = ProtoField.stringz("prdisc.server_os","server_os")
bf_anticheat = ProtoField.stringz("prdisc.anticheat","anticheat")
bf2_ranked = ProtoField.stringz("prdisc.ranked","ranked")
bf2_voip_enabled_F = ProtoField.stringz("prdisc.bf2_void_enabled","bf2_void_enabled")
battlerecorder_enabled_F = ProtoField.stringz("prdisc.battlerecorder_enabled","battlerecorder_enabled")
bf2_dedicated = ProtoField.stringz("prdisc.dedicated_server","dedicated_server")
bf2_pure = ProtoField.stringz("prdisc.pure","pure")
bf2_bots = ProtoField.stringz("prdisc.botnum","botnum")
map_size_F = ProtoField.stringz("prdisc.map_size","map_size")

headprefix_F = ProtoField.bytes("prdisc.headprefix","headprefix")

head_F = ProtoField.bytes("prdisc.head","head")
splitnum_Ident_F = ProtoField.stringz("prdisc.splitnum_ident","splitnum_ident")
splitid_F = ProtoField.uint8("prdisc.splitid","splitid", base.DEC, nil, 0x7F)
splitstatus_lastpacket_F = ProtoField.uint8("prdisc.is_lastpacket","is_lastpacket", base.DEC, {[0]="no",[1]="yes:lastpacket"},0x80)
splitstatus_firstpacket_F = ProtoField.uint8("prdisc.is_firstpacket","is_firstpacket", base.DEC, {[0]="yes:firstpacket",[1]="no"},0x01)

server_info_payload_F = ProtoField.bytes("prdisc.server_info_payload","info_payload")
-----/response----

-----request-----
request_command_type_F = ProtoField.bytes("prdisc.request_command_type","command_type_get")
request_command_something_F = ProtoField.bytes("prdisc.request_command_something","command_getsomething")
request_command_sessionid_F = ProtoField.bytes("prdisc.request_command_sessionid","command_getsessionid")
request_payload_F = ProtoField.bytes("prdisc.request_payload","payload")
packetId_F = ProtoField.bytes("prdisc.packetId","packetid")
packetId2_F = ProtoField.bytes("prdisc.packetId2","packetid2")
ping_F = ProtoField.bytes("prdisc.ping","ping")
server_info_data_F = ProtoField.bytes("prdisc.info_data","info_data")

request_part_F = ProtoField.bytes("prdisc.request_part","part")
request_part_devider_F = ProtoField.bytes("prdisc.request_part_dev","part dev")
request_end_F=ProtoField.bytes("prdisc.requestend","end of request")
pr_req_ident_F=ProtoField.stringz("prdisc.requestident","request id")
game_name_F = ProtoField.stringz("prdisc.game_name","game_name")
filter_part_F = ProtoField.bytes("prdisc.filterpart","filterpart")
filter_validate_F = ProtoField.bytes("prdisc.filtervalidate","filter_validate")
filter_query_F = ProtoField.stringz("prdisc.filterquery","filter_query")
filter_query_fixed_F = ProtoField.stringz("prdisc.filterqueryfixed","filter_query_fixed")
fields_part_F = ProtoField.bytes("prdisc.fieldspart","fieldspart")
infoRequestParm_F = ProtoField.bytes("prdisc.request_parm","request_parm")
-----/request-----

serverListReqComByteArray = ByteArray.new("ffffff01")

-- add the field to the protocol
PROTO_PRBF2DISC.fields = { conv_F, head_F, timestamp_F, headprefix_F, temp_F, server_version_F, data_F,  mod_version_F, mod_name_F,server_name_F, game_type_F, 
map_name_F, num_active_player_F, num_max_player_F, server_port1_F, bf2_mod_F, bf_mode_F, password_on_F, gameversion_F, server_port2_F, server_os_F, bf_anticheat, bf2_ranked, bf2_voip_enabled_F,
 battlerecorder_enabled_F, bf2_dedicated, bf2_pure, bf2_bots, map_size_F,
 request_command_type_F, request_command_something_F, request_command_sessionid_F, request_payload_F, request_end_F, request_part_F, request_part_devider_F, pr_req_ident_F, game_name_F, filter_part_F,
 filter_validate_F, filter_query_F, filter_query_fixed_F, fields_part_F, packetId_F, packetId2_F, ping_F, infoRequestParm_F,
 splitid_F, splitnum_Ident_F, splitstatus_firstpacket_F, splitstatus_lastpacket_F, server_info_payload_F, server_info_data_F,
 server_info_timelimit_F, server_info_roundtime_F, server_info_trackerindex_F, server_info_trackerdownload_F, server_info_autobalance_F, server_info_friendlyfire_F, server_info_tkmode_F, server_info_startdelay_F, 
 server_info_spawntime_F, server_info_sponsortext_F, server_info_sponsorlogouri_F, server_info_communitylogourl_F, server_info_scorelimit_F, server_info_ticketratio_F, server_info_teamratio_F, server_info_team1_F, 
 server_info_team2_F, server_info_fps_F, server_info_plasma_F, server_info_globalunlocks_F, server_info_reservedslots_F , server_info_coopbotratio_F , server_info_coopbotcount_F , server_info_coopbotdiff_F , 
 server_info_novehicles_F , server_info_unknown_F,
 server_info_part_zero_F, server_info_part_one_F,
 server_info_player_section_F,server_info_score_section_F, server_info_ping_section_F,server_info_team_section_F,server_info_deaths_section_F,server_info_pid_section_F,server_info_skill_section_F,server_info_aibot_section_F,
 server_info_player_F, server_info_score_F, server_info_item_F}

local data_dis = Dissector.get("data")
-- trivial postdissector example
-- declare some Fields to be read
udp_f = Field.new("udp")
tcp_f = Field.new("tcp")

raw_data_f = Field.new("data")
-- declare our (pseudo) protocol

function f_split(length, bftree, tvb, curOffset)
	bftree = bftree or false
	local ret
	if length == 0 then 
		ret = tvb(curOffset)
	elseif length >= 0 then 
		ret = tvb(curOffset, length)
	else 
		ret = tvb(tvb:len()+length, -length)
	end
	if not bftree then
		curOffset = curOffset + length
	end
	return ret, curOffset
end

function f_findNextByteMatch(needle, curOffset, tvb)
	local needle = ByteArray.new(needle)
	local needleLen = needle:len()
	local bytes = tvb:range(curOffset):bytes()
	for i = 0, bytes:len()-needleLen do 
		if bytes:subset(i,needleLen) == needle then
			return i
		end
	end
	return -1
end

-- create a function to "postdissect" each frame
function PROTO_PRBF2DISC.dissector(buffer,pinfo,tree)
	if udp_f() == nil or raw_data_f() == nil then 
		return 
	end
	local temp
	local databuffer= buffer:range(raw_data_f().offset)
	local tvb = databuffer:tvb()	
	local curOffset = 0	
	playerHeader = "706c617965725f00"
	scoreHeader  =   "73636f72655f00"
	pingHeader   =     "70696e675f00"
	teamHeader   =     "7465616d5f00"
	deathsHeader = "6465617468735f00"
	pidHeader    =       "7069645f00"
	skillHeader  =   "736b696c6c5f00"
	aibotHeader  =   "4149426f745f00"
	
	function split(length, bftree)
		local ret
		ret, curOffset = f_split(length, bftree, tvb, curOffset)
		return ret
	end

	function findNextByteMatch(needle)
		return f_findNextByteMatch(needle, curOffset, tvb)
	end
	
	function dissectServerBrowserInfoReply()
		pinfo.cols.info = "PRBF2DiscReply.ServerInfoReply[ServerBrowser]"
		local bftree = tree:add(PROTO_PRBF2DISC,databuffer,"PRBF2 Discovery Reply")
		bftree:add(data_F, tvb())
		bftree:add(timestamp_F, split(5))											--"00(7d|8d|0c)(16|d7)6a1(5|a)"

		dissectServerInfo(bftree)
	end
	
	function dissectServerInfo(bftree)
		local server_version = split(findNextByteMatch("5d20")+1, true)
		local versiontree = bftree:add(server_version_F, server_version)	
		split(1) 																--"["
		mod_name = split(findNextByteMatch("20"))								--"PR"
		
		if mod_name:range():bytes() ~= ByteArray.new("5052") then
			bftree.hidden = true
			return 0
		end
		
		versiontree:add(mod_name_F, mod_name)
		split(1) 																--" "
		
		versiontree:add(mod_version_F, split(findNextByteMatch("5d")))			--"v1.5.5.2"
		split(2)																--"] "
		
		bftree:add(server_name_F, split(findNextByteMatch("00")+1)) 			--server name
		bftree:add(game_type_F, split(findNextByteMatch("00")+1)) 				--"qpm_cq"
		bftree:add(map_name_F, split(findNextByteMatch("00")+1)) 				--"Assault on Grozny"
		bftree:add(num_active_player_F, split(findNextByteMatch("00")+1)) 		--
		bftree:add(num_max_player_F, split(findNextByteMatch("00")+1)) 			--
		bftree:add(server_port1_F, split(findNextByteMatch("00")+1)) 			--
		bftree:add(bf2_mod_F, split(findNextByteMatch("00")+1)) 				--
		bftree:add(bf_mode_F, split(findNextByteMatch("00")+1)) 				--
		bftree:add(password_on_F, split(findNextByteMatch("00")+1)) 						--
		bftree:add(gameversion_F, split(findNextByteMatch("00")+1)) 						--
		bftree:add(server_port2_F, split(findNextByteMatch("00")+1)) 					--
		bftree:add(server_os_F, split(findNextByteMatch("00")+1)) 				--"linux"|"win32"
		bftree:add(bf_anticheat, split(findNextByteMatch("00")+1)) 					--
		bftree:add(bf2_ranked, split(findNextByteMatch("00")+1)) 					--
		bftree:add(bf2_voip_enabled_F, split(findNextByteMatch("00")+1)) 		--
		bftree:add(battlerecorder_enabled_F, split(findNextByteMatch("00")+1)) 	--
		bftree:add(bf2_dedicated, split(findNextByteMatch("00")+1)) 					-- (immer 1)
		bftree:add(bf2_pure, split(findNextByteMatch("00")+1)) 					--
		bftree:add(bf2_bots, split(findNextByteMatch("00")+1)) 					--
		bftree:add(map_size_F, split(findNextByteMatch("00")+1)) 				--	
	end
	
	function dissectServerInfoPartOne(bftree)
		partTwoStart = findNextByteMatch("000002")		
		
		local scoreLoc  = findNextByteMatch(scoreHeader)						-- "score_\0\0"
		local pingLoc   = findNextByteMatch(pingHeader)							-- "ping_\0\0"
		local teamLoc   = findNextByteMatch(teamHeader)							-- "team_\0\0"
		local deathsLoc = findNextByteMatch(deathsHeader)						-- "deaths_\0\0"
		local pidLoc    = findNextByteMatch(pidHeader)							-- "pid_\0\0"
		local skillLoc  = findNextByteMatch(skillHeader)						-- "skill_\0\0"
		local aibotLoc  = findNextByteMatch(aibotHeader)						-- "AIBot_\0\0"
				
		if partTwoStart == -1 then
			bftree:add(server_info_part_one_F, split(0, true))
		else 
			bftree:add(server_info_part_one_F, split(partTwoStart, true))
		end
		split(1)																		-- "\001")
		dissectServerInfoSection(bftree, playerHeader, server_info_player_section_F, server_info_player_F, scoreLoc, dissectServerNBSepItems)	-- "player_\0\0"
		dissectServerInfoSection(bftree, scoreHeader, server_info_score_section_F, server_info_score_F, pingLoc, dissectServerNBSepItems)
		dissectServerInfoSection(bftree, pingHeader, server_info_ping_section_F, server_info_item_F, teamLoc, dissectServerNBSepItems)
		dissectServerInfoSection(bftree, teamHeader, server_info_team_section_F, server_info_item_F, deathsLoc, dissectServerNBSepItems)
		dissectServerInfoSection(bftree, deathsHeader, server_info_deaths_section_F, server_info_item_F, pidLoc, dissectServerNBSepItems)
		dissectServerInfoSection(bftree, pidHeader, server_info_pid_section_F, server_info_item_F, skillLoc, dissectServerNBSepItems)
		dissectServerInfoSection(bftree, skillHeader, server_info_skill_section_F, server_info_item_F, aibotLoc, dissectServerNBSepItems)
		dissectServerInfoSection(bftree, aibotHeader, server_info_aibot_section_F, server_info_item_F, partTwoStart, dissectServerNBSepItems)
		return 0
	end	
	
	function dissectServerInfoSection(bftree, sectionHeader, sectionField, itemField, nextSectionLoc, sectionCallback)
		if findNextByteMatch(sectionHeader) == -1 then
			return -1 
		end 
		if findNextByteMatch(sectionHeader) == findNextByteMatch(sectionHeader .. "0000") then
			bftree:add(sectionField, split(findNextByteMatch(sectionHeader .. "0000")+ (sectionHeader:len()/2) + 1))
		else			

			local sectionTvb = nil															-- "player_\0\0 .... \0\0" (full player list)
			if nextSectionLoc == -1 then 
				sectionTvb = split(0, true)
			else 
				sectionTvb = split(f_findNextByteMatch("0000", curOffset+(sectionHeader:len()/2) + 2, tvb)+ (sectionHeader:len()/2) + 3, true)	
			end
			curOffset = curOffset+(sectionHeader:len()/2) + 2																-- skip player list header
			
			sectionCallback(bftree:add(sectionField, sectionTvb), itemField)
		end
		if nextSectionLoc ~= -1 then
			split(1)
		end
	end
	
	function dissectServerNBSepItems(bftree, itemField)
		local sectionEnd = false
		while findNextByteMatch("00") >= 0 and not sectionEnd do
			sectionEnd = findNextByteMatch("00") == findNextByteMatch("0000")
			bftree:add(itemField, split(findNextByteMatch("00")+1))				
		end	
	end

	
	function dissectServerInfoPartZero(bftree)
		split(1)
		while findNextByteMatch("00") ~= -1 do			
			if findNextByteMatch("00") == findNextByteMatch("0001") then
				split(1)
				return dissectServerInfoPartOne(bftree)
			end
				
			local sectionName = split(findNextByteMatch("00")):range():string()
			local sectionVal = nil
			
			if findNextByteMatch("00") == findNextByteMatch("0000") and sectionName ~= "hostname" then
				split(1) 					--first nul byte (end of sectionname)
				sectionVal = split(1)		--secnd nul byte (non value)
			else
				split(1)
				sectionVal = split(findNextByteMatch("00")+1)
			end
			
			if sectionName == "hostname" then
				serviontree = bftree:add(server_version_F, sectionVal)																	--"[PR v1.5.5.2] server name"
				local nameOffset = f_findNextByteMatch("5d20", 0, sectionVal)+2
				serviontree:add(mod_version_F, sectionVal(0, nameOffset))																--"[PR v1.5.5.2]"
				
				serviontree:add(server_name_F, sectionVal(nameOffset, f_findNextByteMatch("00", nameOffset, sectionVal)+1)) 			--server name
			elseif sectionName == "gamename" then
				bftree:add(bf2_mod_F, sectionVal) 				--"battlefield2"				
			elseif sectionName == "gamever" then
				bftree:add(gameversion_F, sectionVal) 						
			elseif sectionName == "mapname" then
				bftree:add(map_name_F, sectionVal) 				--"Assault on Grozny"
			elseif sectionName == "gametype" then--
				bftree:add(game_type_F, sectionVal) 				--"qpm_cq"
			elseif sectionName == "gamevariant" then
				bftree:add(bf2_mod_F, sectionVal) 				--
			elseif sectionName == "numplayers" then
				bftree:add(num_active_player_F, sectionVal) 		--
			elseif sectionName == "maxplayers" then
				bftree:add(num_max_player_F, sectionVal) 			--
			elseif sectionName == "gamemode" then
				bftree:add(bf_mode_F, sectionVal) 				--
			elseif sectionName == "password" then
				bftree:add(password_on_F, sectionVal) 						--
			elseif sectionName == "timelimit" then
				bftree:add(server_info_timelimit_F, sectionVal)
			elseif sectionName == "roundtime" then
				bftree:add(server_info_roundtime_F, sectionVal)
			elseif sectionName == "hostport" then
				bftree:add(server_port2_F, sectionVal)
			elseif sectionName == "bf2_dedicated" then
				bftree:add(bf2_dedicated, sectionVal) 					-- (immer 1)
			elseif sectionName == "bf2_ranked" then
				bftree:add(bf2_ranked, sectionVal) 					--
			elseif sectionName == "bf2_anticheat" then
				bftree:add(bf_anticheat, sectionVal) 					--
			elseif sectionName == "bf2_os" then
				bftree:add(server_os_F, sectionVal) 				--"linux"|"win32"
			elseif sectionName == "bf2_autorec" then
				bftree:add(battlerecorder_enabled_F, sectionVal) 	--
			elseif sectionName == "bf2_d_idx" then
				bftree:add(server_info_trackerindex_F, sectionVal)
			elseif sectionName == "bf2_d_dl" then
				bftree:add(server_info_trackerdownload_F, sectionVal)
			elseif sectionName == "bf2_voip" then
				bftree:add(bf2_voip_enabled_F, sectionVal) 		--
			elseif sectionName == "bf2_autobalanced" then
				bftree:add(server_info_autobalance_F, sectionVal)
			elseif sectionName == "bf2_friendlyfire" then
				bftree:add(server_info_friendlyfire_F, sectionVal)
			elseif sectionName == "bf2_tkmode" then
				bftree:add(server_info_tkmode_F, sectionVal)
			elseif sectionName == "bf2_startdelay" then
				bftree:add(server_info_startdelay_F, sectionVal)
			elseif sectionName == "bf2_spawntime" then
				bftree:add(server_info_spawntime_F, sectionVal)
			elseif sectionName == "bf2_sponsortext" then
				bftree:add(server_info_sponsortext_F, sectionVal)
			elseif sectionName == "bf2_sponsorlogo_url" then
				bftree:add(server_info_sponsorlogouri_F, sectionVal)
			elseif sectionName == "bf2_communitylogo_url" then
				bftree:add(server_info_communitylogourl_F, sectionVal)
			elseif sectionName == "bf2_scorelimit" then
				bftree:add(server_info_scorelimit_F, sectionVal)
			elseif sectionName == "bf2_ticketratio" then
				bftree:add(server_info_ticketratio_F, sectionVal)
			elseif sectionName == "bf2_teamratio" then
				bftree:add(server_info_teamratio_F, sectionVal)
			elseif sectionName == "bf2_team1" then
				bftree:add(server_info_team1_F, sectionVal)
			elseif sectionName == "bf2_team2" then
				bftree:add(server_info_team2_F, sectionVal)
			elseif sectionName == "bf2_bots" then
				bftree:add(bf2_bots, sectionVal) 					--
			elseif sectionName == "bf2_pure" then
				bftree:add(bf2_pure, sectionVal) 					--
			elseif sectionName == "bf2_mapsize" then
				bftree:add(map_size_F, sectionVal) 				--	
			elseif sectionName == "bf2_globalunlocks" then
				bftree:add(server_info_globalunlocks_F, sectionVal)
			elseif sectionName == "bf2_fps" then
				bftree:add(server_info_fps_F, sectionVal)
			elseif sectionName == "bf2_plasma" then
				bftree:add(server_info_plasma_F, sectionVal)
			elseif sectionName == "bf2_reservedslots" then
				bftree:add(server_info_reservedslots_F, sectionVal)
			elseif sectionName == "bf2_coopbotratio" then
				bftree:add(server_info_coopbotratio_F, sectionVal)
			elseif sectionName == "bf2_coopbotcount" then
				bftree:add(server_info_coopbotcount_F, sectionVal)
			elseif sectionName == "bf2_coopbotdiff" then
				bftree:add(server_info_coopbotdiff_F, sectionVal)
			elseif sectionName == "bf2_novehicles" then
				bftree:add(server_info_novehicles_F, sectionVal)
			end
		end 
	end
	
	function dissectRequest()
		local bftree = tree:add(PROTO_PRBF2DISC,"PRBF2 Discovery Request")
		bftree:add(data_F, tvb())
		split(3)																--fefd09
		
		bftree:add(packetId_F, split(4))										--packet id in reply
		if tvb:len() == curOffset then
			pinfo.cols.info = "PRBF2DiscRequest.Ping"							--only timestamp as data (fefd09((18d8|bfeb|ece1)fa14)|((c8ca|9cd4)1815))
			return 0
		end
		local command_type = split(4)
		bftree:add(request_command_type_F, command_type)
		if command_type:range():bytes() == serverListReqComByteArray then
			pinfo.cols.info = "PRBF2DiscRequest.C1"
			return 0
		end
		if command_type:range():bytes() == ByteArray.new("14010605") then
			pinfo.cols.info = "PRBF2DiscRequest.ServerInfo"
			bftree:add(request_command_something_F, split(8))										-- ??
			bftree:add(request_command_sessionid_F, split(9))						-- session id? (654:73HGI)
			bftree:add(request_payload_F, tvb(curOffset))							--14010605080a04070b1303043635343a37334847490000
		end
	end
	
	function dissectPingReply()
		local bftree = tree:add(PROTO_PRBF2DISC,"PRBF2 Ping Reply")
		pinfo.cols.info = "PRBF2DiscRequest.PingReply"		
		bftree:add(request_command_type_F, split(1))								-- 09
		bftree:add(packetId_F, split(2))											-- packetid
		bftree:add(packetId2_F, split(2))											-- 1815
		bftree:add(ping_F, split(2))											-- 3000
	end
	
	function dissectServerInfoRequest()
		local bftree = tree:add(PROTO_PRBF2DISC,"PRBF2 Server Info Request")
		pinfo.cols.info = "PRBF2DiscRequest.ServerInfoRequest"
		split(3)																	--fefd00
		bftree:add(packetId_F, split(2))											
		bftree:add(packetId2_F, split(2))
		local infoRequestParm = split(4)											--ffffff01
		bftree:add(infoRequestParm_F, infoRequestParm)
		if infoRequestParm:range():bytes() == ByteArray.new("ffffff01") then
			pinfo.cols.info = "PRBF2DiscRequest.ServerInfoRequest[PRBootup]"
		elseif infoRequestParm:range():bytes() == ByteArray.new("14010605") then 
			pinfo.cols.info = "PRBF2DiscRequest.ServerInfoRequest[ServerBrowser]"
		else
			pinfo.cols.info = "PRBF2DiscRequest.ServerInfoRequest[unknown]"
		end 
		bftree:add(request_payload_F, tvb(curOffset))
	end
	
	function dissectServerInfoReply()
		local bftree = tree:add(PROTO_PRBF2DISC,"PRBF2 Server Info Reply")
		pinfo.cols.info = "PRBF2DiscRequest.ServerInfoReply"
		split(1)																	--00
		local packetId = split(2)
		local packetId2 = split(2)
		bftree:add(packetId_F, packetId)											
		bftree:add(packetId2_F, packetId2)
		bftree:add(splitnum_Ident_F,split(9))										--"splitnum "

		local splitstatus1 = split(1)												-- xx (80==singlePacket, 00==firstPacket-moreFollow, 81==lastPacket)
		local splitstatus2 = split(1, true)												-- 0s s:(0==firstPacket, 1==2+Packet)
		local isLastPacket = splitstatus1:range():bitfield(0,1)
		local isNotFirstPacket = splitstatus2:range():bitfield(7,1)
		local splitId = tostring(splitstatus1:uint64():band(UInt64.new("7F")))
		local infoPartId = isNotFirstPacket
		
		bftree:add(splitstatus_lastpacket_F, splitstatus1)
		bftree:add(splitid_F, splitstatus1)
		bftree:add(splitstatus_firstpacket_F, splitstatus2)
		
		if pinfo.visited ~= true then
			if serverInfoPackets[packetId] ~= nil then
				serverInfoPackets[packetId] = tlv:bytes()
			end
		end
				
		if infoPartId == 0 then
			pinfo.cols.info = "PRBF2DiscRequest.ServerInfoReply[id:" .. splitId .. "-firstPacket]"
			dissectServerInfoPartZero(bftree)
		elseif infoPartId == 1 then 
			dissectServerInfoPartOne(bftree)
		end
		
		if isNotFirstPacket == 0 and isLastPacket == 1 then
			pinfo.cols.info = "PRBF2DiscRequest.ServerInfoReply[id:" .. splitId .. "-firstPacket-lastPacket]"
		elseif isLastPacket == 1 then
			pinfo.cols.info = "PRBF2DiscRequest.ServerInfoReply[id:" .. splitId .. "-lastPacket]"
		elseif isNotFirstPacket ~= 0 and isLastPacket ~= 1 then
			pinfo.cols.info = "PRBF2DiscRequest.ServerInfoReply[id:" .. splitId .. "-intermediatePacket]"
		end
		--bftree:add(server_info_payload_F, split(0))
	end
	
	if tvb:len() < 3 then
		return 0
	end
	
	if split(3, true):range():bytes() == ByteArray.new("fefd09") then	
		return dissectRequest()
	elseif split(1, true):range():bytes() == ByteArray.new("0f") then
		return 0 --todo
	elseif split(3, true):range():bytes() == ByteArray.new("fefd00") then 
		return dissectServerInfoRequest()
	elseif split(1, true):range():bytes() == ByteArray.new("09") and f_split(2, true, tvb, 5):range():bytes() == ByteArray.new("3000") then
		return dissectPingReply()
	elseif split(1, true):range():bytes() == ByteArray.new("00") and f_split(9, true, tvb, 5):range():bytes() == ByteArray.new("73706c69746e756d00") then --"splitnum "
		return dissectServerInfoReply()
	elseif f_split(4, true, tvb, 5):range():bytes() == ByteArray.new("5b505220") then
		return dissectServerBrowserInfoReply()
	end
end
-- register our protocol as a postdissector

--udp_port = DissectorTable.get("udp.port"):add("29900", PROTO_PRBF2DISC)
register_postdissector(PROTO_PRBF2DISC)


-- PROTO_PRBF2ServerListRetr = Proto("prservretr","PRBF2 ServerListRetrieve")

-- function PROTO_PRBF2ServerListRetr.dissector(buffer,pinfo,tree)
	-- if tcp_f() == nil or raw_data_f() == nil then 
		-- return
	-- end
	
	-- local temp
	-- local tvb = buffer:range(raw_data_f().offset):tvb()	
	-- local curOffset = 0	
	
	-- function split(length, bftree)
		-- local ret
		-- ret, curOffset = f_split(length, bftree, tvb, curOffset)
		-- return ret
	-- end

	-- function findNextByteMatch(needle)
		-- return f_findNextByteMatch(needle, curOffset, tvb)
	-- end
	
	
	-- local requestEnd = split(-5, true)
	-- local requestPartPattern = "00000000"
	-- local requestEndPart, _null = f_split(4, true, requestEnd, 0)
	-- if ByteArray.new(requestPartPattern) ~= requestEndPart:bytes() then
		-- return 
	-- end
	-- local bftree = tree:add(PROTO_PRBF2ServerListRetr,"PRBF2 ServerListRetrieve")
	
	-- function analyzePart(part)
		-- local b_match = "battlefield"
		-- if part:range():string():sub(1, #b_match) == b_match then --parseRequest
			-- bftree:add(pr_req_ident_F, split(findNextByteMatch("00")+1))
			-- bftree:add(game_name_F, split(findNextByteMatch("00")+1))
			-- filterPart = split(findNextByteMatch("00")+1)
			-- filterPartTree = bftree:add(filter_part_F, filterPart)
			-- filterPartTree:add(filter_validate_F, f_split(8, false, filterPart, 0))
			-- filterQueryPart= f_split(filterPart:len()-8, false, filterPart, 8)
			-- filterPartTree:add(filter_query_F, filterQueryPart)
			
			-- fixedFilterQuery = filterQueryPart:range():string()
			-- fixedFilterQuery, _null = fixedFilterQuery:gsub("%[", "[[]")
			-- filterPartTree:add(filter_query_fixed_F, filterQueryPart, fixedFilterQuery)
			
			-- bftree:add(temp_F, _null)
			
			-- fieldsPart = split(0)
			-- filterPartTree = bftree:add(fields_part_F, fieldsPart)
			
		-- end
	-- end 
	
	-- curOffset = 0
	-- local partDeviderMatch = findNextByteMatch(requestPartPattern)
	-- while partDeviderMatch ~= -1 do
		-- local partOffset = curOffset
		-- local part = split(partDeviderMatch)
		-- local tempTvb = tvb
		-- tvb = part
		-- local analyOffset = curOffset
		-- curOffset = 0 
		-- analyzePart(part)
		
		-- tvb = tempTvb
		-- curOffset = analyOffset
		-- bftree:add(request_part_devider_F, split(4))
		-- partDeviderMatch = findNextByteMatch(requestPartPattern)
	-- end
	
	-- bftree:add(request_end_F, requestEnd)
-- end
-- register_postdissector(PROTO_PRBF2ServerListRetr)


end


