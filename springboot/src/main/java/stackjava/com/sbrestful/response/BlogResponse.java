/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.response;
import stackjava.com.sbrestful.entities.Blog;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class BlogResponse {
        private List<Blog> data;

    public List<Blog> getData() {
        return data;
    }

    public void setData(List<Blog> data) {
        this.data = data;
    }
}
