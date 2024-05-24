package registrationController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import registrationDao.UserRegistrationdao;
import registrationDto.UserRegistrationdto;

@Controller
public class UserRegistrationController {

	@Autowired
	UserRegistrationdao registrationdao;
	
	@ResponseBody
	@RequestMapping("/create")
	public String insert(@ModelAttribute UserRegistrationdto registrationdto)
	{
		registrationdao.insertData(registrationdto);
		return "Registration succussfull";
	}
}
