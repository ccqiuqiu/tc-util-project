/*******************************************************************************
 * Copyright (c) Nov 5, 2015 @author <a href="mailto:iffiff1@gmail.com">Tyler Chen</a>.
 * All rights reserved.
 *
 * Contributors:
 *     <a href="mailto:iffiff1@gmail.com">Tyler Chen</a> - initial API and implementation
 ******************************************************************************/
package org.iff.infra.common;

/**
 * @author <a href="mailto:iffiff1@gmail.com">Tyler Chen</a> 
 * @since Nov 5, 2015
 */
public interface Getable<T> {

	T get(Object key);

	T get(Object key, T defaultValue);
}
