package com.leo.microservice.leo.contract;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.cloud.contract.wiremock.AutoConfigureWireMock;
import org.springframework.cloud.contract.wiremock.WireMockRestServiceServer;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.client.MockRestServiceServer;
import org.springframework.web.client.RestTemplate;


@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = WebEnvironment.NONE)
@AutoConfigureWireMock(port = 0)
public class WiremockForDocsTests {
	// A service that calls out over HTTP
	@Autowired
	private Service service;
	@Autowired
	private RestTemplate restTemplate;
	// Using the WireMock APIs in the normal way:
	@Test
	public void contextLoads() throws Exception {
		MockRestServiceServer server = WireMockRestServiceServer.with(this.restTemplate) //
				.baseUrl("http://example.org") //
				.stubs("classpath:/stubs/**/*.json").build();
		assertThat(this.service.go()).isEqualTo("Hello World");
		server.verify();
	}

}