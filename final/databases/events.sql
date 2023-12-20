-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: sql1.njit.edu
-- Generation Time: Dec 20, 2023 at 05:31 PM
-- Server version: 8.0.17
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dsg2`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event` varchar(83) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `glb_release` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `jpn_release` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(124) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event`, `glb_release`, `jpn_release`, `url`) VALUES
('All Fired Up! Marriage, Showdown, Grand Finale', '2022-07-07', '2022-01-29', 'https://dbz-dokkanbattle.fandom.com/wiki/All_Fired_Up!_Marriage,_Showdown,_Grand_Finale'),
('Curse of the Blood Rubies', '2019-02-26', '2018-10-31', 'https://dbz-dokkanbattle.fandom.com/wiki/Curse_of_the_Blood_Rubies'),
('Sleeping Princess in Devil''s Castle', '2019-05-08', '2019-01-10', 'https://dbz-dokkanbattle.fandom.com/wiki/Sleeping_Princess_in_Devil%27s_Castle'),
('Mystical Adventure', '2019-05-21', '2019-03-05', 'https://dbz-dokkanbattle.fandom.com/wiki/Mystical_Adventure'),
('The Path to Power', '2023-02-01', '2022-10-04', 'https://dbz-dokkanbattle.fandom.com/wiki/The_Path_to_Power'),
('The Low-Class Warrior: Raditz''s Pride', '2018-04-05', '2017-11-22', 'https://dbz-dokkanbattle.fandom.com/wiki/The_Low-Class_Warrior:_Raditz%27s_Pride'),
('Fierce Battle for Planet Namek!', '2022-10-20', '2022-06-30', 'https://dbz-dokkanbattle.fandom.com/wiki/Fierce_Battle_for_Planet_Namek!'),
('Face-off with the Fearsome Ginyu Force', '2023-06-20', '2023-04-14', 'https://dbz-dokkanbattle.fandom.com/wiki/Face-off_with_the_Fearsome_Ginyu_Force'),
('Cataclysmic Clash! Final Showdown with Frieza', '2019-10-03', '2019-05-31', 'https://dbz-dokkanbattle.fandom.com/wiki/Cataclysmic_Clash!_Final_Showdown_with_Frieza'),
('Demonic Threat! Garlic Jr. Attacks', '2021-10-06', '2021-05-31', 'https://dbz-dokkanbattle.fandom.com/wiki/Demonic_Threat!_Garlic_Jr._Attacks'),
('New Enemies! Androids in Action', '2019-08-20', '2019-07-11', 'https://dbz-dokkanbattle.fandom.com/wiki/New_Enemies!_Androids_in_Action'),
('Emerge! Mysterious Monster Cell', '2019-08-27', '2019-07-30', 'https://dbz-dokkanbattle.fandom.com/wiki/Emerge!_Mysterious_Monster_Cell'),
('Ultimate Confrontation! The Cell Games', '2019-08-27', '2019-08-27', 'https://dbz-dokkanbattle.fandom.com/wiki/Ultimate_Confrontation!_The_Cell_Games'),
('Fight Against Despair!', '2020-02-03', '2019-10-03', 'https://dbz-dokkanbattle.fandom.com/wiki/Fight_Against_Despair!'),
('Epic Battle! The Mighty Ones of the Otherworld', '2018-06-20', '2018-06-12', 'https://dbz-dokkanbattle.fandom.com/wiki/Epic_Battle!_The_Mighty_Ones_of_the_Otherworld'),
('Videl''s Flying Technique Tutorial', '2019-04-25', '2018-11-22', 'https://dbz-dokkanbattle.fandom.com/wiki/Videl%27s_Flying_Technique_Tutorial'),
('Go Forth!! Hero of Justice', '2020-11-06', '2020-07-31', 'https://dbz-dokkanbattle.fandom.com/wiki/Go_Forth!_Hero_of_Justice'),
('A Turbulent Start! World Tournament Reborn', '2020-05-08', '2019-12-26', 'https://dbz-dokkanbattle.fandom.com/wiki/A_Turbulent_Start!_World_Tournament_Reborn'),
('Evil Revived! The Most Fearsome Majin', '2020-08-21', '2020-04-24', 'https://dbz-dokkanbattle.fandom.com/wiki/Evil_Revived!_The_Most_Fearsome_Majin'),
('Dreaded Majin and a Soul Reborn', '2023-07-07', '2023-01-29', 'https://dbz-dokkanbattle.fandom.com/wiki/Dreaded_Majin_and_a_Soul_Reborn'),
('Showdown! The Ultimate Final Battle', '2020-08-28', '2020-08-28', 'https://dbz-dokkanbattle.fandom.com/wiki/Showdown!_The_Ultimate_Final_Battle'),
('The Unknown Battle of Gods and Majin', '2019-01-16', '2018-10-04', 'https://dbz-dokkanbattle.fandom.com/wiki/The_Unknown_Battle_of_Gods_and_Majin'),
('Lord Slug', '2018-11-12', '2018-05-17', 'https://dbz-dokkanbattle.fandom.com/wiki/Lord_Slug'),
('A Lone Warrior''s Last Battle', '2018-11-08', '2018-08-21', 'https://dbz-dokkanbattle.fandom.com/wiki/A_Lone_Warrior%27s_Last_Battle'),
('Fight! Battle for the Strongest in the Universe', '2022-08-26', '2022-08-26', 'https://dbz-dokkanbattle.fandom.com/wiki/Fight!_Battle_for_the_Strongest_in_the_Universe'),
('Fight! 10 Billion Power Warriors', '2019-04-03', '2018-10-31', 'https://dbz-dokkanbattle.fandom.com/wiki/Fight!_10_Billion_Power_Warriors'),
('Super Android 13!', '2020-04-02', '2019-11-29', 'https://dbz-dokkanbattle.fandom.com/wiki/Super_Android_13!'),
('Super Warrior Slam! Victory Will Be Mine!', '2017-10-21', '2017-06-13', 'https://dbz-dokkanbattle.fandom.com/wiki/Super_Warrior_Slam!_Victory_Will_Be_Mine!'),
('Fusion Reborn', '2021-04-02', '2020-12-28', 'https://dbz-dokkanbattle.fandom.com/wiki/Fusion_Reborn'),
('Wrath of the Dragon', '2018-05-25', '2017-12-19', 'https://dbz-dokkanbattle.fandom.com/wiki/Wrath_of_the_Dragon'),
('Goku and Friends Are Back', '2017-11-16', '2017-08-24', 'https://dbz-dokkanbattle.fandom.com/wiki/Goku_and_Friends_Are_Back'),
('Vegeta the Indomitable Warrior', '2018-01-19', '2018-04-17', 'https://dbz-dokkanbattle.fandom.com/wiki/Vegeta_the_Indomitable_Warrior'),
('The Emperor Returns! Training for Vengeance', '2021-01-04', '2020-10-05', 'https://dbz-dokkanbattle.fandom.com/wiki/The_Emperor_Returns!_Training_for_Vengeance'),
('Resurrection ''F''', 'unknown', '2015-05-11', 'https://dbz-dokkanbattle.fandom.com/wiki/Resurrection_F'),
('Dragon Ball Super: Universe 6 Saga', '2017-01-05', '2016-07-25', 'https://dbz-dokkanbattle.fandom.com/wiki/Dragon_Ball_Super:_Universe_6_Saga'),
('Universe''s Strongest?! Challenge the "Great Pontas"!', '2018-11-15', '2019-05-14', 'https://dbz-dokkanbattle.fandom.com/wiki/Universe%27s_Strongest%3F!_Challenge_the_%22Great_Pontas%22!'),
('Vegeta''s Demise?! The Secret of Planet Potaufeu', '2019-11-12', '2019-03-18', 'https://dbz-dokkanbattle.fandom.com/wiki/Vegeta%27s_Demise%3F!_The_Secret_of_Planet_Potaufeu'),
('Zero Mortals Plan', '2020-07-07', '2020-01-29', 'https://dbz-dokkanbattle.fandom.com/wiki/Zero_Mortals_Plan'),
('Dragon Ball Super: Future Trunks Saga', '2017-05-17', '2016-12-20', 'https://dbz-dokkanbattle.fandom.com/wiki/Dragon_Ball_Super:_Future_Trunks_Saga'),
('Assemble! Warriors of Universe 6', '2019-12-09', '2019-04-01', 'https://dbz-dokkanbattle.fandom.com/wiki/Assemble!_Warriors_of_Universe_6'),
('Master Roshi''s New Challenge', '2021-07-07', '2021-01-29', 'https://dbz-dokkanbattle.fandom.com/wiki/Master_Roshi%27s_New_Challenge'),
('Dragon Ball Super: Universe Survival Saga', '2018-02-17', '2017-09-26', 'https://dbz-dokkanbattle.fandom.com/wiki/Dragon_Ball_Super:_Universe_Survival_Saga'),
('The Power of Trust! The Miracle of Universe 7', '2021-07-07', '2021-01-29', 'https://dbz-dokkanbattle.fandom.com/wiki/The_Power_of_Trust!_The_Miracle_of_Universe_7'),
('Dragon Ball Super: Universe Survival Saga - Tournament of Power Commencement', '2018-05-15', '2018-03-18', 'https://dbz-dokkanbattle.fandom.com/wiki/Dragon_Ball_Super:_Universe_Survival_Saga_-_Tournament_of_Power_Commencement'),
('Proud Justice! Pride Troopers', '2021-01-18', '2020-07-16', 'https://dbz-dokkanbattle.fandom.com/wiki/Proud_Justice!_Pride_Troopers'),
('Dragon Ball Super: Universe Survival Saga - Final Battle of the Tournament of Power', '2018-09-13', '2018-04-26', 'https://dbz-dokkanbattle.fandom.com/wiki/Dragon_Ball_Super:_Universe_Survival_Saga_-_Final_Battle_of_the_Tournament_of_Power'),
('Saiyan Trio Led by Fate', '2020-07-07', '2020-01-29', 'https://dbz-dokkanbattle.fandom.com/wiki/Saiyan_Trio_Led_by_Fate'),
('Dragon Ball Super: Broly', '2019-02-01', '2018-12-14', 'https://dbz-dokkanbattle.fandom.com/wiki/Dragon_Ball_Super:_Broly'),
('Dragon Ball Super: Super Hero', '2022-12-28', '2022-12-28', 'https://dbz-dokkanbattle.fandom.com/wiki/Dragon_Ball_Super:_Super_Hero'),
('Desert Rescue! Giru Saves the Day!', '2019-07-07', '2019-01-29', 'https://dbz-dokkanbattle.fandom.com/wiki/Desert_Rescue!_Giru_Saves_the_Day!'),
('Dragon Ball GT: Baby Saga', '2016-10-11', '2016-05-26', 'https://dbz-dokkanbattle.fandom.com/wiki/Dragon_Ball_GT:_Baby_Saga'),
('Dragon Ball GT: Baby Saga Finale', '2017-07-12', '2017-02-07', 'https://dbz-dokkanbattle.fandom.com/wiki/Dragon_Ball_GT:_Baby_Saga_Finale'),
('Dragon Ball GT: Ultimate Android Saga', '2018-11-21', '2018-07-01', 'https://dbz-dokkanbattle.fandom.com/wiki/Dragon_Ball_GT:_Ultimate_Android_Saga'),
('Surpass Goku! The Reinvention of Vegeta', '2021-02-01', '2020-10-30', 'https://dbz-dokkanbattle.fandom.com/wiki/Surpass_Goku!_The_Reinvention_of_Vegeta'),
('Dragon Ball GT: 7 Shadow Dragons Saga', '2019-07-23', '2019-02-15', 'https://dbz-dokkanbattle.fandom.com/wiki/Dragon_Ball_GT:_7_Shadow_Dragons_Saga'),
('Dragon Ball GT: A Hero''s Legacy', '2017-09-09', '2017-05-09', 'https://dbz-dokkanbattle.fandom.com/wiki/Dragon_Ball_GT:_A_Hero%27s_Legacy'),
('Inherited Fate! Warriors a Century Later', '2022-03-18', '2022-03-01', 'https://dbz-dokkanbattle.fandom.com/wiki/Inherited_Fate!_Warriors_a_Century_Later'),
('Super Warrior Memorial - Goku and Rivals', '2023-07-07', '2023-01-29', 'https://dbz-dokkanbattle.fandom.com/wiki/Super_Warrior_Memorial_-_Goku_and_Rivals'),
('Super Warrior Memorial - Goku and Friends', '2023-07-07', '2023-01-29', 'https://dbz-dokkanbattle.fandom.com/wiki/Super_Warrior_Memorial_-_Goku_and_Friends'),
('Legacies of Remarkable Fathers', '2022-07-07', '2022-01-29', 'https://dbz-dokkanbattle.fandom.com/wiki/Legacies_of_Remarkable_Fathers'),
('A Fateful Encounter?! Bulma and Vegeta', '2022-07-07', '2022-01-29', 'https://dbz-dokkanbattle.fandom.com/wiki/A_Fateful_Encounter%3F!_Bulma_and_Vegeta'),
('Ruler of the Universe and the Warrior Race: Emperor''s Intentions', '2021-08-26', '2021-08-26', 'https://dbz-dokkanbattle.fandom.com/wiki/Ruler_of_the_Universe_and_the_Warrior_Race:_Emperor%27s_Intentions'),
('Fated History! The Saiyan in Rebellion', '2021-09-09', '2021-09-09', 'https://dbz-dokkanbattle.fandom.com/wiki/Fated_History!_The_Saiyan_in_Rebellion'),
('Ruler of the Universe and the Warrior Race: Legend of the Super Saiyan', '2021-08-26', '2021-08-26', 'https://dbz-dokkanbattle.fandom.com/wiki/Ruler_of_the_Universe_and_the_Warrior_Race:_Legend_of_the_Super_Saiyan'),
('The Mysterious Alien Warrior From Space', 'unknown', 'unknown', 'https://dbz-dokkanbattle.fandom.com/wiki/The_Mysterious_Alien_Warrior_From_Space'),
('The Saiyan Warrior Race', 'unknown', 'unknown', 'https://dbz-dokkanbattle.fandom.com/wiki/The_Saiyan_Warrior_Race'),
('The Strongest Rivals (Story Event)', 'unknown', 'unknown', 'https://dbz-dokkanbattle.fandom.com/wiki/The_Strongest_Rivals_(Story_Event)'),
('Defeat the Legendary Super Saiyan (Story Event)', 'unknown', 'unknown', 'https://dbz-dokkanbattle.fandom.com/wiki/Defeat_the_Legendary_Super_Saiyan_(Story_Event)'),
('Go Forth!! Hero of Justice (6 Events)', 'unknown', 'unknown', 'https://dbz-dokkanbattle.fandom.com/wiki/Go_Forth!_Hero_of_Justice_(6_Events)');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
