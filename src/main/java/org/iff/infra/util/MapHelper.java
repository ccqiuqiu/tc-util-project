/*******************************************************************************
 * Copyright (c) 2014-2-26 @author <a href="mailto:iffiff1@gmail.com">Tyler Chen</a>.
 * All rights reserved.
 *
 * Contributors:
 *     <a href="mailto:iffiff1@gmail.com">Tyler Chen</a> - initial API and implementation
 ******************************************************************************/
package org.iff.infra.util;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * A Map helper
 * @author <a href="mailto:iffiff1@gmail.com">Tyler Chen</a> 
 * @since 2014-2-26
 */
public class MapHelper {

	/**
	 * <pre>
	 * Usage : toMap("KEY1", value1, "KEY2", value2);
	 * Expect: map = new LinkedHashMap(); map.put("KEY1", value1); map.put("KEY2", value2);
	 * </pre>
	 * @param params
	 * @return
	 * @author <a href="mailto:iffiff1@gmail.com">Tyler Chen</a> 
	 * @since 2014-3-14
	 */
	public static Map toMap(Object... params) {
		Map map = new LinkedHashMap();
		Assert.notNull(params);
		Assert.isTrue(params.length % 2 == 0);
		for (int i = 0; i < params.length; i++) {
			map.put(params[i++], params[i]);
		}
		return map;
	}

	/**
	 * <pre>
	 * Usage : fillMap(map, "KEY1", value1, "KEY2", value2);
	 * Expect: map.put("KEY1", value1); map.put("KEY2", value2);
	 * </pre>
	 * @param map
	 * @param params
	 * @return
	 * @author <a href="mailto:iffiff1@gmail.com">Tyler Chen</a> 
	 * @since 2014-3-14
	 */
	public static Map fillMap(Map map, Object... params) {
		map = map == null ? new LinkedHashMap() : map;
		Assert.notNull(params);
		Assert.isTrue(params.length % 2 == 0);
		for (int i = 0; i < params.length; i++) {
			map.put(params[i++], params[i]);
		}
		return map;
	}

	/**
	 * get map value by path, 'a/b/c' -&gt; map.get('a').get('b').get('c')
	 * @param map
	 * @param path
	 * @return
	 * @author <a href="mailto:iffiff1@gmail.com">Tyler Chen</a> 
	 * @since 2015-2-6
	 */
	public static Object getByPath(Map map, String path) {
		if (path == null || map == null || map.isEmpty()) {
			return null;
		}
		String[] paths = path.split("/");
		Map tmp = map;
		for (int i = 0; i < paths.length - 1; i++) {
			if (paths[i].length() < 1) {// consider: /a//b -> /a/b -> a/b
				continue;
			}
			Object value = tmp.get(paths[i]);
			if (value instanceof Map) {
				tmp = (Map) value;
			} else {
				return null;
			}
		}
		return tmp.get(paths[paths.length - 1]);
	}

	/**
	 * set map value by path, 'a/b/c' -&gt; map.get('a').get('b').set('c', value)
	 * @param map
	 * @param path
	 * @param value
	 * @author <a href="mailto:iffiff1@gmail.com">Tyler Chen</a> 
	 * @since 2015-2-6
	 */
	public static void setByPath(Map map, String path, Object value) {
		if (path == null || map == null) {
			return;
		}
		String[] paths = path.split("/");
		Map tmp = map;
		for (int i = 0; i < paths.length - 1; i++) {
			if (paths[i].length() < 1) {// consider: /a//b -> /a/b -> a/b
				continue;
			}
			Object val = tmp.get(paths[i]);
			if (val == null) {
				val = new LinkedHashMap<String, Object>();
				tmp.put(paths[i], val);
			}
			if (!(val instanceof Map)) {
				Logger.error(FCS.get("[MapHelper.setByPath][{0}][{1}][ISNOTMAP][{2}]", path, paths[i], val.getClass()
						.getName()));
				return;
			} else {
				tmp = (Map) val;
			}
		}
		tmp.put(paths[paths.length - 1], value);
	}
}
