package caotinging.service;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import caotinging.domain.Subarea;
import caotinging.utils.PageBean;

public interface ISubareaService {

	/**
	 * 保存subarea实体对象
	 * @param subarea
	 */
	void saveSubarea(Subarea subarea);

	/**
	 * 获取分页展示对象集合
	 * @param pageBean
	 */
	void getPageList(PageBean<Subarea> pageBean);

	/**
	 * 获取所有分区数据输出到xls文件并返回
	 * @param workbook 
	 * @return
	 */
	void exportAllToXls(HSSFWorkbook workbook);

}