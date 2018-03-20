package com.leo.microservice.user.model.system;

public class SysConfig {

	// columns START
	/** 创建时间 */
	private java.util.Date createTime;
	/** 配置分组 */
	private String configGroup;
	/** 配置代码 */
	private String configKey;
	/** 配置值 */
	private String configValue;
	/** 是否可用 */
	private Boolean isAvailability;
	/** 简要说明 */
	private String description;

	public java.util.Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(java.util.Date createTime) {
		this.createTime = createTime;
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

}
