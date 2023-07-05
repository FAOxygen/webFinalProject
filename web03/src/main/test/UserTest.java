import com.fao.pojo.User;
import com.fao.service.UserService;
import com.fao.service.UserServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UserTest {
    @Test
    public void testadd(){
        ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService= (UserService) applicationContext.getBean("userservice");
        User user=new User();
        user.setName("1111");
        user.setPassword("1111");
        System.out.println(userService.addUser(user));
    }

    @Test
    public void test_querUserByName(){
        ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext.xml");
        UserServiceImpl userService= (UserServiceImpl) applicationContext.getBean("userService");
        System.out.println(userService.querUserByName("1439346595@qq.com"));
    }

}
