/**
 * This class is generated by jOOQ
 */
package com.ankur.project;

/**
 * This class is generated by jOOQ.
 *
 * Convenience access to all sequences in public
 */
@javax.annotation.Generated(value    = { "http://www.jooq.org", "3.3.2" },
                            comments = "This class is generated by jOOQ")
@java.lang.SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class Sequences {

	/**
	 * The sequence <code>public.task_taskId_seq</code>
	 */
	public static final org.jooq.Sequence<java.lang.Long> TASK_TASKID_SEQ = new org.jooq.impl.SequenceImpl<java.lang.Long>("task_taskId_seq", com.ankur.project.Public.PUBLIC, org.jooq.impl.SQLDataType.BIGINT.nullable(false));

	/**
	 * The sequence <code>public.user_id_seq</code>
	 */
	public static final org.jooq.Sequence<java.lang.Long> USER_ID_SEQ = new org.jooq.impl.SequenceImpl<java.lang.Long>("user_id_seq", com.ankur.project.Public.PUBLIC, org.jooq.impl.SQLDataType.BIGINT.nullable(false));
}