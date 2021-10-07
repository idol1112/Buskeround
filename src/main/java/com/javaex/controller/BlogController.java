package com.javaex.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.ArtistService;
import com.javaex.service.BlogService;
import com.javaex.vo.BlogVo;
import com.javaex.vo.NoticeVo;
import com.javaex.vo.ResumeVo;

@RequestMapping(value = "/blog/")
@Controller
public class BlogController {

	@Autowired
	BlogService blogService;
    @Autowired
    ArtistService artistService;

	@RequestMapping(value = "blog_main/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_main(@PathVariable("id") String id, Model model) {
		System.out.println("[BlogController.blog_main()]");

		// 해더 정보 가져오기
		BlogVo blogVo = blogService.selectUser(id);
		model.addAttribute(blogVo);
		
		// 이력사항 가져오기
		List<ResumeVo> resumeList = blogService.getResumeList(id);
		model.addAttribute("resumeList", resumeList);

		//Aside 리스트
		model.addAttribute("BlogLive", artistService.getBlogLive());
		System.out.println("아티스트 라이브 리스트: " + artistService.getBlogLive());

		System.out.println("BlogVo: " + blogVo);

		return "Blog/blog_main";

	}

	//ModifyForm
	@RequestMapping(value = "blog_modify/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_modifyform(@PathVariable("id") String id, Model model) {
		System.out.println("[BlogController.blog_modify()]");

		// 해더 정보 가져오기
		BlogVo blogVo = blogService.selectUser(id);
		model.addAttribute("blogVo", blogVo);

		// 이력사항 가져오기
		List<ResumeVo> resumeList = blogService.getResumeList(id);
		model.addAttribute("resumeList", resumeList);

		return "Blog/blogModifyForm";
	}

	// 수정
	@RequestMapping(value = "modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_modify(@ModelAttribute BlogVo blogVo,
			@RequestParam(value = "resume_content[]", required = false, defaultValue="0") List<String> resumeContentList,
			@RequestParam(value = "file1", required = false, defaultValue = "0") MultipartFile file,
			@RequestParam("img_check") int img) {
		System.out.println("[BlogController.modify()]");

		// 확인
		System.out.println("modify.blogVo: " + blogVo);
		System.out.println("modify.file: " + file);
		System.out.println("imgCheck: " + img);
		System.out.println("이력사항");
		//이력사항
		for(String s : resumeContentList) {
			System.out.println(s);
		}

		List<ResumeVo> resumeList = new ArrayList<>();
		for(String s : resumeContentList) {

			resumeList.add(new ResumeVo(0, blogVo.getUser_no(), s));
		}
		System.out.println("리스트 출력" + resumeList);

		if (img == 2) {
			// 이미지 삭제
			int count = blogService.modifyDeleteImg(blogVo, resumeList);

			// 수정
			System.out.println("수정 완료 여부: " + count);
		} else {
			// 이미지 X
			if (file.isEmpty()) {
				int count = blogService.modify(blogVo, resumeList);
				// 수정
				System.out.println("수정 완료 여부: " + count);

			} else {
				// 이미지 수정
				int count = blogService.modifyImg(blogVo, file, resumeList);

				// 수정
				System.out.println("수정 완료 여부: " + count);
			}

		}

		// 수정 완료
		return "redirect:/blog/blog_main/" + blogVo.getId();
	}


	@RequestMapping(value = "blog_timeline/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_timeline(@PathVariable("id") String id, Model model) {
		System.out.println("[TestingController.blog_timeline()]");

		// 해더 정보 가져오기
		BlogVo blogVo = blogService.selectUser(id);
		model.addAttribute(blogVo);

		return "Blog/blog_timeline";

	}

	@RequestMapping(value = "blog_gallery/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_gallery(@PathVariable("id") String id, Model model) {
		System.out.println("[TestingController.blog_gallery()]");

		// 해더 정보 가져오기
		BlogVo blogVo = blogService.selectUser(id);
		model.addAttribute(blogVo);

		return "Blog/blog_gallery";

	}

	@RequestMapping(value = "blog_guestbook/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_guestbook(@PathVariable("id") String id, Model model) {
		System.out.println("[TestingController.blog_guestbook()]");

		// 해더 정보 가져오기
		BlogVo blogVo = blogService.selectUser(id);
		model.addAttribute(blogVo);

		return "Blog/blogGuestbookBoard";

	}

	@RequestMapping(value = "blog_notice/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_noticeboard(@PathVariable("id") String id, Model model) {
		System.out.println("[TestingController.blog_notice()]");

		// 해더 정보 가져오기
		BlogVo blogVo = blogService.selectUser(id);
		model.addAttribute(blogVo);

		return "Blog/blogNoticeBoard";

	}
	
	@RequestMapping(value = "blog_write/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_writeform(@PathVariable("id") String id, Model model) {
		System.out.println("[TestingController.blog_writeForm()]");
		
		// 해더 정보 가져오기
		BlogVo blogVo = blogService.selectUser(id);
		model.addAttribute(blogVo);
		
		return "Blog/blogWriteForm";
		
	}
	
	@RequestMapping(value = "writePost/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_writeform(@PathVariable("id") String id,
								 @ModelAttribute NoticeVo noticeVo) {
		System.out.println("[TestingController.writePost()]");
		System.out.println("들어온 정보: " + noticeVo);
		
		blogService.writePost(noticeVo);
		
		
		
		return "redirect:/blog/blog_main/" + id;
		
	}

}
