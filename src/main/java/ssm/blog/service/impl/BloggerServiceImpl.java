package ssm.blog.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ssm.blog.dao.BloggerDao;
import ssm.blog.entity.Blogger;
import ssm.blog.service.BloggerService;

/**
 * @Description ����Serviceʵ����
 * @author Ni Shengwu
 *
 */
@Service("bloggerService")
public class BloggerServiceImpl implements BloggerService {

	@Resource
	private BloggerDao bloggerDao;


	public Blogger getByUsername(String username) {
		return bloggerDao.getByUsername(username);
	}


	public Blogger getBloggerData() {
		return bloggerDao.getBloggerData();
	}

	public Integer updateBlogger(Blogger blogger) {
		return bloggerDao.updateBlogger(blogger);
	}

}
