.class public Lim0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfp3;


# instance fields
.field public final a:Ltj0;

.field public final b:Lml0;


# direct methods
.method public constructor <init>(Ltj0;)V
    .locals 1

    .line 1
    new-instance v0, Lml0;

    invoke-direct {v0}, Lml0;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lim0;->a:Ltj0;

    .line 4
    iput-object v0, p0, Lim0;->b:Lml0;

    return-void
.end method


# virtual methods
.method public zza(Lj40;)Lpu3;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj40<",
            "*>;)",
            "Lpu3;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Luh0;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lj40;->zzf()Lui3;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v10, v0, Lui3;->b:Ljava/lang/String;

    if-eqz v10, :cond_1

    const-string v11, "If-None-Match"

    .line 7
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    iget-wide v10, v0, Lui3;->d:J

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-lez v0, :cond_2

    const-string v0, "If-Modified-Since"

    .line 9
    new-instance v12, Ljava/text/SimpleDateFormat;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v12, v14, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v13, "GMT"

    .line 10
    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 11
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-virtual {v9, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v9

    .line 13
    :goto_1
    iget-object v9, v1, Lim0;->a:Ltj0;

    invoke-virtual {v9, v2, v0}, Ltj0;->a(Lj40;Ljava/util/Map;)Lts0;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    iget v11, v9, Lts0;->a:I

    .line 15
    iget-object v0, v9, Lts0;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/16 v10, 0x130

    if-ne v11, v10, :cond_9

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v16, v10, v3

    .line 17
    invoke-virtual/range {p1 .. p1}, Lj40;->zzf()Lui3;

    move-result-object v10

    if-nez v10, :cond_3

    .line 18
    new-instance v10, Lpu3;

    const/16 v13, 0x130

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v12, v10

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v18}, Lpu3;-><init>(I[BZJLjava/util/List;)V

    return-object v10

    .line 19
    :cond_3
    new-instance v11, Ljava/util/TreeSet;

    sget-object v12, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v11, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lbr3;

    .line 22
    iget-object v13, v13, Lbr3;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {v11, v13}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    iget-object v0, v10, Lui3;->h:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 27
    iget-object v0, v10, Lui3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lbr3;

    .line 28
    iget-object v13, v12, Lbr3;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {v11, v13}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 30
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :cond_6
    iget-object v0, v10, Lui3;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 32
    iget-object v0, v10, Lui3;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 34
    new-instance v13, Lbr3;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v13, v14, v12}, Lbr3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 35
    :cond_8
    new-instance v0, Lpu3;

    const/16 v13, 0x130

    iget-object v14, v10, Lui3;->a:[B

    const/4 v10, 0x1

    move-object v12, v0

    move-object v11, v15

    move v15, v10

    move-object/from16 v18, v11

    invoke-direct/range {v12 .. v18}, Lpu3;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    .line 36
    :cond_9
    iget-object v10, v9, Lts0;->d:Ljava/io/InputStream;

    if-eqz v10, :cond_a

    goto :goto_5

    :cond_a
    move-object v10, v8

    :goto_5
    if-eqz v10, :cond_b

    .line 37
    iget v12, v9, Lts0;->c:I

    .line 38
    iget-object v13, v1, Lim0;->b:Lml0;

    .line 39
    invoke-static {v10, v12, v13}, Lc50;->A2(Ljava/io/InputStream;ILml0;)[B

    move-result-object v8

    goto :goto_6

    :cond_b
    new-array v8, v7, [B

    .line 40
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v3

    .line 41
    sget-boolean v10, Ltg0;->a:Z

    if-nez v10, :cond_c

    const-wide/16 v14, 0xbb8

    cmp-long v10, v12, v14

    if-lez v10, :cond_e

    :cond_c
    const-string v10, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v2, v14, v7

    .line 42
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v14, v5

    if-eqz v8, :cond_d

    .line 43
    array-length v12, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_7

    :cond_d
    const-string v12, "null"

    :goto_7
    aput-object v12, v14, v6

    const/4 v12, 0x3

    .line 44
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v12

    const/4 v12, 0x4

    .line 45
    invoke-virtual/range {p1 .. p1}, Lj40;->zzj()Lyc0;

    move-result-object v13

    check-cast v13, Lim3;

    .line 46
    iget v13, v13, Lim3;->b:I

    .line 47
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v12

    .line 48
    invoke-static {v10, v14}, Ltg0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    const/16 v10, 0xc8

    if-lt v11, v10, :cond_f

    const/16 v10, 0x12b

    if-gt v11, v10, :cond_f

    .line 49
    new-instance v17, Lpu3;

    const/4 v13, 0x0

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v3

    move-object/from16 v10, v17

    move-object v12, v8

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lpu3;-><init>(I[BZJLjava/util/List;)V

    return-object v17

    .line 51
    :cond_f
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object v11, v8

    move-object v8, v9

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v11, v8

    .line 52
    :goto_8
    instance-of v9, v0, Ljava/net/SocketTimeoutException;

    if-eqz v9, :cond_10

    .line 53
    new-instance v0, Lte0;

    invoke-direct {v0}, Lte0;-><init>()V

    const-string v5, "socket"

    invoke-static {v5, v2, v0}, Lc50;->m2(Ljava/lang/String;Lj40;Luh0;)V

    goto/16 :goto_0

    .line 54
    :cond_10
    instance-of v9, v0, Ljava/net/MalformedURLException;

    if-eqz v9, :cond_12

    .line 55
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Bad URL "

    invoke-virtual/range {p1 .. p1}, Lj40;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_12
    if-eqz v8, :cond_19

    .line 56
    iget v0, v8, Lts0;->a:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual/range {p1 .. p1}, Lj40;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v5, "Unexpected response code %d for %s"

    invoke-static {v5, v6}, Ltg0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v11, :cond_18

    .line 58
    iget-object v5, v8, Lts0;->b:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 59
    new-instance v5, Lpu3;

    const/4 v12, 0x0

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v6, v3

    move-object v9, v5

    move v10, v0

    invoke-direct/range {v9 .. v15}, Lpu3;-><init>(I[BZJLjava/util/List;)V

    const/16 v6, 0x191

    if-eq v0, v6, :cond_17

    const/16 v6, 0x193

    if-ne v0, v6, :cond_13

    goto :goto_b

    :cond_13
    const/16 v2, 0x190

    if-lt v0, v2, :cond_15

    const/16 v2, 0x1f3

    if-le v0, v2, :cond_14

    goto :goto_a

    .line 61
    :cond_14
    new-instance v0, Lsj3;

    invoke-direct {v0, v5}, Lsj3;-><init>(Lpu3;)V

    throw v0

    :cond_15
    :goto_a
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_16

    const/16 v2, 0x257

    if-gt v0, v2, :cond_16

    .line 62
    new-instance v0, Ltf0;

    invoke-direct {v0, v5}, Ltf0;-><init>(Lpu3;)V

    throw v0

    .line 63
    :cond_16
    new-instance v0, Ltf0;

    invoke-direct {v0, v5}, Ltf0;-><init>(Lpu3;)V

    throw v0

    .line 64
    :cond_17
    :goto_b
    new-instance v0, Leh3;

    invoke-direct {v0, v5}, Leh3;-><init>(Lpu3;)V

    const-string v5, "auth"

    invoke-static {v5, v2, v0}, Lc50;->m2(Ljava/lang/String;Lj40;Luh0;)V

    goto/16 :goto_0

    .line 65
    :cond_18
    new-instance v0, Ltr3;

    invoke-direct {v0}, Ltr3;-><init>()V

    const-string v5, "network"

    invoke-static {v5, v2, v0}, Lc50;->m2(Ljava/lang/String;Lj40;Luh0;)V

    goto/16 :goto_0

    .line 66
    :cond_19
    new-instance v2, Lrt3;

    invoke-direct {v2, v0}, Lrt3;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
