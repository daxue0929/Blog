package ssm.blog.service;

import java.util.List;
import java.util.Map;

import ssm.blog.entity.Link;

/**
 * @Description 友情链接Service接口
 * @author daxue
 *
 */
public interface LinkService {

	// 获取友情链接
	public List<Link> getLinkData();

	public List<Link> listLinkData(Map<String, Object> map);

	// 获取总记录数
	public Long getTotal(Map<String, Object> map);

	// 添加友情链接
	public Integer addLink(Link link);

	// 更新友情链接
	public Integer updateLink(Link link);

	// 删除友情链接
	public Integer deleteLink(Integer id);
}
