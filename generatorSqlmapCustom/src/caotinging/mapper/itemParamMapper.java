package caotinging.mapper;

import caotinging.pojo.itemParam;
import caotinging.pojo.itemParamExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface itemParamMapper {
    int countByExample(itemParamExample example);

    int deleteByExample(itemParamExample example);

    int deleteByPrimaryKey(Long id);

    int insert(itemParam record);

    int insertSelective(itemParam record);

    List<itemParam> selectByExampleWithBLOBs(itemParamExample example);

    List<itemParam> selectByExample(itemParamExample example);

    itemParam selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") itemParam record, @Param("example") itemParamExample example);

    int updateByExampleWithBLOBs(@Param("record") itemParam record, @Param("example") itemParamExample example);

    int updateByExample(@Param("record") itemParam record, @Param("example") itemParamExample example);

    int updateByPrimaryKeySelective(itemParam record);

    int updateByPrimaryKeyWithBLOBs(itemParam record);

    int updateByPrimaryKey(itemParam record);
}