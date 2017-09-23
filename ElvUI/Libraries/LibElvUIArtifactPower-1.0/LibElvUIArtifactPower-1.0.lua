local MAJOR, MINOR = "LibElvUIArtifactPower-1.0", 1
local lib, oldminor = LibStub:NewLibrary(MAJOR, MINOR)

if not lib then return end

local libAD = LibStub("LibArtifactData-1.0")

if not libAD then return end

lib.ArtifactPowerSpells = {
	[216876] = 10,
	[217024] = 400,
	[217026] = 25,
	[217045] = 75,
	[217055] = 100,
	[217299] = 35,
	[217300] = 35,
	[217301] = 100,
	[217355] = 100,
	[217511] = 50,
	[217512] = 60,
	[217670] = 200,
	[217671] = 400,
	[217689] = 150,
	[220547] = 100,
	[220548] = 235,
	[220549] = 480,
	[220550] = 450,
	[220551] = 530,
	[220553] = 550,
	[225897] = 100,
	[227531] = 200,
	[227535] = 300,
	[227886] = 545,
	[227889] = 210,
	[227904] = 35,
	[227905] = 55,
	[227907] = 200,
	[227941] = 150,
	[227942] = 200,
	[227943] = 465,
	[227944] = 520,
	[227945] = 165,
	[227946] = 190,
	[227947] = 210,
	[227948] = 230,
	[227949] = 475,
	[227950] = 515,
	[228067] = 400,
	[228069] = 100,
	[228078] = 500,
	[228079] = 600,
	[228080] = 250,
	[228106] = 490,
	[228107] = 250,
	[228108] = 210,
	[228109] = 170,
	[228110] = 205,
	[228111] = 245,
	[228112] = 160,
	[228130] = 125,
	[228131] = 400,
	[228135] = 250,
	[228220] = 150,
	[228310] = 50,
	[228352] = 500,
	[228422] = 175,
	[228423] = 350,
	[228436] = 170,
	[228437] = 220,
	[228438] = 195,
	[228439] = 185,
	[228440] = 190,
	[228442] = 215,
	[228443] = 180,
	[228444] = 750,
	[228647] = 400,
	[228921] = 500,
	[228955] = 25,
	[228956] = 50,
	[228957] = 35,
	[228959] = 45,
	[228960] = 20,
	[228961] = 25,
	[228962] = 40,
	[228963] = 80,
	[228964] = 150,
	[229746] = 100,
	[229747] = 200,
	[229776] = 1000,
	[229778] = 100,
	[229779] = 300,
	[229780] = 350,
	[229781] = 300,
	[229782] = 500,
	[229783] = 100,
	[229784] = 150,
	[229785] = 800,
	[229786] = 350,
	[229787] = 300,
	[229788] = 600,
	[229789] = 250,
	[229790] = 2000,
	[229791] = 1000,
	[229792] = 4000,
	[229793] = 900,
	[229794] = 1000,
	[229795] = 650,
	[229796] = 450,
	[229798] = 750,
	[229799] = 1200,
	[229803] = 500,
	[229804] = 875,
	[229805] = 1250,
	[229806] = 2500,
	[229807] = 20,
	[229857] = 100,
	[229858] = 100,
	[229859] = 1000,
	[231035] = 100,
	[231041] = 100,
	[231047] = 1000,
	[231048] = 500,
	[231337] = 600,
	[231362] = 200,
	[231453] = 500,
	[231512] = 500,
	[231538] = 250,
	[231543] = 500,
	[231544] = 100,
	[231556] = 500,
	[231581] = 250,
	[231647] = 500,
	[231669] = 500,
	[231709] = 500,
	[231727] = 800,
	[232755] = 90,
	[232832] = 95,
	[232890] = 400,
	[232994] = 100,
	[232995] = 120,
	[232996] = 180,
	[232997] = 800,
	[233030] = 150,
	[233031] = 100,
	[233204] = 500,
	[233209] = 500,
	[233211] = 800,
	[233242] = 300,
	[233243] = 1000,
	[233244] = 250,
	[233245] = 250,
	[233348] = 3000,
	[233816] = 250,
	[234045] = 250,
	[234047] = 400,
	[234048] = 500,
	[234049] = 600,
	[235245] = 175,
	[235246] = 195,
	[235247] = 220,
	[235248] = 240,
	[235256] = 250,
	[235257] = 155,
	[235266] = 500,
	[237344] = 320,
	[237345] = 380,
	[238029] = 85,
	[238030] = 115,
	[238031] = 300,
	[238032] = 400,
	[238033] = 750,
	[239094] = 600,
	[239095] = 650,
	[239096] = 270,
	[239097] = 225,
	[239098] = 285,
	[240331] = 200,
	[240332] = 125,
	[240333] = 600,
	[240335] = 240,
	[240337] = 360,
	[240339] = 1600,
	[240483] = 2500,
	[241156] = 175,
	[241157] = 290,
	[241158] = 325,
	[241159] = 465,
	[241160] = 300,
	[241161] = 475,
	[241162] = 540,
	[241163] = 775,
	[241164] = 375,
	[241165] = 600,
	[241166] = 675,
	[241167] = 1000,
	[241471] = 750,
	[241476] = 1000,
	[241752] = 800,
	[241753] = 255,
	[242062] = 500,
	[242116] = 3125,
	[242117] = 2150,
	[242118] = 1925,
	[242119] = 1250,
	[242564] = 1200,
	[242572] = 725,
	[242573] = 1500,
	[242575] = 5000,
	[242884] = 625,
	[242886] = 125,
	[242887] = 100,
	[242890] = 50,
	[242891] = 500,
	[242893] = 250,
	[242911] = 2000,
	[242912] = 400,
	[244814] = 600,
	[246165] = 500,
	[246166] = 525,
	[246167] = 625,
	[246168] = 275,
	[247040] = 750,
	[247075] = 250,
	[247316] = 450,
	[247319] = 125,
	[247631] = 300,
	[247633] = 700,
	[247634] = 1000,
	[248047] = 800,
	[248841] = 20,
	[248842] = 30,
	[248843] = 40,
	[248844] = 50,
	[248845] = 60,
	[248846] = 70,
	[248847] = 80,
	[248848] = 90,
	[248849] = 100,
	[250374] = 550,
	[250375] = 590,
	[250376] = 575,
	[250377] = 625,
	[250378] = 610,
	[250379] = 650,
	[251039] = 3500,
	[252078] = 200,
	[253833] = 400,
	[253834] = 600,
	[253902] = 1200,
	[253931] = 875,
	[254000] = 10000,
	[254387] = 500,
	[254593] = 200,
	[254603] = 570,
	[254608] = 630,
	[254609] = 565,
	[254610] = 635,
	[254656] = 645,
	[254657] = 745,
	[254658] = 550,
	[254659] = 650,
	[254660] = 640,
	[254661] = 560,
	[254662] = 625,
	[254663] = 575,
	[254699] = 50,
	[254761] = 750,
	[255161] = 650,
	[255162] = 550,
	[255163] = 750,
	[255165] = 800,
	[255166] = 600,
	[255167] = 900,
	[255168] = 1000,
	[255169] = 1250,
	[255170] = 1000,
	[255171] = 450,
	[255172] = 600,
	[255173] = 750,
	[255175] = 850,
	[255176] = 600,
	[255177] = 520,
	[255178] = 550,
	[255179] = 535,
	[255180] = 305,
	[255181] = 315,
	[255182] = 330,
	[255183] = 345,
	[255184] = 350,
	[255185] = 555,
	[255186] = 60,
	[255187] = 90,
	[255188] = 75,
};

function lib:DoesItemGrantArtifactPower(itemID)
    local _, _, spellID = GetItemSpell(itemID)

    return spellID and lib.ArtifactPowerSpells[spellID];
end

function lib:GetArtifactPowerGrantedByItem(itemID)
    local _, _, spellID = GetItemSpell(itemID);

    if (spellID and lib.ArtifactPowerSpells[spellID]) then
        local _, multiplier = libAD:GetArtifactKnowledge();

        return lib.ArtifactPowerSpells[spellID] * multiplier;
    end
end