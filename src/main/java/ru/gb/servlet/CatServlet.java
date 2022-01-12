package ru.gb.servlet;

import ru.gb.model.Cat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "CatHttpServlet",urlPatterns = "/cat")
public class CatServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("cat",getCat());
        // перенаправление на тип

        getServletContext().getRequestDispatcher("/cat.jsp").forward(req,resp);
        List<Cat> cat = ((Cat) req.getAttribute("cat")).getChildrens();
    }

    private Cat getCat() {
        List<Cat> cats = Arrays.asList(
                new Cat("Myrzik",1,null),
                new Cat("Снежок",1,null)
        );
        return new Cat("Barsik",3,cats);
    }
}
