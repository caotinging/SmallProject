package caotinging.mapper;

import caotinging.pojo.itemParamItem;
import caotinging.pojo.itemParamItemExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface itemParamItemMapper {
    int countByExample(itemParamItemExample example);

    int deleteByExample(itemParamItemExample example);

    int deleteByPrimaryKey(Long id);

    int insert(itemParamItem record);

    int insertSelective(itemParamItem record);

    List<itemParamItem> selectByExampleWithBLOBs(itemParamItemExample example);

    List<itemParamItem> selectByExample(itemParamItemExample example);

    itemParamItem selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") itemParamItem record, @Param("example") itemParamItemExample example);

    int updateByExampleWithBLOBs(@Param("record") itemParamItem record, @Param("example") itemParamItemExample example);

    int updateByExample(@Param("record") itemParamItem record, @Param("example") itemParamItemExample example);

    int updateByPrimaryKeySelective(itemParamItem record);

    int updateByPrimaryKeyWithBLOBs(itemParamItem record);

    int updateByPrimaryKey(itemParamItem record);
}