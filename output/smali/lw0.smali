.class public final Llw0;
.super Lzv0;
.source "SourceFile"

# interfaces
.implements Lsk3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzv0;",
        "Lsk3<",
        "Lek3;",
        ">;"
    }
.end annotation


# instance fields
.field public h:Ljava/lang/String;

.field public final i:Lfu0;

.field public j:Z

.field public final k:Liw0;

.field public final l:Lrv0;

.field public m:Ljava/nio/ByteBuffer;

.field public n:Z

.field public final o:Ljava/lang/Object;

.field public final p:Ljava/lang/String;

.field public final q:I

.field public r:Z


# direct methods
.method public constructor <init>(Liu0;Lfu0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzv0;-><init>(Liu0;)V

    .line 2
    iput-object p2, p0, Llw0;->i:Lfu0;

    .line 3
    new-instance p2, Liw0;

    invoke-direct {p2}, Liw0;-><init>()V

    iput-object p2, p0, Llw0;->k:Liw0;

    .line 4
    new-instance p2, Lrv0;

    invoke-direct {p2}, Lrv0;-><init>()V

    iput-object p2, p0, Llw0;->l:Lrv0;

    .line 5
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llw0;->o:Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Liu0;->t0()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Llw0;->p:Ljava/lang/String;

    .line 7
    invoke-interface {p1}, Liu0;->O()I

    move-result p1

    iput p1, p0, Llw0;->q:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Llw0;->j:Z

    return-void
.end method

.method public final bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final f(Ljava/lang/Object;Ljk3;)V
    .locals 0

    .line 1
    check-cast p1, Lek3;

    .line 2
    instance-of p2, p1, Llk3;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Llw0;->k:Liw0;

    check-cast p1, Llk3;

    .line 4
    iget-object p2, p2, Liw0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    iput-object v8, v7, Llw0;->h:Ljava/lang/String;

    .line 2
    invoke-virtual/range {p0 .. p1}, Llw0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "error"

    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v13, Llk3;

    iget-object v1, v7, Lzv0;->f:Ljava/lang/String;

    iget-object v2, v7, Llw0;->i:Lfu0;

    iget v3, v2, Lfu0;->d:I

    iget v2, v2, Lfu0;->e:I

    invoke-direct {v13, v1, v7, v3, v2}, Llk3;-><init>(Ljava/lang/String;Lsk3;II)V

    .line 4
    iget-object v1, v7, Llw0;->i:Lfu0;

    iget-boolean v1, v1, Lfu0;->i:Z

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lzu0;

    iget-object v12, v7, Lzv0;->e:Landroid/content/Context;

    iget-object v14, v7, Llw0;->p:Ljava/lang/String;

    iget v15, v7, Llw0;->q:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lzu0;-><init>(Landroid/content/Context;Lek3;Ljava/lang/String;ILsk3;Lnv0;)V

    move-object v13, v1

    .line 6
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 7
    new-instance v1, Ljk3;

    const/16 v16, 0x0

    const/16 v24, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, -0x1

    const/16 v23, 0x0

    move-object v14, v1

    .line 8
    invoke-direct/range {v14 .. v24}, Ljk3;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 9
    invoke-interface {v13, v1}, Lek3;->b(Ljk3;)J

    .line 10
    iget-object v1, v7, Lzv0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liu0;

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1, v9, v7}, Liu0;->h(Ljava/lang/String;Lzv0;)V

    .line 12
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v2

    .line 14
    sget-object v4, Ly40;->r:Lo40;

    .line 15
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 16
    invoke-virtual {v5, v4}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v4

    .line 17
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 18
    sget-object v6, Ly40;->q:Lo40;

    .line 19
    sget-object v11, Los3;->j:Los3;

    iget-object v11, v11, Los3;->f:Lu40;

    .line 20
    invoke-virtual {v11, v6}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v6

    .line 21
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 22
    iget-object v6, v7, Llw0;->i:Lfu0;

    iget v6, v6, Lfu0;->c:I

    .line 23
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v7, Llw0;->m:Ljava/nio/ByteBuffer;

    const/16 v6, 0x2000

    new-array v14, v6, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-wide v15, v2

    move-object/from16 v17, v10

    .line 24
    :goto_0
    :try_start_1
    iget-object v10, v7, Llw0;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 25
    invoke-interface {v13, v14, v0, v6}, Lek3;->read([BII)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, v7, Llw0;->r:Z

    .line 27
    iget-object v0, v7, Llw0;->l:Lrv0;

    iget-object v1, v7, Llw0;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lrv0;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v5, v1

    .line 28
    sget-object v0, Lzr0;->b:Landroid/os/Handler;

    new-instance v10, Lcw0;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v9

    invoke-direct/range {v1 .. v6}, Lcw0;-><init>(Lzv0;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 29
    :cond_2
    iget-object v6, v7, Llw0;->o:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    :try_start_2
    iget-boolean v10, v7, Llw0;->j:Z

    if-nez v10, :cond_3

    .line 31
    iget-object v10, v7, Llw0;->m:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v13

    const/4 v13, 0x0

    invoke-virtual {v10, v14, v13, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    move-object/from16 v18, v13

    .line 32
    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    iget-object v0, v7, Llw0;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_4

    .line 34
    invoke-virtual/range {p0 .. p0}, Llw0;->t()V

    :goto_2
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_4
    iget-boolean v0, v7, Llw0;->j:Z

    if-nez v0, :cond_7

    .line 36
    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v19

    sub-long v21, v19, v15

    cmp-long v0, v21, v4

    if-ltz v0, :cond_5

    .line 37
    invoke-virtual/range {p0 .. p0}, Llw0;->t()V

    move-wide/from16 v15, v19

    :cond_5
    sub-long v19, v19, v2

    const-wide/16 v21, 0x3e8

    mul-long v21, v21, v11

    cmp-long v0, v19, v21

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    const/16 v6, 0x2000

    move-object/from16 v13, v18

    goto :goto_0

    :cond_6
    const-string v1, "downloadTimeout"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v0, 0x31

    .line 38
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Timeout exceeded. Limit: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    :try_start_5
    const-string v1, "externalAbort"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 40
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    iget-object v2, v7, Llw0;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/16 v3, 0x23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Precache abort at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    move-object v10, v1

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 41
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    :goto_3
    move-object/from16 v10, v17

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v17, v10

    goto :goto_3

    .line 42
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljo;->x(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Ljo;->x(Ljava/lang/String;I)I

    move-result v2

    const-string v3, ":"

    invoke-static {v2, v1, v3, v0}, Ljo;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x22

    .line 43
    invoke-static {v8, v1}, Ljo;->x(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljo;->x(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to preload url "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Exception: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v7, v8, v9, v10, v0}, Lzv0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "cache:"

    .line 1
    invoke-static {p1}, Lzr0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final t()V
    .locals 16

    move-object/from16 v13, p0

    .line 1
    iget-object v0, v13, Llw0;->k:Liw0;

    .line 2
    iget-object v1, v0, Liw0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llk3;

    .line 5
    iget-object v2, v2, Llk3;->h:Ljava/net/HttpURLConnection;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    :try_start_0
    const-string v5, "content-length"

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 10
    iget-wide v6, v0, Liw0;->b:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Liw0;->b:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    .line 11
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_4
    iget-wide v0, v0, Liw0;->b:J

    long-to-int v5, v0

    .line 13
    iget-object v0, v13, Llw0;->l:Lrv0;

    iget-object v1, v13, Llw0;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lrv0;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 14
    iget-object v0, v13, Llw0;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-float v0, v1

    int-to-float v2, v4

    int-to-float v6, v5

    div-float/2addr v2, v6

    mul-float v2, v2, v0

    .line 15
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lez v0, :cond_5

    const/4 v2, 0x1

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 16
    :goto_3
    sget v11, Lcv0;->x:I

    .line 17
    sget v12, Lcv0;->y:I

    .line 18
    iget-object v2, v13, Llw0;->h:Ljava/lang/String;

    .line 19
    invoke-virtual {v13, v2}, Llw0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    int-to-long v6, v0

    int-to-long v8, v1

    .line 20
    sget-object v14, Lzr0;->b:Landroid/os/Handler;

    new-instance v15, Law0;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v12}, Law0;-><init>(Lzv0;Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
