PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
DROP TABLE IF EXISTS 'domainlist_by_group';
DROP TABLE IF EXISTS 'group';
DROP TABLE IF EXISTS 'domainlist';
DROP TABLE IF EXISTS 'adlist';
CREATE TABLE IF NOT EXISTS "group"
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    enabled BOOLEAN NOT NULL DEFAULT 1,
    name TEXT UNIQUE NOT NULL,
    date_added INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    date_modified INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    description TEXT
);
INSERT INTO "group" VALUES(0,1,'Default',1734739048,1734739048,NULL);
INSERT INTO "group" VALUES(1,1,'BlockYouTube',1694475424,1766679774,'Block YouTube, etc.');
CREATE TABLE domainlist
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type INTEGER NOT NULL DEFAULT 0,
    domain TEXT NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT 1,
    date_added INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    date_modified INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    comment TEXT,
    UNIQUE(domain, type)
);
INSERT INTO domainlist VALUES(2,2,'(\.|^)papertrailapp\.com$',1,1612112538,1734739048,'');
INSERT INTO domainlist VALUES(3,2,'(\.|^)papertrailapps\.com$',1,1612112556,1734739048,'');
INSERT INTO domainlist VALUES(4,2,'(\.|^)amazon\.com$',1,1612191164,1734739048,'');
INSERT INTO domainlist VALUES(5,2,'(\.|^)backblazeb2\.com$',1,1612274703,1734739048,'');
INSERT INTO domainlist VALUES(6,2,'(\.|^)qnap\.com$',1,1612277029,1734739048,'');
INSERT INTO domainlist VALUES(7,2,'(\.|^)apple\.com$',1,1612382535,1734739048,'');
INSERT INTO domainlist VALUES(20,2,'(\.|^)fbcdn\.net$',1,1616032501,1734739048,'Facebook Videos');
INSERT INTO domainlist VALUES(21,0,'click.redditmail.com',1,1617891954,1734739048,'');
INSERT INTO domainlist VALUES(22,0,'t.email.scouting.org',1,1619114791,1734739048,'Added from Query Log');
INSERT INTO domainlist VALUES(23,2,'(\.|^)googlevideo\.com$',1,1619482131,1734739048,'');
INSERT INTO domainlist VALUES(32,0,'skydrivesync.policies.live.net',1,1629297973,1734739048,'Added from Query Log');
INSERT INTO domainlist VALUES(33,1,'mask.icloud.com',1,1632229435,1734739047,'Apple Private Relay');
INSERT INTO domainlist VALUES(34,1,'mask-h2.icloud.com',1,1632229466,1734739047,'Apple Private Relay');
INSERT INTO domainlist VALUES(35,1,'mask.apple-dns.net',1,1632229484,1734739047,'Apple Private Relay');
INSERT INTO domainlist VALUES(41,0,'pubads.g.doubleclick.net',1,1645206313,1734739048,'paramount+');
INSERT INTO domainlist VALUES(42,0,'www.bankofamerica.com',1,1646757808,1734739048,'');
INSERT INTO domainlist VALUES(43,0,'cbsinteractive.hb.omtrdc.net',1,1648674956,1734739048,'');
INSERT INTO domainlist VALUES(44,2,'(\.|^)cbsi\.com$',1,1648675089,1734739048,'');
INSERT INTO domainlist VALUES(89,0,'smetrics.cnn.com',1,1686159062,1734739048,'');
INSERT INTO domainlist VALUES(93,2,'(\.|^)grammarly\.com$',1,1694008793,1734739048,'');
INSERT INTO domainlist VALUES(94,2,'(\.|^)cnn\.com$',1,1697303535,1734739048,NULL);
INSERT INTO domainlist VALUES(95,0,'collector.cdp.cnn.com',1,1697303537,1734739048,NULL);
INSERT INTO domainlist VALUES(130,0,'www.googleapis.com',1,1701814451,1734739048,'Added from Query Log');
INSERT INTO domainlist VALUES(131,2,'(\.|^)aria\.microsoft\.com$',1,1701964011,1734739048,NULL);
INSERT INTO domainlist VALUES(132,2,'(\.|^)magicsw\.com$',1,1701964012,1734739048,NULL);
INSERT INTO domainlist VALUES(133,2,'(\.|^)microsoft\.com$',1,1701964012,1734739048,NULL);
INSERT INTO domainlist VALUES(134,2,'(\.|^)split\.io$',1,1701964013,1734739048,NULL);
INSERT INTO domainlist VALUES(135,2,'(\.|^)windows\.com$',1,1701964013,1734739048,NULL);
INSERT INTO domainlist VALUES(136,3,'(\.|^)cms-twdigitalassets\.com$',1,1734961585,1734961585,NULL);
INSERT INTO domainlist VALUES(137,3,'(\.|^)pscp\.tv$',1,1734961585,1734961585,NULL);
INSERT INTO domainlist VALUES(138,3,'(\.|^)t\.co$',1,1734961585,1734961585,NULL);
INSERT INTO domainlist VALUES(139,3,'(\.|^)tellapart\.com$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(140,3,'(\.|^)ads-twitter\.com$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(141,3,'(\.|^)periscope\.tv$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(142,3,'(\.|^)tweetdeck\.com$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(143,3,'(\.|^)twitter\.biz$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(144,3,'(\.|^)twitpic\.com$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(145,3,'(\.|^)twimg\.com$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(146,3,'(\.|^)twitter\.com$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(147,3,'(\.|^)twitter\.jp$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(148,3,'(\.|^)twitterflightschool\.com$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(149,3,'(\.|^)twittercommunity\.com$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(150,3,'(\.|^)twitterinc\.com$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(151,3,'(\.|^)twitteroauth\.com$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(152,3,'(\.|^)twitterstat\.us$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(153,3,'(\.|^)twtrdns\.net$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(154,3,'(\.|^)twttr\.com$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(155,3,'(\.|^)twttr\.net$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(156,3,'(\.|^)twvid\.com$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(157,3,'(\.|^)vine\.co$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(158,3,'(\.|^)x\.com$',1,1734961586,1734961586,NULL);
INSERT INTO domainlist VALUES(159,3,'(\.|^)gotinder\.com$',1,1737850148,1737850148,NULL);
INSERT INTO domainlist VALUES(160,3,'(\.|^)imgsmail\.ru$',1,1737850148,1737850148,NULL);
INSERT INTO domainlist VALUES(161,3,'(\.|^)mail\.ru$',1,1737850148,1737850148,NULL);
INSERT INTO domainlist VALUES(162,3,'(\.|^)mycdn\.me$',1,1737850149,1737850149,NULL);
INSERT INTO domainlist VALUES(163,3,'(\.|^)ok\.ru$',1,1737850149,1737850149,NULL);
INSERT INTO domainlist VALUES(164,3,'(\.|^)onlyfans\.com$',1,1737850150,1737850150,NULL);
INSERT INTO domainlist VALUES(165,3,'(\.|^)tinder\.com$',1,1737850150,1737850150,NULL);
INSERT INTO domainlist VALUES(166,3,'(\.|^)tindersparks\.com$',1,1737850150,1737850150,NULL);
INSERT INTO domainlist VALUES(167,0,'click.e.progressive.com',1,1742939883,1742939883,NULL);
INSERT INTO domainlist VALUES(169,2,'(\.|^)grammarly\.net$',1,1748366948,1748366948,NULL);
INSERT INTO domainlist VALUES(170,0,'ftwotx-speedtest-ookla-01.st.charter.com',1,1752500057,1752500057,'Added from Query Log');
INSERT INTO domainlist VALUES(171,3,'(\.|^)blox\.com$',1,1756084221,1756084221,'Added by Pi-hole Remote');
INSERT INTO domainlist VALUES(172,3,'(\.|^)rbx\.cn$',1,1756084221,1756084221,'Added by Pi-hole Remote');
INSERT INTO domainlist VALUES(173,3,'(\.|^)rbx\.com$',1,1756084221,1756084221,'Added by Pi-hole Remote');
INSERT INTO domainlist VALUES(174,3,'(\.|^)rbxadder\.com$',1,1756084221,1756084221,'Added by Pi-hole Remote');
INSERT INTO domainlist VALUES(175,3,'(\.|^)rbxcdn\.com$',1,1756084221,1756084221,'Added by Pi-hole Remote');
INSERT INTO domainlist VALUES(176,3,'(\.|^)rbxcdn\.net$',1,1756084221,1756084221,'Added by Pi-hole Remote');
INSERT INTO domainlist VALUES(177,3,'(\.|^)rbxinfra\.com$',1,1756084221,1756084221,'Added by Pi-hole Remote');
INSERT INTO domainlist VALUES(178,3,'(\.|^)rbxinfra\.net$',1,1756084221,1756084221,'Added by Pi-hole Remote');
INSERT INTO domainlist VALUES(179,3,'(\.|^)roblox\.cn$',1,1756084221,1756084221,'Added by Pi-hole Remote');
INSERT INTO domainlist VALUES(180,3,'(\.|^)roblox\.com$',1,1756084221,1756084221,'Added by Pi-hole Remote');
INSERT INTO domainlist VALUES(181,3,'(\.|^)roblox.qq\.com$',1,1756084222,1756084222,'Added by Pi-hole Remote');
INSERT INTO domainlist VALUES(182,3,'(\.|^)robloxcdn\.com$',1,1756084222,1756084222,'Added by Pi-hole Remote');
INSERT INTO domainlist VALUES(183,3,'(\.|^)robloxdev\.cn$',1,1756084222,1756084222,'Added by Pi-hole Remote');
INSERT INTO domainlist VALUES(184,0,'www.signupgenius.com',1,1763300889,1763300889,NULL);
INSERT INTO domainlist VALUES(185,0,'lh7-rt.googleusercontent.com',1,1766440846,1766440846,'Added from Query Log');
INSERT INTO domainlist VALUES(186,0,'sites.google.com',1,1767723747,1767723747,'Added from Query Log');
CREATE TABLE adlist
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    address TEXT NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT 1,
    date_added INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    date_modified INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    comment TEXT,
    date_updated INTEGER,
    number INTEGER NOT NULL DEFAULT 0,
    invalid_domains INTEGER NOT NULL DEFAULT 0,
    status INTEGER NOT NULL DEFAULT 0,
    abp_entries INTEGER NOT NULL DEFAULT 0,
    type INTEGER NOT NULL DEFAULT 0,
    UNIQUE(address, type)
);
INSERT INTO adlist VALUES(1,'https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts',1,1612104632,1734739046,'Migrated from /etc/pihole/adlists.list',1767510902,79811,1,2,0,0);
INSERT INTO adlist VALUES(4,'https://justdomains.github.io/blocklists/lists/easylist-justdomains.txt',1,1612209536,1734739046,'Added by Updater',1739884503,22066,0,2,0,0);
INSERT INTO adlist VALUES(5,'https://justdomains.github.io/blocklists/lists/easyprivacy-justdomains.txt',1,1612209536,1734739046,'Added by Updater',1739884503,20270,0,2,0,0);
INSERT INTO adlist VALUES(6,'https://justdomains.github.io/blocklists/lists/adguarddns-justdomains.txt',1,1612209536,1734739046,'Added by Updater',1739884504,48994,0,2,0,0);
INSERT INTO adlist VALUES(7,'https://raw.githubusercontent.com/kboghdady/youTube_ads_4_pi-hole/master/youtubelist.txt',1,1612209536,1734739046,'Added by Updater',1753704905,16843,2,2,0,0);
INSERT INTO adlist VALUES(8,'https://raw.githubusercontent.com/dfederlein/dnsbl-dfed/master/spotifyads.txt',1,1612209536,1734739046,'Added by Updater',1739884505,37,0,2,0,0);
INSERT INTO adlist VALUES(9,'https://raw.githubusercontent.com/hectorm/hmirror/master/data/spam404.com/list.txt',1,1612209536,1734739046,'Added by Updater',1758176105,8140,0,2,0,0);
INSERT INTO adlist VALUES(10,'https://raw.githubusercontent.com/hectorm/hmirror/master/data/adaway.org/list.txt',1,1612209536,1734739046,'Added by Updater',1739884506,6540,0,2,0,0);
INSERT INTO adlist VALUES(11,'https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt',1,1612209536,1734739046,'Added by Updater',1739884507,2701,0,2,0,0);
INSERT INTO adlist VALUES(12,'https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt',1,1612209536,1734739046,'Added by Updater',1739884507,34,0,2,0,0);
INSERT INTO adlist VALUES(13,'https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts',1,1612209536,1734739046,'Added by Updater',1766917506,19190,0,2,0,0);
INSERT INTO adlist VALUES(15,'https://justdomains.github.io/blocklists/lists/nocoin-justdomains.txt',1,1612209536,1734739046,'Added by Updater',1739884508,720,0,2,0,0);
INSERT INTO adlist VALUES(16,'https://urlhaus.abuse.ch/downloads/hostfile/',1,1612209536,1734739046,'Added by Updater',1767683707,547,0,1,0,0);
INSERT INTO adlist VALUES(19,'https://raw.githubusercontent.com/RPiList/specials/master/Blocklisten/Phishing-Angriffe',1,1612209536,1734739046,'Added by Updater',1767683709,158734,0,1,158734,0);
INSERT INTO adlist VALUES(20,'https://raw.githubusercontent.com/RPiList/specials/master/Blocklisten/spam.mails',1,1612209536,1734739046,'Added by Updater',1767683711,147654,0,1,147654,0);
INSERT INTO adlist VALUES(23,'https://raw.githubusercontent.com/Highlander-bdj/youtube_blocklist/main/youtube_blocklist.txt',1,1615990423,1734739046,'Block YouTube (my List)',1739884516,7,0,2,0,0);
INSERT INTO adlist VALUES(24,'https://blocklist.sefinek.net/generated/0.0.0.0/sites/youtube.txt',1,1691522468,1734815774,'Block Youtube',1739884519,282,0,2,0,0);
INSERT INTO adlist VALUES(25,'https://blocklist.sefinek.net/generated/0.0.0.0/social/tiktok.txt',1,1691528921,1734739046,'block ticktok',1739884519,3789,0,2,0,0);
INSERT INTO adlist VALUES(26,'https://big.oisd.nl',1,1705963347,1734739046,NULL,1767683715,211020,0,1,211020,0);
INSERT INTO adlist VALUES(27,'https://nsfw.oisd.nl',1,1707769031,1734739046,NULL,1767683718,369029,0,1,369029,0);
CREATE TABLE domainlist_by_group
(
    domainlist_id INTEGER NOT NULL REFERENCES domainlist (id) ON DELETE CASCADE,
    group_id INTEGER NOT NULL REFERENCES "group" (id) ON DELETE CASCADE,
    PRIMARY KEY (domainlist_id, group_id)
);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(1,2,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(2,3,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(3,4,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(4,5,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(5,6,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(6,7,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(7,20,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(8,21,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(9,22,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(10,23,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(11,32,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(12,33,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(13,34,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(14,35,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(15,41,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(16,42,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(17,43,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(18,44,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(19,89,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(20,93,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(21,94,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(22,95,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(23,130,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(24,131,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(25,132,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(26,133,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(27,134,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(28,135,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(29,136,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(30,137,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(31,138,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(32,139,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(33,140,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(34,141,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(35,142,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(36,143,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(37,144,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(38,145,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(39,146,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(40,147,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(41,148,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(42,149,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(43,150,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(44,151,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(45,152,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(46,153,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(47,154,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(48,155,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(49,156,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(50,157,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(51,158,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(52,159,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(53,160,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(54,161,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(55,162,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(56,163,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(57,164,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(58,165,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(59,166,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(60,167,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(61,169,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(62,170,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(63,171,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(64,172,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(65,173,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(66,174,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(67,175,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(68,176,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(69,177,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(70,178,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(71,179,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(72,180,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(73,181,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(74,182,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(75,183,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(76,184,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(77,185,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(78,186,0);
COMMIT;
