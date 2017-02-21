package util;

import org.jaudiotagger.audio.mp3.MP3AudioHeader;
import org.jaudiotagger.audio.mp3.MP3File;
import org.jaudiotagger.tag.id3.AbstractID3v2Tag;

public class MP3Info {

	private static String mp3Path = "mmt/sda/薛之谦 - 绅士 (Live).mp3";//这样爱了(电视剧《轩辕剑之天之痕》片尾曲)
	private static MP3File mp3File;
	private static final int START=6;

	//
	private int length;
	//
	private String singerName;
	//
	private String musicName;
	
	private static void getHead() {
		try {
			System.out.println("----------------Loading...Head-----------------");
			mp3File = new MP3File(mp3Path);
			MP3AudioHeader header = mp3File.getMP3AudioHeader();
			System.out.println("时长: " + header.getTrackLength()); //获得时长
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void getContent() {
		try {
			System.out.println("----------------Loading...Content-----------------");
			AbstractID3v2Tag id3v2tag=  mp3File.getID3v2Tag();
			String songName=new String(id3v2tag.frameMap.get("TIT2").toString().getBytes("UTF-8"),"UTF-8");//UTF-8 GB2312
            String singer=new String(id3v2tag.frameMap.get("TPE1").toString()); // .getBytes("ISO-8859-1"),"GB2312"
            String author=new String(id3v2tag.frameMap.get("TALB").toString()); //.getBytes("ISO-8859-1"),"GB2312"
            System.out.println("歌名："+songName.substring(START, songName.length()-3));  
            System.out.println("歌手:"+singer.substring(START,singer.length()-3));  
            System.out.println("专辑名："+author.substring(START,author.length()-3));  
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("All Info："+mp3File.displayStructureAsPlainText());
	}
}
