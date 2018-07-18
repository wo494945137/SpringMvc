package base;


import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.redis.core.RedisTemplate;

public class TestBase {

	private static ApplicationContext applicationContext;

	static{
		applicationContext = new ClassPathXmlApplicationContext("spring-context.xml");
	}

	@Test
	public void testApplicationContext(){
		System.out.println("11111111111111111"+applicationContext);
	}
	@Test
	public void testRedisConnection(){
		RedisTemplate redisTemplate = (RedisTemplate)applicationContext.getBean("redisTemplate");
		redisTemplate.opsForValue().set("name","张健");
		System.out.println(redisTemplate.opsForValue().get("name")); //这里有输出也可以。
	}

}
