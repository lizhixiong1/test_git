package pageutil;

public class PageUtil {
	
	public static int[] numPage(int pageSize,int listSize,int page) {
		
		int pageCount = (listSize/pageSize)+(listSize%pageSize>0?1:0);
		
		int[]pages = null;
		if(pageCount<10) {
			pages = new int[pageCount];
			for(int i=0;i<pageCount;i++) {
				pages[i] = i+1;
			}
		}else {
			pages = new int[10];
			if(page<=7) {
				for(int i=0;i<10;i++) {
					pages[i] = i+1;
				}
			}else {
				if(page<(pageCount-4)) {
					for(int i = 0, p = (page-5); i<10; i++, p++) {
						pages[i] = p;
					}
				}else {
					for(int i=0, p = (pageCount-9);i<10;i++,p++){
						pages[i] = p;
					}
				}
			}
		}
		
		return pages;
	} 
}
