.class public final Lbx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljo2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljo2<",
        "Lex1;",
        "Ldx1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lzm0;

.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lzm0;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbx1;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lbx1;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lbx1;->c:Lzm0;

    .line 5
    iput-object p4, p0, Lbx1;->d:Ljava/lang/String;

    .line 6
    iput p5, p0, Lbx1;->e:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lex1;

    .line 2
    iget-object v2, v0, Lex1;->b:Lsm0;

    .line 3
    iget-object v3, v2, Lsm0;->f:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lex1;->a:Lorg/json/JSONObject;

    .line 5
    iget-object v4, v1, Lbx1;->d:Ljava/lang/String;

    const-string v5, "Received error HTTP response code: "

    const-string v6, "doritos_v2"

    const-string v7, "doritos"

    .line 6
    sget-object v8, Ldm2;->e:Ldm2;

    :try_start_0
    const-string v9, "http_timeout_millis"

    const v10, 0xea60

    .line 7
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 8
    iget v10, v2, Lsm0;->g:I

    const/4 v11, -0x2

    const/4 v15, 0x1

    if-eq v10, v11, :cond_2

    if-ne v10, v15, :cond_1

    .line 9
    iget-object v0, v2, Lsm0;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v2, ", "

    .line 10
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis0;->zzex(Ljava/lang/String;)V

    .line 11
    :cond_0
    new-instance v0, Lbu1;

    sget-object v2, Ldm2;->f:Ldm2;

    const-string v3, "Error building request URL."

    invoke-direct {v0, v2, v3}, Lbu1;-><init>(Ldm2;Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    new-instance v0, Lbu1;

    invoke-direct {v0, v8}, Lbu1;-><init>(Ldm2;)V

    throw v0

    .line 13
    :cond_2
    new-instance v10, Ldx1;

    invoke-direct {v10}, Ldx1;-><init>()V

    const-string v11, "SDK version: "

    .line 14
    iget-object v12, v1, Lbx1;->b:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_3
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v11, v12

    :goto_0
    invoke-static {v11}, Lis0;->zzey(Ljava/lang/String;)V

    const-string v11, "AdRequestServiceImpl: Sending request: "

    .line 15
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_4
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v11, v12

    :goto_1
    invoke-static {v11}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 16
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v12

    invoke-interface {v12}, Lb20;->b()J

    move-result-wide v18

    const/4 v12, 0x0

    const/16 v20, 0x0

    .line 19
    :goto_2
    iget-object v12, v1, Lbx1;->c:Lzm0;

    iget v13, v1, Lbx1;->e:I

    invoke-interface {v12, v13}, Lzm0;->a(I)V

    .line 20
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 21
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v11

    iget-object v12, v1, Lbx1;->a:Landroid/content/Context;

    iget-object v13, v1, Lbx1;->b:Ljava/lang/String;
    :try_end_1
    .catch Lbu1; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 p1, v14

    move/from16 v14, v16

    move-object/from16 v15, p1

    move/from16 v16, v17

    move/from16 v17, v9

    .line 22
    :try_start_2
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    .line 23
    iget-boolean v11, v2, Lsm0;->e:Z

    if-eqz v11, :cond_5

    .line 24
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "Cookie"
    :try_end_2
    .catch Lbu1; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v12, p1

    .line 25
    :try_start_3
    invoke-virtual {v12, v11, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object/from16 v12, p1

    .line 26
    :goto_3
    iget-boolean v11, v2, Lsm0;->d:Z
    :try_end_3
    .catch Lbu1; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const-string v13, ""

    if-eqz v11, :cond_8

    :try_start_4
    const-string v11, "pii"

    .line 27
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 28
    invoke-virtual {v11, v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "x-afma-drt-cookie"

    .line 29
    invoke-virtual {v11, v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 30
    invoke-virtual {v12, v14, v15}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_6
    invoke-virtual {v11, v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "x-afma-drt-v2-cookie"

    .line 32
    invoke-virtual {v11, v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 33
    invoke-virtual {v12, v14, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v11, "DSID signal does not exist."

    .line 34
    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 35
    :cond_8
    :goto_4
    iget-object v11, v2, Lsm0;->c:Ljava/lang/String;

    .line 36
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    const/4 v11, 0x1

    .line 37
    invoke-virtual {v12, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 38
    iget-object v15, v2, Lsm0;->c:Ljava/lang/String;

    .line 39
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 40
    array-length v11, v15

    invoke-virtual {v12, v11}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_4
    .catch Lbu1; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 41
    :try_start_5
    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 42
    :try_start_6
    invoke-virtual {v11, v15}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 43
    :try_start_7
    invoke-interface {v11}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lbu1; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v14, v11

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_9

    .line 44
    :try_start_8
    invoke-interface {v14}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lbu1; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 45
    :catch_0
    :cond_9
    :try_start_9
    throw v0

    :cond_a
    const/4 v15, 0x0

    .line 46
    :catch_1
    :goto_6
    new-instance v11, Lds0;

    const/4 v14, 0x0

    .line 47
    invoke-direct {v11, v14}, Lds0;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v11, v12, v15}, Lds0;->e(Ljava/net/HttpURLConnection;[B)V

    .line 49
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 50
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v16

    .line 51
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 52
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    check-cast v14, Ljava/lang/String;

    .line 53
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/List;

    .line 54
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 55
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v17, v2

    goto :goto_8

    :cond_b
    move-object/from16 v17, v2

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    move-object/from16 v2, v17

    move-object/from16 v0, v21

    const/4 v14, 0x0

    goto :goto_7

    :cond_c
    move-object/from16 v21, v0

    move-object/from16 v17, v2

    .line 57
    invoke-virtual {v11, v12, v15}, Lds0;->d(Ljava/net/HttpURLConnection;I)V

    .line 58
    iput v15, v10, Ldx1;->a:I

    .line 59
    iput-object v3, v10, Ldx1;->b:Ljava/util/Map;

    .line 60
    iput-object v13, v10, Ldx1;->c:Ljava/lang/String;
    :try_end_9
    .catch Lbu1; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    const/16 v0, 0xc8

    const/16 v2, 0x12c

    if-lt v15, v0, :cond_10

    if-ge v15, v2, :cond_10

    .line 61
    :try_start_a
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 62
    :try_start_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 63
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lbu1; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 64
    :catch_2
    :try_start_d
    invoke-virtual {v11, v0}, Lds0;->f(Ljava/lang/String;)V

    .line 65
    iput-object v0, v10, Ldx1;->c:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Ly40;->f3:Lo40;

    .line 67
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 68
    invoke-virtual {v2, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_9

    .line 70
    :cond_d
    new-instance v0, Lbu1;

    sget-object v2, Ldm2;->g:Ldm2;

    invoke-direct {v0, v2}, Lbu1;-><init>(Ldm2;)V

    throw v0

    .line 71
    :cond_e
    :goto_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v2

    sub-long v2, v2, v18

    iput-wide v2, v10, Ldx1;->d:J
    :try_end_d
    .catch Lbu1; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 72
    :try_start_e
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 73
    iget-object v0, v1, Lbx1;->c:Lzm0;

    invoke-interface {v0}, Lzm0;->b()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object v14, v2

    goto :goto_a

    :catchall_3
    move-exception v0

    const/4 v14, 0x0

    :goto_a
    if-eqz v14, :cond_f

    .line 74
    :try_start_f
    invoke-interface {v14}, Ljava/io/Closeable;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catch Lbu1; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 75
    :catch_3
    :cond_f
    :try_start_10
    throw v0

    :cond_10
    if-lt v15, v2, :cond_13

    const/16 v0, 0x190

    if-ge v15, v0, :cond_13

    const-string v0, "Location"

    .line 76
    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 78
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    add-int/lit8 v2, v20, 0x1

    .line 79
    sget-object v13, Ly40;->S2:Lo40;

    .line 80
    sget-object v14, Los3;->j:Los3;

    iget-object v14, v14, Los3;->f:Lu40;

    .line 81
    invoke-virtual {v14, v13}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v13

    .line 82
    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_10
    .catch Lbu1; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-gt v2, v13, :cond_11

    .line 83
    :try_start_11
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 84
    iget-object v12, v1, Lbx1;->c:Lzm0;

    invoke-interface {v12}, Lzm0;->b()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    move/from16 v20, v2

    move-object/from16 v2, v17

    move-object/from16 v0, v21

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_11
    :try_start_12
    const-string v0, "Too many redirects."

    .line 85
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lbu1;

    const-string v2, "Too many redirects"

    invoke-direct {v0, v8, v2}, Lbu1;-><init>(Ldm2;Ljava/lang/String;)V

    throw v0

    :cond_12
    const-string v0, "No location header to follow redirect."

    .line 87
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 88
    new-instance v0, Lbu1;

    const-string v2, "No location header to follow redirect"

    invoke-direct {v0, v8, v2}, Lbu1;-><init>(Ldm2;Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lbu1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v8, v2}, Lbu1;-><init>(Ldm2;Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Lbu1; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :catch_4
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_d

    :catch_5
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v12, v14

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v12, v14

    .line 91
    :goto_b
    :try_start_13
    sget-object v2, Ly40;->T4:Lo40;

    .line 92
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 93
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 94
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 95
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v2

    sub-long v2, v2, v18

    iput-wide v2, v10, Ldx1;->d:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 96
    :try_start_14
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 97
    iget-object v0, v1, Lbx1;->c:Lzm0;

    invoke-interface {v0}, Lzm0;->b()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    :goto_c
    return-object v10

    .line 98
    :cond_14
    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :catchall_6
    move-exception v0

    .line 99
    :goto_d
    :try_start_16
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 100
    iget-object v2, v1, Lbx1;->c:Lzm0;

    invoke-interface {v2}, Lzm0;->b()V

    .line 101
    throw v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    :catch_7
    move-exception v0

    const-string v2, "Error while connecting to ad server: "

    .line 102
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_15
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 103
    :goto_e
    invoke-static {v2}, Lis0;->zzez(Ljava/lang/String;)V

    .line 104
    new-instance v3, Lbu1;

    invoke-direct {v3, v8, v2, v0}, Lbu1;-><init>(Ldm2;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
