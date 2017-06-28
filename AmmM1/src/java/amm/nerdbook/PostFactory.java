/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook;
import java.util.ArrayList;
import java.util.List;
        
/**
 *
 * @author marcotegas
 */
public class PostFactory {
    private static PostFactory singleton;
    private String connectionString;

    public static PostFactory getInstance() {
        if (singleton == null) {
            singleton = new PostFactory();
        }
        return singleton;
    }
    
    private ArrayList<Post> listaPost=new ArrayList<Post>();
    
    private PostFactory() {
        
        UserFactory userFactory = UserFactory.getInstance();

        //Creazione Post
        Post post1 = new Post();
        post1.setContent("Oggi festa solo io e me stesso !!");
        post1.setId(0);
        post1.setUser(userFactory.getUserById(0));

        Post post2 = new Post();
        post2.setContent("img/festa.jpg");
        post2.setId(1);
        post2.setUser(userFactory.getUserById(0));
        post2.setPostType(Post.Type.IMAGE);

        Post post3 = new Post();
        post3.setContent("img/colosseo.jpg");
        post3.setId(2);
        post3.setUser(userFactory.getUserById(1));
        post3.setPostType(Post.Type.IMAGE);

        Post post4 = new Post();
        post4.setContent("ANDIAMO A CONQUISTARE ");
        post4.setId(3);
        post4.setUser(userFactory.getUserById(1));


        listaPost.add(post1);
        listaPost.add(post2);
        listaPost.add(post3);
        listaPost.add(post4);
        
        
    }
    
    public Post getPostById(int id){
        for(Post post:listaPost){
            if(post.getId()==id){
                return post;
            }
        }
        
        return null;
    }
    
    public List<Post> getPostList(User user){
        List<Post> nuovaLista=new ArrayList<Post>();
        
        
        for(Post post:listaPost){
            if(post.getUser().equals(user)){
                nuovaLista.add(post);
            }
        }
        
        return nuovaLista;
    }
    
    public List<Post> getPostList(Group gruppo){
        List<Post> listaPost=new ArrayList<Post>();
        
        for(Post post:listaPost){
            for(User user:gruppo.getIscritti()){
                if(post.getUser().equals(user)){
                    listaPost.add(post);
                }
            }
        }
        return listaPost;
    }
    
    public void setConnectionString(String s){
	this.connectionString = s;
    }
    public String getConnectionString(){
	return this.connectionString;
    }
}