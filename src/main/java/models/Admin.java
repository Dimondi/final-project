package models;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Admin extends User{

    public Admin(String email) {
        super(-1, email, "Admin", "User");
    }

    public Admin(int id, String email) {
        super(id, email, "User", "Admin");
    }
}
