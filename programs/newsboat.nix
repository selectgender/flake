{ pkgs, config, ... }: {
  home.packages = with pkgs; [
    newsboat
  ];

  programs.newsboat = {
    enable = true;
    urls = [
      {
        tags = [
          "youtube"
	  "gaming"
	];
	title = "CoryXKenshin";
	url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCiYcA0gJzg855iSKMrX3oHg";
      }
      {
        tags = [
          "youtube"
	  "gaming"
	];
	title = "IvoryCello";
	url = "https://www.youtube.com/feeds/videos.xml?channel_id=UClwgplbUVOmqhiKbTkmX7yQ";
      }
      {
        tags = [
	  "youtube"
	];
	title = "Plan 3";
	url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCrlzgjrKUa3AlrfSZTBG2fg";
      }
      {
        tags = [
	  "youtube"
	];
	title = "Niko Omilana";
	url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCdcUmdOxMrhRjKMw-BX19AA";
      }
      {
        tags = [
          "youtube"
	  "theorists"
	];
	title = "Game Theory";
	url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCo_IB5145EVNcf8hw1Kku7w";
      }
      {
        tags = [
          "youtube"
	  "theorists"
	];
	title = "Film Theory";
	url = "https://www.youtube.com/feeds/videos.xml?channel_id=UC3sznuotAs2ohg_U__Jzj_Q";
      }
      {
        tags = [
          "youtube"
	  "theorists"
	];
	title = "Food Theory";
	url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCHYoe8kQ-7Gn9ASOlmI0k6Q";
      }
      {
        tags = [
          "youtube"
	  "theorists"
	];
	title = "Style Theory";
	url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCd4t3EEUy0LUOM4MTdjpNHA";
      }
    ];
  };
}
