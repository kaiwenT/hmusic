package com.hmusic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hmusic.entity.Music;
import com.hmusic.service.MusicService;

@Controller
@RequestMapping(value="/music")
public class MusicController {

	@Autowired
	private MusicService musicService;
	

	/**
     * 歌曲信息列表
     * @return
     */
	@RequestMapping(value = "/musicList")
	public ModelAndView musicList(){
		List<Music> musicList = musicService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("musicList", musicList);
		mv.setViewName("musicList");
		
		return mv;
	}
	/**
     * 歌曲信息列表   页面异步加载
     * @return
     * @ResponseBody 注解的作用是将目标类型数据转换成json格式
     * 另外页面需要加入jquery js
     */
	/*@RequestMapping(value = "/list")
	public @ResponseBody List<music> list(){
		List<music> musicList = musicService.findAll();
		return musicList;
	}
	*/
	
	/**
     * 跳转到添加信息视图
     * @return
     */
	@RequestMapping(value = "/addLoad")
	public ModelAndView addLoad(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("add");
		return mv;
	}
	/**
     * 添加信息
     * @param music
     * @return
     */
	@RequestMapping(value = "/add",method = RequestMethod.POST)
	public String add(Music music){
		musicService.add(music);
		return "redirect:/music/musicList";
	}
	/**
     * 修改信息获取，跳转到修改信息视图
     * @param id
     * @return
     */
	@RequestMapping(value = "/editLoad")
	public ModelAndView editLoad(@RequestParam(value = "id") Integer id){
		Music music = musicService.findByID(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("music", music);
		mv.setViewName("edit");
		return mv;
	}
	/**
     * 修改信息
     * @param music
     * @return
     */
	@RequestMapping(value = "/edit",method = RequestMethod.POST)
	public String edit(Music music){
		musicService.update(music);
		return "redirect:/music/musicList";
	}
	/**
     * 删除歌曲
     * @param id
     * @return
     */
	@RequestMapping(value = "/delete")
	public String delete(@RequestParam(value = "id") Integer id){
		musicService.deleteById(id);
		
		return "redirect:/music/musicList";
	}
	
}
