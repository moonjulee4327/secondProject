package kr.or.ddit.app.acm.service;

import java.util.List; 

import kr.or.ddit.app.acm.dao.AcommodationDAOImpl;
import kr.or.ddit.app.acm.dao.IAcommodationDAO;
import kr.or.ddit.app.acm.vo.AcommodationVO; 

public class AcommodationServiceImpl implements IAcommodationService {
   
   private static IAcommodationService acmService;

   private IAcommodationDAO acmDao;
   
   private AcommodationServiceImpl() {
      acmDao = AcommodationDAOImpl.getInstance();
   }
   
   public static IAcommodationService getInstance() {
      if(acmService == null) {
         acmService = new AcommodationServiceImpl();
      }
      
      return acmService;
   }

   @Override
   public int register(AcommodationVO acmv) {
      int cnt = acmDao.insert(acmv);
      return cnt;
   }

   @Override
   public boolean check(int acmId) {
      boolean chk = acmDao.check(acmId);
      return chk;
   }

   @Override
   public int modify(AcommodationVO acmv) {
      int cnt = acmDao.update(acmv);
      return cnt;
   }

   @Override
   public int remove(int acmId) {
      int cnt = acmDao.delete(acmId);
      return cnt;
   }

   @Override
   public List<AcommodationVO> getAllAcmList() {
      List<AcommodationVO> acmList = acmDao.getAllAcmList();
      return acmList;
   }
   
   @Override
   public List<AcommodationVO> search(AcommodationVO acmv) {
      
      List<AcommodationVO> acmList = acmDao.search(acmv);
      
      return acmList;
   }

   @Override
   public AcommodationVO getAcm(int acmId) {
      
	   AcommodationVO acmv = acmDao.getAcm(acmId);
      
      return acmv;
   }

   
}