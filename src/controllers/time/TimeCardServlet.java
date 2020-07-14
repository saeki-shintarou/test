package controllers.time;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Time;
import utils.DBUtil;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/time")
public class TimeCardServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimeCardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();

        int page = 1;
        try {
            page = Integer.parseInt(request.getParameter("page"));
        } catch(NumberFormatException e) {}

        // 最大件数と開始位置を指定してメッセージを取得
        List<Time> time = em.createNamedQuery("getAllTime", Time.class)
                .setFirstResult(4 * (page - 1))
                .setMaxResults(4)
                .getResultList();

        // 全件数を取得
        long Time_count = (long)em.createNamedQuery("getTimeCount", Long.class)
                                      .getSingleResult();

        em.close();

        request.setAttribute("Time", time);
        request.setAttribute("Time_count", Time_count);     // 全件数
        request.setAttribute("page", page);                         // ページ数

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/time/index.jsp");
        rd.forward(request, response);
    }}