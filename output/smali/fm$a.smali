.class public Lfm$a;
.super Lhg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm;-><init>(Llg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhg<",
        "Ldm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lfm;Llg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lhg;-><init>(Llg;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec`(`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public d(Leh;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p1

    .line 1
    move-object/from16 v0, p2

    check-cast v0, Ldm;

    .line 2
    iget-object v2, v0, Ldm;->a:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 3
    iget-object v2, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v4, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v4, v3, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object v2, v0, Ldm;->b:Lak;

    invoke-static {v2}, Lbi;->Z(Lak;)I

    move-result v2

    int-to-long v4, v2

    .line 6
    iget-object v2, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 7
    iget-object v2, v0, Ldm;->c:Ljava/lang/String;

    const/4 v4, 0x3

    if-nez v2, :cond_1

    .line 8
    iget-object v2, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v5, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v4, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 10
    :goto_1
    iget-object v2, v0, Ldm;->d:Ljava/lang/String;

    const/4 v5, 0x4

    if-nez v2, :cond_2

    .line 11
    iget-object v2, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 12
    :cond_2
    iget-object v7, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v7, v5, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 13
    :goto_2
    iget-object v2, v0, Ldm;->e:Lsj;

    invoke-static {v2}, Lsj;->c(Lsj;)[B

    move-result-object v2

    const/4 v7, 0x5

    if-nez v2, :cond_3

    .line 14
    iget-object v2, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v7}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 15
    :cond_3
    iget-object v8, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v8, v7, v2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    .line 16
    :goto_3
    iget-object v2, v0, Ldm;->f:Lsj;

    invoke-static {v2}, Lsj;->c(Lsj;)[B

    move-result-object v2

    const/4 v7, 0x6

    if-nez v2, :cond_4

    .line 17
    iget-object v2, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v7}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 18
    :cond_4
    iget-object v8, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v8, v7, v2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    :goto_4
    const/4 v2, 0x7

    .line 19
    iget-wide v7, v0, Ldm;->g:J

    .line 20
    iget-object v9, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v9, v2, v7, v8}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0x8

    .line 21
    iget-wide v7, v0, Ldm;->h:J

    .line 22
    iget-object v9, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v9, v2, v7, v8}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0x9

    .line 23
    iget-wide v7, v0, Ldm;->i:J

    .line 24
    iget-object v9, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v9, v2, v7, v8}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0xa

    .line 25
    iget v7, v0, Ldm;->k:I

    int-to-long v7, v7

    .line 26
    iget-object v9, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v9, v2, v7, v8}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 27
    iget-object v2, v0, Ldm;->l:Loj;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const-string v8, " to int"

    const-string v9, "Could not convert "

    if-eqz v7, :cond_6

    if-ne v7, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    .line 29
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v2, 0x0

    :goto_5
    const/16 v7, 0xb

    int-to-long v11, v2

    .line 30
    iget-object v2, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v7, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0xc

    .line 31
    iget-wide v11, v0, Ldm;->m:J

    .line 32
    iget-object v7, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v7, v2, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0xd

    .line 33
    iget-wide v11, v0, Ldm;->n:J

    .line 34
    iget-object v7, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v7, v2, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0xe

    .line 35
    iget-wide v11, v0, Ldm;->o:J

    .line 36
    iget-object v7, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v7, v2, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0xf

    .line 37
    iget-wide v11, v0, Ldm;->p:J

    .line 38
    iget-object v7, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v7, v2, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 39
    iget-object v0, v0, Ldm;->j:Lqj;

    const/16 v2, 0x15

    const/16 v7, 0x14

    const/16 v11, 0x13

    const/16 v12, 0x12

    const/16 v13, 0x11

    const/16 v14, 0x10

    if-eqz v0, :cond_11

    .line 40
    iget-object v10, v0, Lqj;->a:Lwj;

    .line 41
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-eqz v15, :cond_b

    if-eq v15, v3, :cond_a

    if-eq v15, v6, :cond_9

    if-eq v15, v4, :cond_8

    if-ne v15, v5, :cond_7

    goto :goto_7

    .line 42
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v3, 0x3

    goto :goto_6

    :cond_9
    const/4 v3, 0x2

    :cond_a
    :goto_6
    move v5, v3

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    :goto_7
    int-to-long v3, v5

    .line 43
    iget-object v5, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v14, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 44
    iget-boolean v3, v0, Lqj;->b:Z

    int-to-long v3, v3

    .line 45
    iget-object v5, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v13, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 46
    iget-boolean v3, v0, Lqj;->c:Z

    int-to-long v3, v3

    .line 47
    iget-object v5, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v12, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 48
    iget-boolean v3, v0, Lqj;->d:Z

    int-to-long v3, v3

    .line 49
    iget-object v5, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v11, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 50
    iget-boolean v3, v0, Lqj;->e:Z

    int-to-long v3, v3

    .line 51
    iget-object v5, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v7, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 52
    iget-wide v3, v0, Lqj;->f:J

    .line 53
    iget-object v5, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 54
    iget-wide v2, v0, Lqj;->g:J

    .line 55
    iget-object v4, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    const/16 v5, 0x16

    invoke-virtual {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 56
    iget-object v0, v0, Lqj;->h:Lrj;

    .line 57
    invoke-virtual {v0}, Lrj;->a()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    goto :goto_c

    .line 58
    :cond_c
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    invoke-virtual {v0}, Lrj;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 61
    iget-object v0, v0, Lrj;->a:Ljava/util/Set;

    .line 62
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrj$a;

    .line 63
    iget-object v5, v3, Lrj$a;->a:Landroid/net/Uri;

    .line 64
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 65
    iget-boolean v3, v3, Lrj$a;->b:Z

    .line 66
    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 67
    :cond_d
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_e

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    .line 68
    :goto_9
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_e

    .line 69
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 70
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    :cond_e
    :goto_a
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 72
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 73
    :goto_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_c
    if-nez v3, :cond_f

    .line 74
    iget-object v0, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_11

    :cond_f
    const/16 v2, 0x17

    .line 75
    iget-object v0, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_11

    :goto_d
    move-object v1, v0

    move-object v4, v3

    :goto_e
    if-eqz v4, :cond_10

    .line 76
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 77
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    :cond_10
    :goto_f
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_10

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 79
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 80
    :goto_10
    throw v1

    .line 81
    :cond_11
    iget-object v0, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 82
    iget-object v0, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 83
    iget-object v0, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v12}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 84
    iget-object v0, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 85
    iget-object v0, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 86
    iget-object v0, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 87
    iget-object v0, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 88
    iget-object v0, v1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    :goto_11
    return-void
.end method
