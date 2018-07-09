package all.entity;

import all.security.MyRole;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Entity
public class User implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String surname;
    private String email;


    private String username;
    public String getUsername() {
        return username;
    }

    private String password;
    public String getPassword() {
        return password;
    }

    @Enumerated(EnumType.STRING)
    private MyRole role = MyRole.ROLE_USER;
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority(role.name()));       return authorities;
    }

    private boolean accNonExp = true;
    public boolean isAccountNonExpired() {
        return accNonExp;
    }

    private boolean accNonLock = true;
    public boolean isAccountNonLocked() {
        return accNonLock;
    }

    private boolean credNonExp = true;
    public boolean isCredentialsNonExpired() {
        return credNonExp;
    }

    private boolean enable = true;
    public boolean isEnabled() {
        return enable;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public MyRole getRole() {
        return role;
    }

    public void setRole(MyRole role) {
        this.role = role;
    }

    public boolean isAccNonExp() {
        return accNonExp;
    }

    public void setAccNonExp(boolean accNonExp) {
        this.accNonExp = accNonExp;
    }

    public boolean isAccNonLock() {
        return accNonLock;
    }

    public void setAccNonLock(boolean accNonLock) {
        this.accNonLock = accNonLock;
    }

    public boolean isCredNonExp() {
        return credNonExp;
    }

    public void setCredNonExp(boolean credNonExp) {
        this.credNonExp = credNonExp;
    }

    public boolean isEnable() {
        return enable;
    }

    public void setEnable(boolean enable) {
        this.enable = enable;
    }
}
