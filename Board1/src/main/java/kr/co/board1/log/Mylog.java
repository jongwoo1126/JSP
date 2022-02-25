package kr.co.board1.log;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

public class Mylog {

	private static Mylog instance =new Mylog(); 
	
	public static Mylog getInstance() {
		return instance;
	}
	
	private Mylog() {}
	
	private Logger _logger = LogManager.getLogger(this.getClass());
	
	public void debug (String msg) {
		_logger.debug(msg);
	}
	public void info(String msg) {
		_logger.info(msg);
	}
	public void warn(String msg) {
		_logger.warn(msg);
	}
	public void error(String msg) {
		_logger.error(msg);
	}
	public void fatal(String msg) {
		_logger.fatal(msg);
	}
}
