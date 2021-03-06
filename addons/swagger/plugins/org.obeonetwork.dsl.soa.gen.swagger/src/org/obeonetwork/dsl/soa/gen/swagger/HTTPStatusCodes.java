/*******************************************************************************
 * Copyright (c) 2008, 2020 Obeo.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     Obeo - initial API and implementation
 *******************************************************************************/
package org.obeonetwork.dsl.soa.gen.swagger;

public interface HTTPStatusCodes {
	
	public static String HTTP_200 = "200";
	public static String HTTP_200_DESC = "Ok";
	
	public static String HTTP_206 = "206";
	public static String HTTP_206_DESC = "Partial Content";
	
	public static String HTTP_204 = "204";
	public static String HTTP_204_DESC = "No Content";
	
	public static String HTTP_201 = "201";
	public static String HTTP_201_DESC = "Created";
	
	public static String HTTP_404 = "404";
	public static String HTTP_404_DESC = "Not Found";
	
	public static String HTTP_400 = "400";
	public static String HTTP_400_DESC = "Bad Request";

}
