package com.ervin.middleware.neo4j.node;

import org.neo4j.ogm.annotation.NodeEntity;

/**
 * Neo4j的节点实体类：Coder
 */

@NodeEntity
public class Coder extends BaseEntity {

	private String sex;
	private String hobby;

	public Coder() {

	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

}
