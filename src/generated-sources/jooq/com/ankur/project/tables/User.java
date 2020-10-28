/**
 * This class is generated by jOOQ
 */
package com.ankur.project.tables;

/**
 * This class is generated by jOOQ.
 */
@javax.annotation.Generated(value    = { "http://www.jooq.org", "3.3.2" },
                            comments = "This class is generated by jOOQ")
@java.lang.SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class User extends org.jooq.impl.TableImpl<com.ankur.project.tables.records.UserRecord> {

	private static final long serialVersionUID = -334295517;

	/**
	 * The singleton instance of <code>public.user</code>
	 */
	public static final com.ankur.project.tables.User USER = new com.ankur.project.tables.User();

	/**
	 * The class holding records for this type
	 */
	@Override
	public java.lang.Class<com.ankur.project.tables.records.UserRecord> getRecordType() {
		return com.ankur.project.tables.records.UserRecord.class;
	}

	/**
	 * The column <code>public.user.id</code>.
	 */
	public final org.jooq.TableField<com.ankur.project.tables.records.UserRecord, java.lang.Long> ID = createField("id", org.jooq.impl.SQLDataType.BIGINT.nullable(false).defaulted(true), this, "");

	/**
	 * The column <code>public.user.name</code>.
	 */
	public final org.jooq.TableField<com.ankur.project.tables.records.UserRecord, java.lang.String> NAME = createField("name", org.jooq.impl.SQLDataType.VARCHAR.length(30), this, "");

	/**
	 * The column <code>public.user.email</code>.
	 */
	public final org.jooq.TableField<com.ankur.project.tables.records.UserRecord, java.lang.String> EMAIL = createField("email", org.jooq.impl.SQLDataType.VARCHAR.length(40), this, "");

	/**
	 * The column <code>public.user.password</code>.
	 */
	public final org.jooq.TableField<com.ankur.project.tables.records.UserRecord, java.lang.String> PASSWORD = createField("password", org.jooq.impl.SQLDataType.VARCHAR.length(20), this, "");

	/**
	 * The column <code>public.user.gender</code>.
	 */
	public final org.jooq.TableField<com.ankur.project.tables.records.UserRecord, java.lang.String> GENDER = createField("gender", org.jooq.impl.SQLDataType.VARCHAR.length(10), this, "");

	/**
	 * The column <code>public.user.token</code>.
	 */
	public final org.jooq.TableField<com.ankur.project.tables.records.UserRecord, java.lang.String> TOKEN = createField("token", org.jooq.impl.SQLDataType.VARCHAR.length(30), this, "");

	/**
	 * The column <code>public.user.height</code>.
	 */
	public final org.jooq.TableField<com.ankur.project.tables.records.UserRecord, java.lang.String> HEIGHT = createField("height", org.jooq.impl.SQLDataType.VARCHAR.length(10), this, "");

	/**
	 * The column <code>public.user.weight</code>.
	 */
	public final org.jooq.TableField<com.ankur.project.tables.records.UserRecord, java.lang.Long> WEIGHT = createField("weight", org.jooq.impl.SQLDataType.BIGINT, this, "");

	/**
	 * The column <code>public.user.age</code>.
	 */
	public final org.jooq.TableField<com.ankur.project.tables.records.UserRecord, java.lang.Long> AGE = createField("age", org.jooq.impl.SQLDataType.BIGINT, this, "");

	/**
	 * The column <code>public.user.current_fitness</code>.
	 */
	public final org.jooq.TableField<com.ankur.project.tables.records.UserRecord, java.lang.String> CURRENT_FITNESS = createField("current_fitness", org.jooq.impl.SQLDataType.VARCHAR.length(50), this, "");

	/**
	 * The column <code>public.user.fitness_goals</code>.
	 */
	public final org.jooq.TableField<com.ankur.project.tables.records.UserRecord, java.lang.String> FITNESS_GOALS = createField("fitness_goals", org.jooq.impl.SQLDataType.VARCHAR.length(50), this, "");

	/**
	 * The column <code>public.user.user_comment</code>.
	 */
	public final org.jooq.TableField<com.ankur.project.tables.records.UserRecord, java.lang.String> USER_COMMENT = createField("user_comment", org.jooq.impl.SQLDataType.VARCHAR.length(200), this, "");

	/**
	 * The column <code>public.user.total_task_completed</code>.
	 */
	public final org.jooq.TableField<com.ankur.project.tables.records.UserRecord, java.lang.Long> TOTAL_TASK_COMPLETED = createField("total_task_completed", org.jooq.impl.SQLDataType.BIGINT, this, "");

	/**
	 * Create a <code>public.user</code> table reference
	 */
	public User() {
		this("user", null);
	}

	/**
	 * Create an aliased <code>public.user</code> table reference
	 */
	public User(java.lang.String alias) {
		this(alias, com.ankur.project.tables.User.USER);
	}

	private User(java.lang.String alias, org.jooq.Table<com.ankur.project.tables.records.UserRecord> aliased) {
		this(alias, aliased, null);
	}

	private User(java.lang.String alias, org.jooq.Table<com.ankur.project.tables.records.UserRecord> aliased, org.jooq.Field<?>[] parameters) {
		super(alias, com.ankur.project.Public.PUBLIC, aliased, parameters, "");
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Identity<com.ankur.project.tables.records.UserRecord, java.lang.Long> getIdentity() {
		return com.ankur.project.Keys.IDENTITY_USER;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.UniqueKey<com.ankur.project.tables.records.UserRecord> getPrimaryKey() {
		return com.ankur.project.Keys.ID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.util.List<org.jooq.UniqueKey<com.ankur.project.tables.records.UserRecord>> getKeys() {
		return java.util.Arrays.<org.jooq.UniqueKey<com.ankur.project.tables.records.UserRecord>>asList(com.ankur.project.Keys.ID);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public com.ankur.project.tables.User as(java.lang.String alias) {
		return new com.ankur.project.tables.User(alias, this);
	}

	/**
	 * Rename this table
	 */
	public com.ankur.project.tables.User rename(java.lang.String name) {
		return new com.ankur.project.tables.User(name, null);
	}
}