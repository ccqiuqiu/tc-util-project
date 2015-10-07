import org.iff.infra.util.moduler.TCApplication;
import org.iff.infra.util.moduler.TCServer;

/*******************************************************************************
 * Copyright (c) 2014-7-3 @author <a href="mailto:iffiff1@gmail.com">Tyler Chen</a>.
 * All rights reserved.
 *
 * Contributors:
 *     <a href="mailto:iffiff1@gmail.com">Tyler Chen</a> - initial API and implementation
 ******************************************************************************/

/**
 * @author <a href="mailto:iffiff1@gmail.com">Tyler Chen</a> 
 * @since 2014-7-3
 */

public class Main {

	public static void main(String[] args) {
		System.setProperty("tc_base_paths", "file:///Users/zhaochen/Desktop/share/test/commonModule");
		TCServer server = TCServer.create(8080, "/");
		server.start();
	}

	public static void main4(String[] args) {
		System.setProperty("tc_port", "8080");
		System.setProperty("tc_context", "/");
		System.setProperty("tc_app_path", "/home/tyler/Desktop/work-temp/test");
		System.setProperty("tc_file_browser_path", "/home/tyler/Desktop/work-temp/test");
		System.setProperty("tc_webcome_file", "commonModule/index.html");
		TCApplication.me().loadSystemProperties().initByConf().initModule();
	}

	public static void main1(String[] args) throws Exception {
		//for test
		//System.setProperty("app_root", "E:/workspace/JeeGalileo/tc-util-project/src/main/resources/META-INF/tc-framework");
		//System.setProperty("tc_jar_path", "META-INF/tc-framework-test");
		//System.setProperty("resourceBase", "E:/workspace/JeeGalileo/tc-util-project/src/test/resources/webapp");
		System.setProperty("tc_file_browser_path", "/media/新加卷");
		System.setProperty("tc_server_xml",
				"file:///media/新加卷/workspace/JeeGalileo/tc-util-project2/src/test/resources/META-INF");
		System.setProperty("tc_groovy_framework_start_class", "org.iff.groovy.framework.TCStarter");
		System.setProperty("tc_file_path",
				"/media/新加卷/workspace/JeeGalileo/tc-util-project2/src/main/resources/META-INF/tc-framework4");
		{
			org.iff.infra.util.groovy.TCCLassManager.main(args);
		}
	}

	public static void main3(String[] args) throws Exception {
		//for test
		//System.setProperty("app_root", "E:/workspace/JeeGalileo/tc-util-project/src/main/resources/META-INF/tc-framework");
		//System.setProperty("tc_jar_path", "META-INF/tc-framework-test");
		//System.setProperty("resourceBase", "E:/workspace/JeeGalileo/tc-util-project/src/test/resources/webapp");
		System.setProperty("tc_file_browser_path", "/media/新加卷");
		System.setProperty("tc_server_xml",
				"file:///media/新加卷/workspace/JeeGalileo/tc-util-project2/src/test/resources/META-INF");
		System.setProperty("tc_groovy_framework_start_class", "org.iff.groovy.framework.TCStarter");
		System.setProperty("tc_file_path",
				"/media/新加卷/workspace/JeeGalileo/tc-util-project2/src/main/resources/META-INF/tc-framework3");
		{
			org.iff.infra.util.groovy.TCCLassManager.main(args);
		}
	}

}
