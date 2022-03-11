package com.ervin.middleware.neo4j.controller;

import com.ervin.middleware.neo4j.result.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ervin.middleware.neo4j.node.Coder;
import com.ervin.middleware.neo4j.repository.CoderRepository;

@RestController
@RequestMapping("/rest/v1.0.1/database/coder") //restful风格的api接口
public class CoderController {
	
	
	@Autowired
	CoderRepository coderRepositiory;
	
	@RequestMapping("/get")
	public Coder GetCoderByName(@RequestParam(value="name") String name){		
		Coder coder = coderRepositiory.findByName(name);	
		return coder;
	}
	
	@PostMapping("/save")
	@Transactional
	public ResponseResult Create(@RequestBody Coder coder) throws Exception{
	   
		Coder result = coderRepositiory.save(coder);
	    if(result!=null){	    		    	
	    	return new ResponseResult(200,result.getName()+"节点创建成功");
	    }
	    return new ResponseResult(500,coder.getName()+"节点创建失败！");
	}
		
}
