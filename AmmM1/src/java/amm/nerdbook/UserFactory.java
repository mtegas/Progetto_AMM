/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook;

import java.util.ArrayList;

/**
 *
 * @author marcotegas
 */
public class UserFactory {
    private static UserFactory singleton;
    private String connectionString;

    public static UserFactory getInstance() {
        if (singleton == null) {
            singleton = new UserFactory();
        }
        return singleton;
    }
    
    private ArrayList<User> listaUtenti=new ArrayList<User>();
    
    public UserFactory(){
        User user1 = new User();
        user1.setId(0);
        user1.setNome("Cristiano");
        user1.setCognome("Malgioglio");
        user1.setUrlFotoProfilo("img/malgioglio.jpg");
        user1.setFrasePresentazione("");
        user1.setDataDiNascita("");
        user1.setPassword("ciao");
    
        User user2 = new User();
        user2.setId(1);
        user2.setNome("Giulio");
        user2.setCognome("Cesare");
        user2.setUrlFotoProfilo("img/Giulio.jpg");
        user2.setFrasePresentazione("");
        user2.setDataDiNascita("");
        user2.setPassword("ciao");

        
        listaUtenti.add(user1);
        listaUtenti.add(user2);
    }
    
    public User getUserById(int id){
        for (User user : listaUtenti){
            if(user.getId()==id){
                return user;
            }
        }
        return null;
    }
    
    public int getIdByUserAndPass(String username, String password){
        for (User user : listaUtenti){
            if((user.getNome()).equals(username) && 
               user.getPassword().equals(password)){
                return user.getId();
            }
        }
        return -1;
    }
    
    public boolean completeData(int id){
        User user= UserFactory.getInstance().getUserById(id);
        
            if(user.getNome()!=null && user.getCognome()!=null && 
               user.getUrlFotoProfilo()!=null && user.getFrasePresentazione()!=null){
                return true;
            }
        return false;
    }
    
    public void setConnectionString(String s){
	this.connectionString = s;
    }
    public String getConnectionString(){
	return this.connectionString;
    }
}
