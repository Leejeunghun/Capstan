<?php
function defineStrings() {
	switch($_SESSION['lang']) {
		case "en":
			define("WELCOME_TXT","Welcome!");
			define("CHOOSE_TXT","Choose Language");
		break;

		case "ko":
			define("WELCOME_TXT","어서 오세요!");
			define("CHOOSE_TXT","언어 선택");
		break;

		case "ja":
			define("WELCOME_TXT","ようこそ！");
			define("CHOOSE_TXT","言語を選択");
		break;

		default:
			define("WELCOME_TXT","Welcome!");
			define("CHOOSE_TXT","Choose Language");
		break;
	}
}
?>