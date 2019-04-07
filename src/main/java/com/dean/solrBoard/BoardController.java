package com.dean.solrBoard;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrQuery.ORDER;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.SolrInputDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
    private static final SolrClient solr = new HttpSolrClient.Builder("http://localhost:8983/solr/solrBoard").build();
    
    //dashboard
    @RequestMapping(value = "/index")
    public String indexView(HttpServletRequest request) {
    	
    	return "board/main";
    }
    
    // 게시판리스트
    @RequestMapping(value = "/boardList")
    public String boardList(HttpServletRequest request, ModelMap modelMap) {
        SolrQuery query = new SolrQuery();
        query.setQuery("*:*");
        query.setRows(Integer.MAX_VALUE);
        query.addSort("id", ORDER.desc);
        try {
            QueryResponse rsp = solr.query(query);
            SolrDocumentList docs=rsp.getResults();
            
            modelMap.addAttribute("listview", docs);
        } catch (SolrServerException | IOException e) {
            logger.error("list error");
        }
        
        return "board/boardList";
    }
    
    // 게시판 글쓰기
    @RequestMapping(value = "/boardForm")
    public String boardForm(HttpServletRequest request, ModelMap modelMap) {
        String brdNo = request.getParameter("brdNo");
        if (brdNo!=null) {
            getOneboard(brdNo, modelMap);
        }
        
        return "board/boardForm";
    }
    
    // 게시판 글쓰기
    @RequestMapping(value = "/boardSave")
    public String boardSave(HttpServletRequest request, BoardVO boardInfo) {
        String brdNo = boardInfo.getBrdNo();
        if (brdNo==null || "".equals(brdNo)) {
            boardInfo.setBrdNo( getNewBrdNo() );
            boardInfo.setBrdDate( new SimpleDateFormat("yyyy-MM-dd").format(new Date()) );
        }
        
        SolrInputDocument solrDoc = new SolrInputDocument();
        solrDoc.addField("id", boardInfo.getBrdNo());
        solrDoc.addField("brdTitle", boardInfo.getBrdTitle());
        solrDoc.addField("brdWriter", boardInfo.getBrdWriter());
        solrDoc.addField("brdContent", boardInfo.getBrdContent());
        solrDoc.addField("brdDate", boardInfo.getBrdDate());
         
        try {
            solr.add(solrDoc);
            solr.commit();
        } catch (SolrServerException | IOException e) {
            logger.error("save error");
        }
        
        return "redirect:/boardList";
    }
   
    public static String getNewBrdNo() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmssSSS");
        return sdf.format(new Date()) + (int) (Math.random() * 10);
    }

    // 게시글 읽기
    @RequestMapping(value = "/boardRead")
    public String boardRead(HttpServletRequest request, ModelMap modelMap) {
        String brdNo = request.getParameter("brdNo");
        getOneboard(brdNo, modelMap);
  
        return "board/boardRead";
    }
    
    private void getOneboard(String brdNo, ModelMap modelMap) {
        SolrQuery query = new SolrQuery();
        query.setQuery("id:" + brdNo);
        query.setRows(1);
        try {
            QueryResponse rsp = solr.query(query);
            SolrDocumentList docs=rsp.getResults();  
            
            modelMap.addAttribute("boardInfo", docs.get(0));
        } catch (SolrServerException | IOException e) {
            logger.error("read error");
        }        
    } 
    
    // 게시글 삭제
    @RequestMapping(value = "/boardDelete")
    public String boardDelete(HttpServletRequest request) {
        String brdNo = request.getParameter("brdNo");
        
        try {
            solr.deleteByQuery("id:" + brdNo);
            solr.commit();
        } catch (SolrServerException | IOException e) {
            logger.error("delete error");
        }
        
        return "redirect:/boardList";
    }

}
