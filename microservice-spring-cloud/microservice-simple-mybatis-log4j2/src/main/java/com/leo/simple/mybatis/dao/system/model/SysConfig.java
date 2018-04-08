
package com.leo.simple.mybatis.dao.system.model;

import java.io.Serializable;

public class SysConfig implements Serializable {

	private static final long serialVersionUID = -2134282331115496097L;

	private Long id;

	private String configGroup;
	/** 配置代码 */
	private String configKey;
	/** 配置值 */
	private String configValue;
	/** 是否可用 */
	private Boolean isAvailability;
	/** 简要说明 */
	private String description;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getConfigGroup() {
		return configGroup;
	}

	public void setConfigGroup(String configGroup) {
		this.configGroup = configGroup;
	}

	public String getConfigKey() {
		return configKey;
	}

	public void setConfigKey(String configKey) {
		this.configKey = configKey;
	}

	public String getConfigValue() {
		return configValue;
	}

	public void setConfigValue(String configValue) {
		this.configValue = configValue;
	}

	public Boolean getIsAvailability() {
		return isAvailability;
	}

	public void setIsAvailability(Boolean isAvailability) {
		this.isAvailability = isAvailability;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "SysConfig [id=" + id + ", configGroup=" + configGroup + ", configKey=" + configKey + ", configValue="
				+ configValue + ", isAvailability=" + isAvailability + ", description=" + description + "]";
	}

}
