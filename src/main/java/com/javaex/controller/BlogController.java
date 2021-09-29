package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.BlogService;
import com.javaex.vo.BlogVo;

@RequestMapping(value = "/blog/")
@Controller
public class BlogController {

	@Autowired
	BlogService blogService;

	@RequestMapping(value = "blog_main/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_main(@PathVariable("id") String id, Model model) {
		System.out.println("[BlogController.blog_main()]");

		// 해더 정보 가져오기
		BlogVo blogVo = blogService.selectUser(id);
		model.addAttribute(blogVo);
		System.out.println("BlogVo: " + blogVo);

		return "Blog/blog_main";

	}

	@RequestMapping(value = "blog_modify/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_modifyform(@PathVariable("id") String id, Model model) {
		System.out.println("[BlogController.blog_modify()]");

		// 해더 정보 가져오기
		BlogVo blogVo = blogService.selectUser(id);
		model.addAttribute(blogVo);

		return "Blog/blogModifyForm";
	}

	// 수정
	@RequestMapping(value = "modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_modify(@ModelAttribute BlogVo blogVo,
			@RequestParam(value = "file1", required = false, defaultValue = "0") MultipartFile file,
			@RequestParam("img_check") int img) {
		System.out.println("[BlogController.modify()]");

		// 확인
		System.out.println("modify.blogVo: " + blogVo);
		System.out.println("modify.file: " + file);
		System.out.println("imgCheck: " + img);

		if (img == 2) {
			// 이미지 삭제
			int count = blogService.modifyDeleteImg(blogVo);

			// 수정
			System.out.println("수정 완료 여부: " + count);
		} else {
			// 이미지 X
			if (file.isEmpty()) {
				int count = blogService.modify(blogVo);
				// 수정
				System.out.println("수정 완료 여부: " + count);

			} else {
				// 이미지 수정
				int count = blogService.modifyImg(blogVo, file);

				// 수정
				System.out.println("수정 완료 여부: " + count);
			}

		}
		// 가져온 정보 수정
		blogService.modify(blogVo);
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
		System.out.println("[TestingController.blog_guestbook()]");
		
		// 해더 정보 가져오기
		BlogVo blogVo = blogService.selectUser(id);
		model.addAttribute(blogVo);
		
		return "Blog/blogNoticeBoard";
		
	}

}
