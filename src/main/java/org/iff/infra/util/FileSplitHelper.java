/*******************************************************************************
 * Copyright (c) 2014-6-20 @author <a href="mailto:iffiff1@hotmail.com">Tyler Chen</a>.
 * All rights reserved.
 *
 * Contributors:
 *     <a href="mailto:iffiff1@hotmail.com">Tyler Chen</a> - initial API and implementation
 ******************************************************************************/
package org.iff.infra.util;

import java.io.InputStream;
import java.util.Iterator;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author <a href="mailto:iffiff1@hotmail.com">Tyler Chen</a> 
 * @since 2014-6-20
 */
public class FileSplitHelper {

	public static Iterator<byte[]> split(final InputStream is, final int length) {
		return new Iterator<byte[]>() {
			byte[] buffer = null;

			public boolean hasNext() {
				try {
					if (buffer != null && buffer.length > 0) {
						return true;
					} else {
						buffer = new byte[length];
						int len = is.read(buffer, 0, length);
						if (len < 1) {
							buffer = new byte[0];
						} else if (len < length) {
							byte[] temp = new byte[len];
							System.arraycopy(buffer, 0, temp, 0, len);
							buffer = temp;
						}
						return buffer.length > 0;
					}
				} catch (Exception e) {
					Exceptions.runtime(
							"[9010][FileSplitHelper.Iterator.hasNext()]", e);
				}
				return false;
			}

			public byte[] next() {
				if (buffer == null) {
					hasNext();
				}
				byte[] temp = buffer;
				buffer = null;
				return temp;
			}

			public void remove() {
				Logger
						.warn("[FileSplitHelper.Iterator.remove is not support!]");
			}
		};
	}

	public static void main(String[] args) {
		String a = "da460bea-68fd-4487-9d55-7f8171088cc0" + ":" + "yyyyMMdd"
				+ ":" + "000";
		System.out.println(UUID.randomUUID());
		Pattern p = Pattern
				.compile("^da460bea-68fd-4487-9d55-7f8171088cc0:.*:000$");
		Matcher matcher = p.matcher(a);
		System.out.println(matcher.find());
		System.out.println(matcher.group());
	}
}
