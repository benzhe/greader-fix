.class public final Lgs4;
.super Lb25;
.source "SourceFile"


# static fields
.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;

.field public static final i:[Ljava/lang/String;

.field public static final j:[Ljava/lang/String;

.field public static final k:[Ljava/lang/String;

.field public static final l:[Ljava/lang/String;

.field public static final m:[Ljava/lang/String;


# instance fields
.field public final d:Lfs4;

.field public final e:Ly15;


# direct methods
.method public static constructor <clinit>()V
    .locals 53

    const-string v0, "last_bundled_timestamp"

    const-string v1, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    const-string v2, "last_bundled_day"

    const-string v3, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    const-string v4, "last_sampled_complex_event_id"

    const-string v5, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    const-string v6, "last_sampling_rate"

    const-string v7, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    const-string v8, "last_exempt_from_sampling"

    const-string v9, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    const-string v10, "current_session_count"

    const-string v11, "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgs4;->f:[Ljava/lang/String;

    const-string v0, "origin"

    const-string v1, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgs4;->g:[Ljava/lang/String;

    const-string v1, "app_version"

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    const-string v3, "app_store"

    const-string v4, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    const-string v5, "gmp_version"

    const-string v6, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    const-string v7, "dev_cert_hash"

    const-string v8, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    const-string v9, "measurement_enabled"

    const-string v10, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    const-string v11, "last_bundle_start_timestamp"

    const-string v12, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    const-string v13, "day"

    const-string v14, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    const-string v15, "daily_public_events_count"

    const-string v16, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    const-string v17, "daily_events_count"

    const-string v18, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    const-string v19, "daily_conversions_count"

    const-string v20, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    const-string v21, "remote_config"

    const-string v22, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    const-string v23, "config_fetched_time"

    const-string v24, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    const-string v25, "failed_config_fetch_time"

    const-string v26, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    const-string v27, "app_version_int"

    const-string v28, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    const-string v29, "firebase_instance_id"

    const-string v30, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    const-string v31, "daily_error_events_count"

    const-string v32, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    const-string v33, "daily_realtime_events_count"

    const-string v34, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    const-string v35, "health_monitor_sample"

    const-string v36, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    const-string v37, "android_id"

    const-string v38, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    const-string v39, "adid_reporting_enabled"

    const-string v40, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    const-string v41, "ssaid_reporting_enabled"

    const-string v42, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    const-string v43, "admob_app_id"

    const-string v44, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    const-string v45, "linked_admob_app_id"

    const-string v46, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    const-string v47, "dynamite_version"

    const-string v48, "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;"

    const-string v49, "safelisted_events"

    const-string v50, "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;"

    const-string v51, "ga_app_id"

    const-string v52, "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"

    filled-new-array/range {v1 .. v52}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgs4;->h:[Ljava/lang/String;

    const-string v0, "realtime"

    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgs4;->i:[Ljava/lang/String;

    const-string v0, "has_realtime"

    const-string v1, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    const-string v2, "retry_count"

    const-string v3, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgs4;->j:[Ljava/lang/String;

    const-string v0, "session_scoped"

    const-string v1, "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgs4;->k:[Ljava/lang/String;

    const-string v1, "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgs4;->l:[Ljava/lang/String;

    const-string v0, "previous_install_count"

    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgs4;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lj25;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lb25;-><init>(Lj25;)V

    new-instance p1, Ly15;

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 2
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 3
    invoke-direct {p1, v0}, Ly15;-><init>(Lb20;)V

    iput-object p1, p0, Lgs4;->e:Ly15;

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 4
    iget-object p1, p1, Lrx4;->g:Lcs4;

    .line 5
    new-instance p1, Lfs4;

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 6
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 7
    invoke-direct {p1, p0, v0}, Lfs4;-><init>(Lgs4;Landroid/content/Context;)V

    iput-object p1, p0, Lgs4;->d:Lfs4;

    return-void
.end method

.method public static final s(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string p1, "value"

    .line 1
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "null reference"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    .line 7
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 8
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value type"

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Lls4;)V
    .locals 5

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lly4;->d()V

    .line 3
    invoke-virtual {p0}, Lb25;->f()V

    new-instance v0, Landroid/content/ContentValues;

    .line 4
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5
    iget-object v1, p1, Lls4;->a:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p1, Lls4;->b:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-wide v1, p1, Lls4;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lifetime_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    iget-wide v1, p1, Lls4;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "current_bundle_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9
    iget-wide v1, p1, Lls4;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_fire_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    iget-wide v1, p1, Lls4;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_bundled_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 11
    iget-object v1, p1, Lls4;->h:Ljava/lang/Long;

    const-string v2, "last_bundled_day"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    iget-object v1, p1, Lls4;->i:Ljava/lang/Long;

    const-string v2, "last_sampled_complex_event_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    iget-object v1, p1, Lls4;->j:Ljava/lang/Long;

    const-string v2, "last_sampling_rate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    iget-wide v1, p1, Lls4;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "current_session_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    iget-object v1, p1, Lls4;->k:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v3, 0x1

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "last_exempt_from_sampling"

    .line 17
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "events"

    const/4 v4, 0x5

    .line 19
    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 20
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 21
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v1, "Failed to insert/update event aggregates (got -1). appId"

    .line 22
    iget-object v2, p1, Lls4;->a:Ljava/lang/String;

    invoke-static {v2}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 24
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 25
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 26
    iget-object p1, p1, Lls4;->a:Ljava/lang/String;

    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing event aggregates. appId"

    .line 27
    invoke-virtual {v1, v2, p1, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lly4;->d()V

    .line 4
    invoke-virtual {p0}, Lb25;->f()V

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "user_attributes"

    const-string v3, "app_id=? and name=?"

    .line 6
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 9
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {v2}, Lrx4;->u()Llw4;

    move-result-object v2

    .line 11
    invoke-virtual {v2, p2}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Error deleting user property. appId"

    .line 12
    invoke-virtual {v1, v2, p1, p2, v0}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final C(Ln25;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0}, Lb25;->f()V

    iget-object v0, p1, Ln25;->a:Ljava/lang/String;

    iget-object v1, p1, Ln25;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0, v1}, Lgs4;->D(Ljava/lang/String;Ljava/lang/String;)Ln25;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p1, Ln25;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lp25;->e0(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    iget-object v4, p1, Ln25;->a:Ljava/lang/String;

    aput-object v4, v0, v3

    const-string v4, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    .line 5
    invoke-virtual {p0, v4, v0}, Lgs4;->t(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 6
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 7
    iget-object v6, p1, Ln25;->a:Ljava/lang/String;

    .line 8
    invoke-static {}, Lmc4;->b()Z

    sget-object v7, Lew4;->v0:Ldw4;

    .line 9
    invoke-virtual {v0, v1, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v7

    const/16 v8, 0x19

    if-eqz v7, :cond_0

    sget-object v7, Lew4;->G:Ldw4;

    const/16 v9, 0x64

    invoke-virtual {v0, v6, v7, v8, v9}, Lcs4;->q(Ljava/lang/String;Ldw4;II)I

    move-result v8

    :cond_0
    int-to-long v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 10
    :cond_2
    iget-object v0, p1, Ln25;->c:Ljava/lang/String;

    const-string v4, "_npa"

    .line 11
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v4, p1, Ln25;->a:Ljava/lang/String;

    aput-object v4, v0, v3

    iget-object v4, p1, Ln25;->b:Ljava/lang/String;

    aput-object v4, v0, v2

    const-string v4, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    .line 12
    invoke-virtual {p0, v4, v0}, Lgs4;->t(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 13
    iget-object v0, v0, Lrx4;->g:Lcs4;

    const-wide/16 v6, 0x19

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    return v3

    .line 14
    :cond_3
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    .line 15
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, p1, Ln25;->a:Ljava/lang/String;

    const-string v4, "app_id"

    .line 16
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Ln25;->b:Ljava/lang/String;

    const-string v4, "origin"

    .line 17
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Ln25;->c:Ljava/lang/String;

    const-string v4, "name"

    .line 18
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p1, Ln25;->d:J

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "set_timestamp"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p1, Ln25;->e:Ljava/lang/Object;

    const-string v4, "value"

    .line 20
    invoke-static {v0, v4, v3}, Lgs4;->s(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "user_attributes"

    const/4 v5, 0x5

    .line 22
    invoke-virtual {v3, v4, v1, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_4

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 23
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v1, "Failed to insert/update user property (got -1). appId"

    .line 25
    iget-object v3, p1, Ln25;->a:Ljava/lang/String;

    invoke-static {v3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 26
    invoke-virtual {v0, v1, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 27
    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 28
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 29
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 30
    iget-object p1, p1, Ln25;->a:Ljava/lang/String;

    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Error storing user property. appId"

    .line 31
    invoke-virtual {v1, v3, p1, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return v2
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;)Ln25;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    .line 1
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lly4;->d()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lb25;->f()V

    const/4 v10, 0x0

    .line 5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v0, "set_timestamp"

    const-string v2, "value"

    const-string v3, "origin"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x2

    new-array v15, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v15, v2

    const/4 v3, 0x1

    aput-object v9, v15, v3

    const-string v12, "user_attributes"

    const-string v14, "app_id=? and name=?"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 6
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_0

    .line 8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v10

    .line 9
    :cond_0
    :try_start_2
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 10
    invoke-virtual {v1, v11, v3}, Lgs4;->i(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v8

    .line 11
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ln25;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    .line 12
    invoke-direct/range {v2 .. v8}, Ln25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 13
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 14
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 15
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Got multiple records for user property, expected one. appId"

    .line 16
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-virtual {v2, v3, v4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v11, v10

    :goto_1
    :try_start_3
    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 19
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 20
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Error querying user property. appId"

    .line 21
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lly4;->a:Lrx4;

    .line 22
    invoke-virtual {v5}, Lrx4;->u()Llw4;

    move-result-object v5

    .line 23
    invoke-virtual {v5, v9}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v2, v3, v4, v5, v0}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v11, :cond_2

    .line 25
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v10

    :catchall_1
    move-exception v0

    move-object v10, v11

    :goto_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 26
    :cond_3
    throw v0
.end method

.method public final E(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ln25;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lly4;->d()V

    .line 3
    invoke-virtual {p0}, Lb25;->f()V

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "1000"

    const/4 v10, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "user_attributes"

    const-string v3, "name"

    const-string v4, "origin"

    const-string v5, "set_timestamp"

    const-string v6, "value"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=?"

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v5, v12

    const-string v8, "rowid"

    iget-object v6, p0, Lly4;->a:Lrx4;

    .line 6
    iget-object v6, v6, Lrx4;->g:Lcs4;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    :cond_0
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    move-object v5, v2

    const/4 v2, 0x2

    .line 11
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v2, 0x3

    .line 12
    invoke-virtual {p0, v1, v2}, Lgs4;->i(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 13
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 14
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Read invalid user property value, ignoring it. appId"

    .line 15
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 16
    invoke-virtual {v2, v3, v4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 17
    :cond_2
    new-instance v2, Ln25;

    move-object v3, v2

    move-object v4, p1

    .line 18
    invoke-direct/range {v3 .. v9}, Ln25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_0

    .line 21
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v10

    :goto_1
    :try_start_2
    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 22
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 23
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Error querying user properties. appId"

    .line 24
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 25
    invoke-virtual {v2, v3, v4, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lid4;->b()Z

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 27
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 28
    sget-object v2, Lew4;->D0:Ldw4;

    invoke-virtual {v0, p1, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    .line 30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p1

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v10

    :catchall_1
    move-exception p1

    move-object v10, v1

    :goto_2
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_7
    throw p1
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ln25;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual/range {p0 .. p0}, Lly4;->d()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lb25;->f()V

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v18, "1001"

    const/16 v19, 0x0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x3

    .line 5
    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "app_id=?"

    .line 7
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    move-object/from16 v4, p2

    .line 9
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, " and origin=?"

    .line 10
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    .line 11
    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 12
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, " and name glob ?"

    .line 13
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, [Ljava/lang/String;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v11, "user_attributes"

    const-string v2, "name"

    const-string v5, "set_timestamp"

    const-string v6, "value"

    const-string v7, "origin"

    filled-new-array {v2, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v12

    .line 16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v17, "rowid"

    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 17
    iget-object v2, v2, Lrx4;->g:Lcs4;

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 18
    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_2

    .line 20
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 21
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v1, Lly4;->a:Lrx4;

    .line 22
    iget-object v5, v3, Lrx4;->g:Lcs4;

    const/16 v5, 0x3e8

    if-lt v2, v5, :cond_3

    .line 23
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 24
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Read more than the max allowed user properties, ignoring excess"

    .line 25
    iget-object v6, v1, Lly4;->a:Lrx4;

    .line 26
    iget-object v6, v6, Lrx4;->g:Lcs4;

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 28
    invoke-virtual {v2, v3, v5}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_3
    const/4 v2, 0x0

    .line 29
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    .line 30
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v2, 0x2

    .line 31
    invoke-virtual {v1, v10, v2}, Lgs4;->i(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v11

    .line 32
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v11, :cond_4

    :try_start_4
    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 33
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 34
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "(2)Read invalid user property value, ignoring it"

    .line 35
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v13, p3

    .line 36
    invoke-virtual {v2, v3, v4, v12, v13}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x3

    goto :goto_2

    :cond_4
    move-object/from16 v13, p3

    .line 37
    new-instance v14, Ln25;

    move-object v2, v14

    move-object/from16 v3, p1

    move-object v4, v12

    const/4 v15, 0x3

    move-object v8, v11

    .line 38
    invoke-direct/range {v2 .. v8}, Ln25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 39
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_5

    move-object v4, v12

    const/4 v8, 0x3

    goto :goto_1

    .line 41
    :cond_5
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-object v0

    :catch_1
    move-exception v0

    move-object v4, v12

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v4, p2

    :goto_4
    move-object/from16 v10, v19

    .line 42
    :goto_5
    :try_start_5
    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 43
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 44
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "(2)Error querying user properties"

    .line 45
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 46
    invoke-virtual {v2, v3, v5, v4, v0}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lid4;->b()Z

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 48
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 49
    sget-object v2, Lew4;->D0:Ldw4;

    invoke-virtual {v0, v9, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v10, :cond_6

    .line 51
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0

    :cond_7
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v19

    :catchall_1
    move-exception v0

    move-object/from16 v19, v10

    :goto_6
    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_9
    throw v0
.end method

.method public final G(Lcom/google/android/gms/measurement/internal/zzaa;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0}, Lb25;->f()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lgs4;->D(Ljava/lang/String;Ljava/lang/String;)Ln25;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    .line 4
    invoke-virtual {p0, v2, v0}, Lgs4;->t(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 5
    iget-object v0, v0, Lrx4;->g:Lcs4;

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    .line 6
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    .line 7
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    const-string v3, "app_id"

    .line 8
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    const-string v3, "origin"

    .line 9
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 10
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "value"

    invoke-static {v0, v3, v2}, Lgs4;->s(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->i:Z

    .line 12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "active"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->j:Ljava/lang/String;

    const-string v3, "trigger_event_name"

    .line 13
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->l:J

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "trigger_timeout"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 15
    invoke-virtual {v2}, Lrx4;->t()Lp25;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->k:Lcom/google/android/gms/measurement/internal/zzas;

    .line 16
    invoke-virtual {v2, v3}, Lp25;->L(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "timed_out_event"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->h:J

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "creation_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 18
    invoke-virtual {v2}, Lrx4;->t()Lp25;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->m:Lcom/google/android/gms/measurement/internal/zzas;

    .line 19
    invoke-virtual {v2, v3}, Lp25;->L(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "triggered_event"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 20
    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzkr;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "triggered_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->n:J

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "time_to_live"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 22
    invoke-virtual {v2}, Lrx4;->t()Lp25;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->o:Lcom/google/android/gms/measurement/internal/zzas;

    .line 23
    invoke-virtual {v2, v3}, Lp25;->L(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "expired_event"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 25
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 26
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 27
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v2, "Failed to insert/update conditional user property (got -1)"

    .line 28
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    invoke-static {v3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    invoke-virtual {v0, v2, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 30
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 31
    iget-object v2, v2, Lqw4;->f:Low4;

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Error storing conditional user property"

    .line 33
    invoke-virtual {v2, v3, p1, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return v1
.end method

.method public final H(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    .line 1
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lly4;->d()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lb25;->f()V

    const/4 v9, 0x0

    .line 5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v11, "origin"

    const-string v12, "value"

    const-string v13, "active"

    const-string v14, "trigger_event_name"

    const-string v15, "trigger_timeout"

    const-string v16, "timed_out_event"

    const-string v17, "creation_timestamp"

    const-string v18, "triggered_event"

    const-string v19, "triggered_timestamp"

    const-string v20, "time_to_live"

    const-string v21, "expired_event"

    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x2

    new-array v14, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v14, v2

    const/4 v3, 0x1

    aput-object v8, v14, v3

    const-string v11, "conditional_properties"

    const-string v13, "app_id=? and name=?"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 6
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_0

    .line 8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-object v9

    .line 9
    :cond_0
    :try_start_2
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 10
    invoke-virtual {v1, v10, v3}, Lgs4;->i(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v6

    .line 11
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v21, 0x1

    goto :goto_0

    :cond_1
    const/16 v21, 0x0

    :goto_0
    const/4 v0, 0x3

    .line 12
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/4 v0, 0x4

    .line 13
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    iget-object v0, v1, Lb25;->b:Lj25;

    .line 14
    invoke-virtual {v0}, Lj25;->Q()Ll25;

    move-result-object v0

    const/4 v2, 0x5

    .line 15
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2, v3}, Ll25;->y([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/google/android/gms/measurement/internal/zzas;

    const/4 v0, 0x6

    .line 16
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    iget-object v0, v1, Lb25;->b:Lj25;

    .line 17
    invoke-virtual {v0}, Lj25;->Q()Ll25;

    move-result-object v0

    const/4 v2, 0x7

    .line 18
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ll25;->y([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Lcom/google/android/gms/measurement/internal/zzas;

    const/16 v0, 0x8

    .line 19
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v0, 0x9

    .line 20
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    iget-object v0, v1, Lb25;->b:Lj25;

    .line 21
    invoke-virtual {v0}, Lj25;->Q()Ll25;

    move-result-object v0

    const/16 v2, 0xa

    .line 22
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ll25;->y([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Lcom/google/android/gms/measurement/internal/zzas;

    .line 23
    new-instance v18, Lcom/google/android/gms/measurement/internal/zzkr;

    move-object/from16 v2, v18

    move-object/from16 v3, p2

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaa;

    move-object v15, v0

    move-object/from16 v16, p1

    invoke-direct/range {v15 .. v29}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkr;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;)V

    .line 25
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 26
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 27
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Got multiple records for conditional property, expected one"

    .line 28
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lly4;->a:Lrx4;

    .line 29
    invoke-virtual {v5}, Lrx4;->u()Llw4;

    move-result-object v5

    .line 30
    invoke-virtual {v5, v8}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v2, v3, v4, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v10, v9

    :goto_2
    :try_start_3
    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 33
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 34
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Error querying conditional property"

    .line 35
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lly4;->a:Lrx4;

    .line 36
    invoke-virtual {v5}, Lrx4;->u()Llw4;

    move-result-object v5

    .line 37
    invoke-virtual {v5, v8}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {v2, v3, v4, v5, v0}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v10, :cond_3

    .line 39
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v9

    :catchall_1
    move-exception v0

    move-object v9, v10

    :goto_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_4
    throw v0
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lly4;->d()V

    .line 4
    invoke-virtual {p0}, Lb25;->f()V

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v0

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "conditional_properties"

    const-string v4, "app_id=? and name=?"

    .line 6
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lqw4;->f:Low4;

    .line 9
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object v3, p0, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {v3}, Lrx4;->u()Llw4;

    move-result-object v3

    .line 11
    invoke-virtual {v3, p2}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "Error deleting conditional property"

    .line 12
    invoke-virtual {v2, v3, p1, p2, v1}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public final J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzaa;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lly4;->d()V

    .line 3
    invoke-virtual {p0}, Lb25;->f()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "app_id=?"

    .line 6
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, " and origin=?"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, " and name glob ?"

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lgs4;->K(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final K(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzaa;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lly4;->d()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lb25;->f()V

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "1001"

    const/4 v11, 0x0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const-string v12, "app_id"

    const-string v13, "origin"

    const-string v14, "name"

    const-string v15, "value"

    const-string v16, "active"

    const-string v17, "trigger_event_name"

    const-string v18, "trigger_timeout"

    const-string v19, "timed_out_event"

    const-string v20, "creation_timestamp"

    const-string v21, "triggered_event"

    const-string v22, "triggered_timestamp"

    const-string v23, "time_to_live"

    const-string v24, "expired_event"

    filled-new-array/range {v12 .. v24}, [Ljava/lang/String;

    move-result-object v4

    const-string v9, "rowid"

    iget-object v5, v1, Lly4;->a:Lrx4;

    .line 5
    iget-object v5, v5, Lrx4;->g:Lcs4;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 6
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v1, Lly4;->a:Lrx4;

    .line 9
    iget-object v4, v3, Lrx4;->g:Lcs4;

    const/16 v4, 0x3e8

    if-lt v2, v4, :cond_1

    .line 10
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 11
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Read more than the max allowed conditional properties, ignoring extra"

    .line 12
    iget-object v5, v1, Lly4;->a:Lrx4;

    .line 13
    iget-object v5, v5, Lrx4;->g:Lcs4;

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 15
    invoke-virtual {v2, v3, v4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 16
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v3, 0x1

    .line 17
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x2

    .line 18
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x3

    .line 19
    invoke-virtual {v1, v11, v4}, Lgs4;->i(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v8

    const/4 v4, 0x4

    .line 20
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v18, 0x1

    goto :goto_0

    :cond_2
    const/16 v18, 0x0

    :goto_0
    const/4 v2, 0x5

    .line 21
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v2, 0x6

    .line 22
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    iget-object v2, v1, Lb25;->b:Lj25;

    .line 23
    invoke-virtual {v2}, Lj25;->Q()Ll25;

    move-result-object v2

    const/4 v3, 0x7

    .line 24
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3, v4}, Ll25;->y([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/google/android/gms/measurement/internal/zzas;

    const/16 v2, 0x8

    .line 25
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    iget-object v2, v1, Lb25;->b:Lj25;

    .line 26
    invoke-virtual {v2}, Lj25;->Q()Ll25;

    move-result-object v2

    const/16 v3, 0x9

    .line 27
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Ll25;->y([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/google/android/gms/measurement/internal/zzas;

    const/16 v2, 0xa

    .line 28
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/16 v2, 0xb

    .line 29
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    iget-object v2, v1, Lb25;->b:Lj25;

    .line 30
    invoke-virtual {v2}, Lj25;->Q()Ll25;

    move-result-object v2

    const/16 v3, 0xc

    .line 31
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Ll25;->y([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/google/android/gms/measurement/internal/zzas;

    .line 32
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzkr;

    move-object v4, v15

    move-object v9, v14

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzaa;

    move-object v12, v2

    invoke-direct/range {v12 .. v26}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkr;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;)V

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 36
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_2
    :try_start_1
    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 37
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 38
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Error querying conditional user property value"

    .line 39
    invoke-virtual {v2, v3, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_4

    .line 41
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :goto_3
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_5
    throw v0
.end method

.method public final L(Ljava/lang/String;)Lvx4;
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual/range {p0 .. p0}, Lly4;->d()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lb25;->f()V

    const/4 v3, 0x0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "app_instance_id"

    const-string v6, "gmp_app_id"

    const-string v7, "resettable_device_id_hash"

    const-string v8, "last_bundle_index"

    const-string v9, "last_bundle_start_timestamp"

    const-string v10, "last_bundle_end_timestamp"

    const-string v11, "app_version"

    const-string v12, "app_store"

    const-string v13, "gmp_version"

    const-string v14, "dev_cert_hash"

    const-string v15, "measurement_enabled"

    const-string v16, "day"

    const-string v17, "daily_public_events_count"

    const-string v18, "daily_events_count"

    const-string v19, "daily_conversions_count"

    const-string v20, "config_fetched_time"

    const-string v21, "failed_config_fetch_time"

    const-string v22, "app_version_int"

    const-string v23, "firebase_instance_id"

    const-string v24, "daily_error_events_count"

    const-string v25, "daily_realtime_events_count"

    const-string v26, "health_monitor_sample"

    const-string v27, "android_id"

    const-string v28, "adid_reporting_enabled"

    const-string v29, "admob_app_id"

    const-string v30, "dynamite_version"

    const-string v31, "safelisted_events"

    const-string v32, "ga_app_id"

    filled-new-array/range {v5 .. v32}, [Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v8, v12

    const-string v5, "apps"

    const-string v7, "app_id=?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 5
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_0

    .line 7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v3

    :cond_0
    :try_start_2
    new-instance v5, Lvx4;

    iget-object v6, v1, Lb25;->b:Lj25;

    .line 8
    iget-object v6, v6, Lj25;->j:Lrx4;

    .line 9
    invoke-direct {v5, v6, v2}, Lvx4;-><init>(Lrx4;Ljava/lang/String;)V

    .line 10
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lvx4;->A(Ljava/lang/String;)V

    .line 11
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lvx4;->C(Ljava/lang/String;)V

    const/4 v6, 0x2

    .line 12
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lvx4;->I(Ljava/lang/String;)V

    const/4 v6, 0x3

    .line 13
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lvx4;->h(J)V

    const/4 v6, 0x4

    .line 14
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lvx4;->M(J)V

    const/4 v6, 0x5

    .line 15
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lvx4;->O(J)V

    const/4 v6, 0x6

    .line 16
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lvx4;->Q(Ljava/lang/String;)V

    const/4 v6, 0x7

    .line 17
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lvx4;->U(Ljava/lang/String;)V

    const/16 v6, 0x8

    .line 18
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lvx4;->a(J)V

    const/16 v6, 0x9

    .line 19
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lvx4;->c(J)V

    const/16 v6, 0xa

    .line 20
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Lvx4;->g(Z)V

    const/16 v6, 0xb

    .line 21
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 22
    iget-object v8, v5, Lvx4;->a:Lrx4;

    .line 23
    invoke-virtual {v8}, Lrx4;->m()Lox4;

    move-result-object v8

    .line 24
    invoke-virtual {v8}, Lox4;->d()V

    iget-boolean v8, v5, Lvx4;->D:Z

    iget-wide v9, v5, Lvx4;->w:J

    cmp-long v11, v9, v6

    if-eqz v11, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    or-int/2addr v8, v9

    iput-boolean v8, v5, Lvx4;->D:Z

    iput-wide v6, v5, Lvx4;->w:J

    const/16 v6, 0xc

    .line 25
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 26
    iget-object v8, v5, Lvx4;->a:Lrx4;

    .line 27
    invoke-virtual {v8}, Lrx4;->m()Lox4;

    move-result-object v8

    .line 28
    invoke-virtual {v8}, Lox4;->d()V

    iget-boolean v8, v5, Lvx4;->D:Z

    iget-wide v9, v5, Lvx4;->x:J

    cmp-long v11, v9, v6

    if-eqz v11, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    or-int/2addr v8, v9

    iput-boolean v8, v5, Lvx4;->D:Z

    iput-wide v6, v5, Lvx4;->x:J

    const/16 v6, 0xd

    .line 29
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 30
    iget-object v8, v5, Lvx4;->a:Lrx4;

    .line 31
    invoke-virtual {v8}, Lrx4;->m()Lox4;

    move-result-object v8

    .line 32
    invoke-virtual {v8}, Lox4;->d()V

    iget-boolean v8, v5, Lvx4;->D:Z

    iget-wide v9, v5, Lvx4;->y:J

    cmp-long v11, v9, v6

    if-eqz v11, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    or-int/2addr v8, v9

    iput-boolean v8, v5, Lvx4;->D:Z

    iput-wide v6, v5, Lvx4;->y:J

    const/16 v6, 0xe

    .line 33
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 34
    iget-object v8, v5, Lvx4;->a:Lrx4;

    .line 35
    invoke-virtual {v8}, Lrx4;->m()Lox4;

    move-result-object v8

    .line 36
    invoke-virtual {v8}, Lox4;->d()V

    iget-boolean v8, v5, Lvx4;->D:Z

    iget-wide v9, v5, Lvx4;->z:J

    cmp-long v11, v9, v6

    if-eqz v11, :cond_6

    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    :goto_5
    or-int/2addr v8, v9

    iput-boolean v8, v5, Lvx4;->D:Z

    iput-wide v6, v5, Lvx4;->z:J

    const/16 v6, 0xf

    .line 37
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lvx4;->k(J)V

    const/16 v6, 0x10

    .line 38
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lvx4;->m(J)V

    const/16 v6, 0x11

    .line 39
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_7

    const-wide/32 v6, -0x80000000

    goto :goto_6

    :cond_7
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    :goto_6
    invoke-virtual {v5, v6, v7}, Lvx4;->S(J)V

    const/16 v6, 0x12

    .line 40
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lvx4;->K(Ljava/lang/String;)V

    const/16 v6, 0x13

    .line 41
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 42
    iget-object v8, v5, Lvx4;->a:Lrx4;

    .line 43
    invoke-virtual {v8}, Lrx4;->m()Lox4;

    move-result-object v8

    .line 44
    invoke-virtual {v8}, Lox4;->d()V

    iget-boolean v8, v5, Lvx4;->D:Z

    iget-wide v9, v5, Lvx4;->A:J

    cmp-long v11, v9, v6

    if-eqz v11, :cond_8

    const/4 v9, 0x1

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    or-int/2addr v8, v9

    iput-boolean v8, v5, Lvx4;->D:Z

    iput-wide v6, v5, Lvx4;->A:J

    const/16 v6, 0x14

    .line 45
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 46
    iget-object v8, v5, Lvx4;->a:Lrx4;

    .line 47
    invoke-virtual {v8}, Lrx4;->m()Lox4;

    move-result-object v8

    .line 48
    invoke-virtual {v8}, Lox4;->d()V

    iget-boolean v8, v5, Lvx4;->D:Z

    iget-wide v9, v5, Lvx4;->B:J

    cmp-long v11, v9, v6

    if-eqz v11, :cond_9

    const/4 v9, 0x1

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    :goto_8
    or-int/2addr v8, v9

    iput-boolean v8, v5, Lvx4;->D:Z

    iput-wide v6, v5, Lvx4;->B:J

    const/16 v6, 0x15

    .line 49
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lvx4;->p(Ljava/lang/String;)V

    iget-object v6, v1, Lly4;->a:Lrx4;

    .line 50
    iget-object v6, v6, Lrx4;->g:Lcs4;

    .line 51
    sget-object v7, Lew4;->x0:Ldw4;

    invoke-virtual {v6, v3, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-nez v6, :cond_b

    const/16 v6, 0x16

    .line 52
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_a

    move-wide v9, v7

    goto :goto_9

    :cond_a
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    :goto_9
    invoke-virtual {v5, v9, v10}, Lvx4;->r(J)V

    :cond_b
    const/16 v6, 0x17

    .line 53
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_a
    invoke-virtual {v5, v0}, Lvx4;->t(Z)V

    const/16 v0, 0x18

    .line 54
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lvx4;->E(Ljava/lang/String;)V

    const/16 v0, 0x19

    .line 55
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_b

    :cond_e
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    :goto_b
    invoke-virtual {v5, v7, v8}, Lvx4;->e(J)V

    const/16 v0, 0x1a

    .line 56
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_f

    .line 57
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, ","

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-virtual {v5, v0}, Lvx4;->x(Ljava/util/List;)V

    .line 59
    :cond_f
    invoke-static {}, Lae4;->b()Z

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 60
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 61
    sget-object v6, Lew4;->i0:Ldw4;

    .line 62
    invoke-virtual {v0, v2, v6}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x1b

    .line 63
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lvx4;->G(Ljava/lang/String;)V

    .line 64
    :cond_10
    iget-object v0, v5, Lvx4;->a:Lrx4;

    .line 65
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lox4;->d()V

    iput-boolean v12, v5, Lvx4;->D:Z

    .line 67
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 68
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 69
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v6, "Got multiple records for app, expected one. appId"

    .line 70
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 71
    invoke-virtual {v0, v6, v7}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_d

    .line 72
    :cond_11
    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    move-object v4, v3

    .line 73
    :goto_d
    :try_start_3
    iget-object v5, v1, Lly4;->a:Lrx4;

    .line 74
    invoke-virtual {v5}, Lrx4;->a()Lqw4;

    move-result-object v5

    .line 75
    iget-object v5, v5, Lqw4;->f:Low4;

    const-string v6, "Error querying app. appId"

    .line 76
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v6, v2, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_12

    .line 77
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_12
    return-object v3

    :catchall_1
    move-exception v0

    move-object v3, v4

    :goto_e
    if-eqz v3, :cond_13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_13
    throw v0
.end method

.method public final M(Lvx4;)V
    .locals 8

    const-string v0, "apps"

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0}, Lb25;->f()V

    new-instance v1, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4
    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lvx4;->z()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_instance_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lvx4;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gmp_app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lvx4;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resettable_device_id_hash"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lvx4;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundle_index"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9
    invoke-virtual {p1}, Lvx4;->L()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundle_start_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    invoke-virtual {p1}, Lvx4;->N()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundle_end_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 11
    invoke-virtual {p1}, Lvx4;->P()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_version"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lvx4;->T()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_store"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lvx4;->V()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "gmp_version"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    invoke-virtual {p1}, Lvx4;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "dev_cert_hash"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    invoke-virtual {p1}, Lvx4;->f()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "measurement_enabled"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 16
    iget-object v2, p1, Lvx4;->a:Lrx4;

    .line 17
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lox4;->d()V

    iget-wide v2, p1, Lvx4;->w:J

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "day"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    iget-object v2, p1, Lvx4;->a:Lrx4;

    .line 21
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lox4;->d()V

    iget-wide v2, p1, Lvx4;->x:J

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_public_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    iget-object v2, p1, Lvx4;->a:Lrx4;

    .line 25
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lox4;->d()V

    iget-wide v2, p1, Lvx4;->y:J

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    iget-object v2, p1, Lvx4;->a:Lrx4;

    .line 29
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lox4;->d()V

    iget-wide v2, p1, Lvx4;->z:J

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_conversions_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    iget-object v2, p1, Lvx4;->a:Lrx4;

    .line 33
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lox4;->d()V

    iget-wide v2, p1, Lvx4;->E:J

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "config_fetched_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    iget-object v2, p1, Lvx4;->a:Lrx4;

    .line 37
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lox4;->d()V

    iget-wide v2, p1, Lvx4;->F:J

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "failed_config_fetch_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 40
    invoke-virtual {p1}, Lvx4;->R()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "app_version_int"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    invoke-virtual {p1}, Lvx4;->J()Ljava/lang/String;

    move-result-object v2

    const-string v3, "firebase_instance_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v2, p1, Lvx4;->a:Lrx4;

    .line 43
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lox4;->d()V

    iget-wide v2, p1, Lvx4;->A:J

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_error_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    iget-object v2, p1, Lvx4;->a:Lrx4;

    .line 47
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lox4;->d()V

    iget-wide v2, p1, Lvx4;->B:J

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_realtime_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    iget-object v2, p1, Lvx4;->a:Lrx4;

    .line 51
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lox4;->d()V

    iget-object v2, p1, Lvx4;->C:Ljava/lang/String;

    const-string v3, "health_monitor_sample"

    .line 53
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lvx4;->q()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "android_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    invoke-virtual {p1}, Lvx4;->s()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "adid_reporting_enabled"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 56
    invoke-virtual {p1}, Lvx4;->D()Ljava/lang/String;

    move-result-object v2

    const-string v3, "admob_app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lvx4;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "dynamite_version"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    invoke-virtual {p1}, Lvx4;->w()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {p1}, Lvx4;->w()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 60
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 61
    iget-object v2, v2, Lqw4;->i:Low4;

    .line 62
    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Safelisted events should not be an empty list. appId"

    invoke-virtual {v2, v4, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lvx4;->w()Ljava/util/List;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "safelisted_events"

    .line 64
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    :goto_0
    invoke-static {}, Lae4;->b()Z

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 66
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 67
    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lew4;->i0:Ldw4;

    invoke-virtual {v2, v3, v4}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-virtual {p1}, Lvx4;->F()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ga_app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 70
    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "app_id = ?"

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 71
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 72
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 73
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v1, "Failed to insert/update app (got -1). appId"

    .line 74
    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 76
    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 77
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 78
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 79
    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing app. appId"

    invoke-virtual {v1, v2, p1, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final N(JLjava/lang/String;ZZ)Les4;
    .locals 11

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v8, p4

    move/from16 v10, p5

    .line 1
    invoke-virtual/range {v0 .. v10}, Lgs4;->O(JLjava/lang/String;JZZZZZ)Les4;

    move-result-object v0

    return-object v0
.end method

.method public final O(JLjava/lang/String;JZZZZZ)Les4;
    .locals 15

    move-object v1, p0

    .line 1
    invoke-static/range {p3 .. p3}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lly4;->d()V

    .line 3
    invoke-virtual {p0}, Lb25;->f()V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    new-instance v4, Les4;

    invoke-direct {v4}, Les4;-><init>()V

    const/4 v5, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v6, "day"

    const-string v7, "daily_events_count"

    const-string v8, "daily_public_events_count"

    const-string v9, "daily_conversions_count"

    const-string v10, "daily_error_events_count"

    const-string v11, "daily_realtime_events_count"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v8

    new-array v10, v0, [Ljava/lang/String;

    aput-object p3, v10, v3

    const-string v7, "apps"

    const-string v9, "app_id=?"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v14

    .line 5
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v2, "Not updating daily counts, app is not known. appId"

    .line 9
    invoke-static/range {p3 .. p3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-virtual {v0, v2, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-object v4

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v3, v6, p1

    if-nez v3, :cond_1

    .line 13
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Les4;->b:J

    const/4 v0, 0x2

    .line 14
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Les4;->a:J

    const/4 v0, 0x3

    .line 15
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Les4;->c:J

    const/4 v0, 0x4

    .line 16
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Les4;->d:J

    const/4 v0, 0x5

    .line 17
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Les4;->e:J

    :cond_1
    if-eqz p6, :cond_2

    iget-wide v6, v4, Les4;->b:J

    add-long v6, v6, p4

    iput-wide v6, v4, Les4;->b:J

    :cond_2
    if-eqz p7, :cond_3

    iget-wide v6, v4, Les4;->a:J

    add-long v6, v6, p4

    iput-wide v6, v4, Les4;->a:J

    :cond_3
    if-eqz p8, :cond_4

    iget-wide v6, v4, Les4;->c:J

    add-long v6, v6, p4

    iput-wide v6, v4, Les4;->c:J

    :cond_4
    if-eqz p9, :cond_5

    iget-wide v6, v4, Les4;->d:J

    add-long v6, v6, p4

    iput-wide v6, v4, Les4;->d:J

    :cond_5
    if-eqz p10, :cond_6

    iget-wide v6, v4, Les4;->e:J

    add-long v6, v6, p4

    iput-wide v6, v4, Les4;->e:J

    :cond_6
    new-instance v0, Landroid/content/ContentValues;

    .line 18
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "day"

    .line 19
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_public_events_count"

    iget-wide v6, v4, Les4;->a:J

    .line 20
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_events_count"

    iget-wide v6, v4, Les4;->b:J

    .line 21
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_conversions_count"

    iget-wide v6, v4, Les4;->c:J

    .line 22
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_error_events_count"

    iget-wide v6, v4, Les4;->d:J

    .line 23
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_realtime_events_count"

    iget-wide v6, v4, Les4;->e:J

    .line 24
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "apps"

    const-string v6, "app_id=?"

    .line 25
    invoke-virtual {v14, v3, v0, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-object v4

    :goto_0
    :try_start_2
    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 27
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 28
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Error updating daily counts. appId"

    .line 29
    invoke-static/range {p3 .. p3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 30
    invoke-virtual {v2, v3, v6, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_7

    .line 31
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v4

    :goto_1
    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 32
    :cond_8
    throw v0
.end method

.method public final P()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_0
    :try_start_2
    iget-object v3, p0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 7
    iget-object v3, v3, Lqw4;->f:Low4;

    const-string v4, "Database error getting next bundle app id"

    .line 8
    invoke-virtual {v3, v4, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_2
    throw v0
.end method

.method public final Q()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0}, Lb25;->f()V

    .line 3
    invoke-virtual {p0}, Lgs4;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lex4;->h:Lbx4;

    invoke-virtual {v0}, Lbx4;->a()J

    move-result-wide v0

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 6
    iget-object v2, v2, Lrx4;->n:Lb20;

    .line 7
    invoke-interface {v2}, Lb20;->b()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-object v4, p0, Lly4;->a:Lrx4;

    .line 9
    iget-object v4, v4, Lrx4;->g:Lcs4;

    .line 10
    sget-object v4, Lew4;->y:Ldw4;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lex4;->h:Lbx4;

    invoke-virtual {v0, v2, v3}, Lbx4;->b(J)V

    .line 13
    invoke-virtual {p0}, Lly4;->d()V

    .line 14
    invoke-virtual {p0}, Lb25;->f()V

    .line 15
    invoke-virtual {p0}, Lgs4;->q()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lly4;->a:Lrx4;

    .line 17
    iget-object v3, v3, Lrx4;->n:Lb20;

    .line 18
    invoke-interface {v3}, Lb20;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 19
    iget-object v2, v2, Lrx4;->g:Lcs4;

    const/4 v2, 0x1

    .line 20
    invoke-static {}, Lcs4;->f()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "queue"

    const-string v3, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    .line 21
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 22
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 23
    iget-object v1, v1, Lqw4;->n:Low4;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Deleted stale rows. rowsDeleted"

    invoke-virtual {v1, v2, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final R(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0}, Lb25;->f()V

    const-string v0, "null reference"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lgs4;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    .line 6
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "("

    const-string v2, ")"

    invoke-static {v1, v0, p1, v2}, Ljo;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND retry_count =  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7fffffff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " LIMIT 1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lgs4;->t(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 8
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lqw4;->i:Low4;

    const-string v3, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 10
    invoke-virtual {v1, v3}, Low4;->a(Ljava/lang/String;)V

    .line 11
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND (retry_count IS NULL OR retry_count < "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 13
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v1, "Error incrementing retry count. error"

    .line 15
    invoke-virtual {v0, v1, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given Integer is zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 2
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lqw4;->f:Low4;

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "Loaded invalid unknown value type, ignoring it"

    invoke-virtual {p1, v0, p2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 5
    :cond_0
    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string p2, "Loaded invalid blob type value, ignoring it"

    .line 8
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    return-object v1

    .line 9
    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 13
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 14
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string p2, "Loaded invalid null value from database"

    .line 15
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)J
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "first_open_count"

    .line 2
    invoke-static {v3}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lly4;->d()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lb25;->f()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v5, 0x0

    :try_start_0
    const-string v0, "select first_open_count from app2 where app_id=?"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const-wide/16 v10, -0x1

    .line 7
    invoke-virtual {v1, v0, v8, v10, v11}, Lgs4;->u(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v12
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "app2"

    const-string v8, "app_id"

    cmp-long v14, v12, v10

    if-nez v14, :cond_1

    :try_start_1
    new-instance v12, Landroid/content/ContentValues;

    .line 8
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 9
    invoke-virtual {v12, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "previous_install_count"

    .line 11
    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v13, 0x0

    const/4 v14, 0x5

    .line 12
    invoke-virtual {v4, v0, v13, v12, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    cmp-long v14, v12, v10

    if-nez v14, :cond_0

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 13
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v7, "Failed to insert column (got -1). appId"

    .line 15
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 16
    invoke-virtual {v0, v7, v8, v3}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v10

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-wide v12, v5

    :cond_1
    :try_start_2
    new-instance v14, Landroid/content/ContentValues;

    .line 18
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 19
    invoke-virtual {v14, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v15, 0x1

    add-long/2addr v15, v12

    .line 20
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v14, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-array v7, v7, [Ljava/lang/String;

    aput-object v2, v7, v9

    const-string v8, "app_id = ?"

    .line 21
    invoke-virtual {v4, v0, v14, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 22
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 23
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v5, "Failed to update column (got 0). appId"

    .line 24
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 25
    invoke-virtual {v0, v5, v6, v3}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v10

    .line 27
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide v5, v12

    :goto_0
    :try_start_4
    iget-object v7, v1, Lly4;->a:Lrx4;

    .line 29
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 30
    iget-object v7, v7, Lqw4;->f:Low4;

    const-string v8, "Error inserting column. appId"

    .line 31
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    invoke-virtual {v7, v8, v2, v3, v0}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 33
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide v12, v5

    :goto_1
    return-wide v12

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 34
    throw v0
.end method

.method public final l(Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, Lgs4;->u(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/Long;JLz44;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0}, Lb25;->f()V

    const-string v0, "null reference"

    .line 3
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p5}, Lt74;->a()[B

    move-result-object p5

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lqw4;->n:Low4;

    .line 8
    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 9
    invoke-virtual {v1}, Lrx4;->u()Llw4;

    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p5

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Saving complex main event, appId, data size"

    .line 12
    invoke-virtual {v0, v3, v1, v2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/ContentValues;

    .line 13
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_id"

    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "children_to_process"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "main_event"

    .line 17
    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p2, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string p4, "main_event_params"

    const/4 p5, 0x0

    const/4 v1, 0x5

    .line 19
    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p3

    const-wide/16 v0, -0x1

    cmp-long p5, p3, v0

    if-nez p5, :cond_0

    iget-object p3, p0, Lly4;->a:Lrx4;

    .line 20
    invoke-virtual {p3}, Lrx4;->a()Lqw4;

    move-result-object p3

    .line 21
    iget-object p3, p3, Lqw4;->f:Low4;

    const-string p4, "Failed to insert complex main event (got -1). appId"

    .line 22
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    .line 23
    invoke-virtual {p3, p4, p5}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p3

    iget-object p4, p0, Lly4;->a:Lrx4;

    .line 24
    invoke-virtual {p4}, Lrx4;->a()Lqw4;

    move-result-object p4

    .line 25
    iget-object p4, p4, Lqw4;->f:Low4;

    .line 26
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p5, "Error storing complex main event. appId"

    .line 27
    invoke-virtual {p4, p5, p1, p3}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method public final p(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0}, Lb25;->f()V

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "select parameters from default_event_params where app_id=?"

    .line 4
    invoke-virtual {v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lqw4;->n:Low4;

    const-string v2, "Default event parameters not found"

    .line 8
    invoke-virtual {p1, v2}, Low4;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 10
    :cond_0
    :try_start_2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :try_start_3
    invoke-static {}, Lz44;->C()Ly44;

    move-result-object v3

    invoke-static {v3, v2}, Ll25;->G(Ls74;[B)Ls74;

    move-result-object v2

    check-cast v2, Ly44;

    invoke-virtual {v2}, Lz84;->g()Lc94;

    move-result-object v2

    check-cast v2, Lz44;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p1, p0, Lb25;->b:Lj25;

    .line 12
    invoke-virtual {p1}, Lj25;->Q()Ll25;

    .line 13
    invoke-virtual {v2}, Lz44;->s()Ljava/util/List;

    move-result-object p1

    new-instance v2, Landroid/os/Bundle;

    .line 14
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld54;

    .line 16
    invoke-virtual {v3}, Ld54;->t()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v3}, Ld54;->A()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18
    invoke-virtual {v3}, Ld54;->B()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v3}, Ld54;->y()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 20
    invoke-virtual {v3}, Ld54;->z()F

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {v3}, Ld54;->u()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 22
    invoke-virtual {v3}, Ld54;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_4
    invoke-virtual {v3}, Ld54;->w()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 24
    invoke-virtual {v3}, Ld54;->x()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 25
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :catch_1
    move-exception v2

    .line 26
    :try_start_5
    iget-object v3, p0, Lly4;->a:Lrx4;

    .line 27
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 28
    iget-object v3, v3, Lqw4;->f:Low4;

    const-string v4, "Failed to retrieve default event parameters. appId"

    .line 29
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    invoke-virtual {v3, v4, p1, v2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 31
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v1, v0

    :goto_1
    :try_start_6
    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 32
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 33
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Error selecting default event parameters"

    .line 34
    invoke-virtual {v2, v3, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_6

    .line 35
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_7
    throw p1
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    iget-object v1, v0, Lrx4;->a:Landroid/content/Context;

    .line 2
    iget-object v0, v0, Lrx4;->g:Lcs4;

    const-string v0, "google_app_measurement.db"

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final r(Ljava/lang/String;JJLi25;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    .line 1
    invoke-virtual/range {p0 .. p0}, Lly4;->d()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lb25;->f()V

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    const-wide/16 v13, -0x1

    const/4 v15, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x2

    if-eqz v4, :cond_3

    cmp-long v4, p4, v13

    if-eqz v4, :cond_0

    :try_start_1
    new-array v6, v11, [Ljava/lang/String;

    .line 5
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v15

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    goto :goto_0

    :cond_0
    new-array v6, v12, [Ljava/lang/String;

    .line 6
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v15
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v4, :cond_1

    const-string v5, "rowid <= ? and "

    .line 7
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x94

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v5, :cond_2

    .line 10
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    .line 11
    :cond_2
    :try_start_4
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_3
    cmp-long v4, p4, v13

    if-eqz v4, :cond_4

    :try_start_5
    new-array v6, v11, [Ljava/lang/String;

    aput-object v3, v6, v15

    .line 14
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    goto :goto_1

    .line 15
    :cond_4
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    if-eqz v4, :cond_5

    const-string v5, " and rowid <= ?"

    .line 16
    :cond_5
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " order by rowid limit 1;"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 18
    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v5, :cond_6

    .line 19
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    .line 20
    :cond_6
    :try_start_8
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    move-object/from16 v16, v3

    move-object v3, v4

    move-object/from16 v17, v5

    :try_start_9
    const-string v4, "metadata"

    .line 22
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    new-array v8, v11, [Ljava/lang/String;

    aput-object v16, v8, v15

    aput-object v17, v8, v12

    const-string v5, "raw_events_metadata"

    const-string v7, "app_id = ? and metadata_fingerprint = ?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v18, "rowid"

    const-string v19, "2"

    move-object v4, v0

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    .line 23
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 24
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 25
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 26
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v2, "Raw event metadata record is missing. appId"

    .line 27
    invoke-static/range {v16 .. v16}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 28
    invoke-virtual {v0, v2, v4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 29
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    .line 30
    :cond_7
    :try_start_a
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 31
    :try_start_b
    invoke-static {}, Lh54;->C0()Lg54;

    move-result-object v5

    invoke-static {v5, v4}, Ll25;->G(Ls74;[B)Ls74;

    move-result-object v4

    check-cast v4, Lg54;

    invoke-virtual {v4}, Lz84;->g()Lc94;

    move-result-object v4

    check-cast v4, Lh54;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 32
    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v1, Lly4;->a:Lrx4;

    .line 33
    invoke-virtual {v5}, Lrx4;->a()Lqw4;

    move-result-object v5

    .line 34
    iget-object v5, v5, Lqw4;->i:Low4;

    const-string v6, "Get multiple raw event metadata records, expected one. appId"

    .line 35
    invoke-static/range {v16 .. v16}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 36
    invoke-virtual {v5, v6, v7}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 38
    iput-object v4, v2, Li25;->a:Lh54;

    const/4 v12, 0x3

    cmp-long v4, p4, v13

    if-eqz v4, :cond_9

    const-string v4, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    new-array v5, v12, [Ljava/lang/String;

    aput-object v16, v5, v15

    const/4 v13, 0x1

    aput-object v17, v5, v13

    .line 39
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x2

    aput-object v6, v5, v14

    goto :goto_3

    :cond_9
    const/4 v13, 0x1

    const/4 v14, 0x2

    const-string v4, "app_id = ? and metadata_fingerprint = ?"

    new-array v5, v14, [Ljava/lang/String;

    aput-object v16, v5, v15

    aput-object v17, v5, v13

    :goto_3
    move-object v7, v4

    move-object v8, v5

    const-string v4, "rowid"

    const-string v5, "name"

    const-string v6, "timestamp"

    const-string v9, "data"

    filled-new-array {v4, v5, v6, v9}, [Ljava/lang/String;

    move-result-object v6

    const-string v5, "raw_events"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "rowid"

    const/16 v17, 0x0

    move-object v4, v0

    const/4 v14, 0x3

    move-object/from16 v12, v17

    .line 40
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 41
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 42
    :cond_a
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 43
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 44
    :try_start_d
    invoke-static {}, Lz44;->C()Ly44;

    move-result-object v6

    invoke-static {v6, v0}, Ll25;->G(Ls74;[B)Ls74;

    move-result-object v0

    check-cast v0, Ly44;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 45
    :try_start_e
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ly44;->u(Ljava/lang/String;)Ly44;

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 46
    iget-boolean v9, v0, Lz84;->g:Z

    if-eqz v9, :cond_b

    .line 47
    invoke-virtual {v0}, Lz84;->j()V

    iput-boolean v15, v0, Lz84;->g:Z

    :cond_b
    iget-object v9, v0, Lz84;->f:Lc94;

    .line 48
    check-cast v9, Lz44;

    invoke-static {v9, v7, v8}, Lz44;->K(Lz44;J)V

    .line 49
    invoke-virtual {v0}, Lz84;->g()Lc94;

    move-result-object v0

    check-cast v0, Lz44;

    invoke-virtual {v2, v4, v5, v0}, Li25;->a(JLz44;)Z

    move-result v0
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-nez v0, :cond_c

    .line 50
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :catch_0
    move-exception v0

    const/4 v6, 0x2

    :try_start_f
    iget-object v4, v1, Lly4;->a:Lrx4;

    .line 51
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 52
    iget-object v4, v4, Lqw4;->f:Low4;

    const-string v5, "Data loss. Failed to merge raw event. appId"

    .line 53
    invoke-static/range {v16 .. v16}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 54
    invoke-virtual {v4, v5, v7, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    :cond_c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez v0, :cond_a

    .line 56
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_d
    :try_start_10
    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 57
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 58
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v2, "Raw event data disappeared while in transaction. appId"

    .line 59
    invoke-static/range {v16 .. v16}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 60
    invoke-virtual {v0, v2, v4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 61
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 62
    :try_start_11
    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 63
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 64
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v4, "Data loss. Failed to merge raw event metadata. appId"

    .line 65
    invoke-static/range {v16 .. v16}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 66
    invoke-virtual {v2, v4, v5, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 67
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :goto_4
    move-object v4, v3

    move-object/from16 v3, v16

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v4, v3

    .line 68
    :goto_5
    :try_start_12
    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 69
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 70
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v5, "Data loss. Error selecting raw event. appId"

    .line 71
    invoke-static {v3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 72
    invoke-virtual {v2, v5, v3, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v4, :cond_e

    .line 73
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_e
    return-void

    :catchall_1
    move-exception v0

    move-object v3, v4

    :goto_6
    if-eqz v3, :cond_f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_f
    throw v0
.end method

.method public final t(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide p1

    .line 6
    :cond_0
    :try_start_1
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database returned empty set"

    invoke-direct {p2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    :try_start_2
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 8
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v2, "Database error"

    .line 10
    invoke-virtual {v0, v2, p1, p2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_1
    throw p1
.end method

.method public final u(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide p1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide p3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    iget-object p3, p0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {p3}, Lrx4;->a()Lqw4;

    move-result-object p3

    .line 7
    iget-object p3, p3, Lqw4;->f:Low4;

    const-string p4, "Database error"

    .line 8
    invoke-virtual {p3, p4, p1, p2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 11
    :cond_1
    throw p1
.end method

.method public final v()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb25;->f()V

    .line 2
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb25;->f()V

    .line 2
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb25;->f()V

    .line 2
    invoke-virtual {p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final y()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    :try_start_0
    iget-object v0, p0, Lgs4;->d:Lfs4;

    .line 2
    invoke-virtual {v0}, Lfs4;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lqw4;->i:Low4;

    const-string v2, "Error opening database"

    .line 5
    invoke-virtual {v1, v2, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    throw v0
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;)Lls4;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v15, p2

    .line 1
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lly4;->d()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lb25;->f()V

    new-instance v0, Ljava/util/ArrayList;

    const-string v2, "lifetime_count"

    const-string v3, "current_bundle_count"

    const-string v4, "last_fire_timestamp"

    const-string v5, "last_bundled_timestamp"

    const-string v6, "last_bundled_day"

    const-string v7, "last_sampled_complex_event_id"

    const-string v8, "last_sampling_rate"

    const-string v9, "last_exempt_from_sampling"

    const-string v10, "current_session_count"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v19, 0x0

    .line 6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v10, 0x0

    new-array v3, v10, [Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v10

    const/4 v11, 0x1

    aput-object v15, v6, v11

    const-string v3, "events"

    const-string v5, "app_id=? and name=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_0

    .line 10
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    return-object v19

    .line 11
    :cond_0
    :try_start_2
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 12
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 13
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v0, 0x3

    .line 14
    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    move-wide/from16 v20, v3

    goto :goto_0

    :cond_1
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    :goto_0
    const/4 v0, 0x4

    .line 15
    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, v19

    goto :goto_1

    :cond_2
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    const/4 v2, 0x5

    .line 16
    invoke-interface {v13, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object/from16 v18, v19

    goto :goto_2

    :cond_3
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v18, v2

    :goto_2
    const/4 v2, 0x6

    .line 17
    invoke-interface {v13, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object/from16 v22, v19

    goto :goto_3

    :cond_4
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v22, v2

    :goto_3
    const/4 v2, 0x7

    .line 18
    invoke-interface {v13, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 19
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    const-wide/16 v25, 0x1

    cmp-long v2, v23, v25

    if-nez v2, :cond_5

    const/4 v10, 0x1

    :cond_5
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_4

    :cond_6
    move-object/from16 v23, v19

    :goto_4
    const/16 v2, 0x8

    .line 20
    invoke-interface {v13, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_7

    move-wide v9, v3

    goto :goto_5

    :cond_7
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-wide v9, v2

    :goto_5
    new-instance v24, Lls4;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v2, v24

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v11, v16

    move-object/from16 v25, v13

    move-wide/from16 v13, v20

    move-object v15, v0

    move-object/from16 v16, v18

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    .line 21
    :try_start_3
    invoke-direct/range {v2 .. v18}, Lls4;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 22
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 23
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v2, "Got multiple records for event aggregates, expected one. appId"

    .line 25
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 26
    invoke-virtual {v0, v2, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :cond_8
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    return-object v24

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v25, v13

    :goto_6
    move-object/from16 v19, v25

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v25, v13

    :goto_7
    move-object/from16 v13, v25

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v13, v19

    .line 28
    :goto_8
    :try_start_4
    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 29
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 30
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Error querying events. appId"

    .line 31
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lly4;->a:Lrx4;

    .line 32
    invoke-virtual {v5}, Lrx4;->u()Llw4;

    move-result-object v5

    move-object/from16 v6, p2

    .line 33
    invoke-virtual {v5, v6}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {v2, v3, v4, v5, v0}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v13, :cond_9

    .line 35
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v19

    :catchall_3
    move-exception v0

    move-object/from16 v19, v13

    :goto_9
    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_a
    throw v0
.end method
