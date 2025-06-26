.class public final Lpa7$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lla7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final e:Lat7;

.field public final f:Lpa7$a;

.field public final g:Loa7$a;


# direct methods
.method public constructor <init>(Lat7;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpa7$c;->e:Lat7;

    .line 3
    new-instance p3, Lpa7$a;

    invoke-direct {p3, p1}, Lpa7$a;-><init>(Lat7;)V

    iput-object p3, p0, Lpa7$c;->f:Lpa7$a;

    .line 4
    new-instance p1, Loa7$a;

    invoke-direct {p1, p2, p3}, Loa7$a;-><init>(ILvt7;)V

    iput-object p1, p0, Lpa7$c;->g:Loa7$a;

    return-void
.end method


# virtual methods
.method public a(Lla7$a;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    sget-object v2, Lka7;->h:Lka7;

    sget-object v3, Lka7;->g:Lka7;

    sget-object v5, Lq97$a;->e:Lq97$a;

    const/4 v10, 0x0

    :try_start_0
    iget-object v4, v1, Lpa7$c;->e:Lat7;

    const-wide/16 v6, 0x9

    invoke-interface {v4, v6, v7}, Lat7;->D0(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v4, v1, Lpa7$c;->e:Lat7;

    invoke-static {v4}, Lpa7;->b(Lat7;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v11, 0x1

    if-ltz v4, :cond_20

    const/16 v7, 0x4000

    if-gt v4, v7, :cond_20

    .line 3
    iget-object v7, v1, Lpa7$c;->e:Lat7;

    invoke-interface {v7}, Lat7;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 4
    iget-object v8, v1, Lpa7$c;->e:Lat7;

    invoke-interface {v8}, Lat7;->readByte()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 5
    iget-object v9, v1, Lpa7$c;->e:Lat7;

    invoke-interface {v9}, Lat7;->readInt()I

    move-result v9

    const v12, 0x7fffffff

    and-int v13, v9, v12

    .line 6
    sget-object v9, Lpa7;->a:Ljava/util/logging/Logger;

    .line 7
    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v14}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {v11, v13, v4, v7, v8}, Lpa7$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v9, 0x2

    const-wide/16 v14, 0x0

    packed-switch v7, :pswitch_data_0

    .line 8
    iget-object v0, v1, Lpa7$c;->e:Lat7;

    int-to-long v2, v4

    invoke-interface {v0, v2, v3}, Lat7;->skip(J)V

    goto/16 :goto_d

    .line 9
    :pswitch_0
    invoke-virtual {v1, v0, v4, v13}, Lpa7$c;->i(Lla7$a;II)V

    goto/16 :goto_d

    :pswitch_1
    const/16 v2, 0x8

    if-lt v4, v2, :cond_9

    if-nez v13, :cond_8

    .line 10
    iget-object v3, v1, Lpa7$c;->e:Lat7;

    invoke-interface {v3}, Lat7;->readInt()I

    move-result v3

    .line 11
    iget-object v7, v1, Lpa7$c;->e:Lat7;

    invoke-interface {v7}, Lat7;->readInt()I

    move-result v7

    sub-int/2addr v4, v2

    .line 12
    invoke-static {v7}, Lka7;->i(I)Lka7;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 13
    sget-object v7, Lbt7;->h:Lbt7;

    if-lez v4, :cond_1

    .line 14
    iget-object v7, v1, Lpa7$c;->e:Lat7;

    int-to-long v12, v4

    invoke-interface {v7, v12, v13}, Lat7;->s(J)Lbt7;

    move-result-object v7

    .line 15
    :cond_1
    check-cast v0, Lp97$e;

    .line 16
    iget-object v4, v0, Lp97$e;->e:Lq97;

    invoke-virtual {v4, v5, v3, v2, v7}, Lq97;->c(Lq97$a;ILka7;Lbt7;)V

    .line 17
    sget-object v4, Lka7;->t:Lka7;

    if-ne v2, v4, :cond_2

    .line 18
    invoke-virtual {v7}, Lbt7;->O()Ljava/lang/String;

    move-result-object v4

    .line 19
    sget-object v5, Lp97;->R:Ljava/util/logging/Logger;

    .line 20
    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    aput-object v4, v9, v11

    const-string v10, "%s: Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: %s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const-string v5, "too_many_pings"

    .line 21
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 22
    iget-object v4, v0, Lp97$e;->h:Lp97;

    .line 23
    iget-object v4, v4, Lp97;->K:Ljava/lang/Runnable;

    .line 24
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 25
    :cond_2
    iget v2, v2, Lka7;->e:I

    int-to-long v4, v2

    .line 26
    sget-object v2, Lu67$g;->u:[Lu67$g;

    array-length v8, v2

    int-to-long v8, v8

    cmp-long v10, v4, v8

    if-gez v10, :cond_4

    cmp-long v8, v4, v14

    if-gez v8, :cond_3

    goto :goto_0

    :cond_3
    long-to-int v8, v4

    .line 27
    aget-object v2, v2, v8

    goto :goto_1

    :cond_4
    :goto_0
    move-object v2, v6

    :goto_1
    if-nez v2, :cond_5

    .line 28
    sget-object v2, Lu67$g;->i:Lu67$g;

    .line 29
    iget-object v2, v2, Lu67$g;->f:Lx47;

    .line 30
    iget-object v2, v2, Lx47;->a:Lx47$b;

    .line 31
    iget v2, v2, Lx47$b;->e:I

    .line 32
    invoke-static {v2}, Lx47;->d(I)Lx47;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized HTTP/2 error code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {v2, v4}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v2

    goto :goto_2

    .line 34
    :cond_5
    iget-object v2, v2, Lu67$g;->f:Lx47;

    :goto_2
    const-string v4, "Received Goaway"

    .line 35
    invoke-virtual {v2, v4}, Lx47;->b(Ljava/lang/String;)Lx47;

    move-result-object v2

    .line 36
    invoke-virtual {v7}, Lbt7;->t()I

    move-result v4

    if-lez v4, :cond_6

    .line 37
    invoke-virtual {v7}, Lbt7;->O()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lx47;->b(Ljava/lang/String;)Lx47;

    move-result-object v2

    .line 38
    :cond_6
    iget-object v0, v0, Lp97$e;->h:Lp97;

    .line 39
    sget-object v4, Lp97;->Q:Ljava/util/Map;

    .line 40
    invoke-virtual {v0, v3, v6, v2}, Lp97;->v(ILka7;Lx47;)V

    goto/16 :goto_d

    :cond_7
    new-array v0, v11, [Ljava/lang/Object;

    .line 41
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v10

    const-string v2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v2, v0}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :cond_8
    new-array v0, v10, [Ljava/lang/Object;

    const-string v2, "TYPE_GOAWAY streamId != 0"

    .line 42
    invoke-static {v2, v0}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :cond_9
    new-array v0, v11, [Ljava/lang/Object;

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v10

    const-string v2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v2, v0}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    .line 44
    :pswitch_2
    invoke-virtual {v1, v0, v4, v8, v13}, Lpa7$c;->c(Lla7$a;IBI)V

    goto/16 :goto_d

    .line 45
    :pswitch_3
    invoke-virtual {v1, v0, v4, v8, v13}, Lpa7$c;->e(Lla7$a;IBI)V

    goto/16 :goto_d

    .line 46
    :pswitch_4
    invoke-virtual {v1, v0, v4, v8, v13}, Lpa7$c;->g(Lla7$a;IBI)V

    goto/16 :goto_d

    .line 47
    :pswitch_5
    invoke-virtual {v1, v0, v4, v13}, Lpa7$c;->f(Lla7$a;II)V

    goto/16 :goto_d

    :pswitch_6
    const/4 v2, 0x5

    if-ne v4, v2, :cond_b

    if-eqz v13, :cond_a

    .line 48
    iget-object v2, v1, Lpa7$c;->e:Lat7;

    invoke-interface {v2}, Lat7;->readInt()I

    .line 49
    iget-object v2, v1, Lpa7$c;->e:Lat7;

    invoke-interface {v2}, Lat7;->readByte()B

    .line 50
    check-cast v0, Lp97$e;

    goto/16 :goto_d

    :cond_a
    new-array v0, v10, [Ljava/lang/Object;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    .line 51
    invoke-static {v2, v0}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :cond_b
    new-array v0, v11, [Ljava/lang/Object;

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v10

    const-string v2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v2, v0}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :pswitch_7
    if-eqz v13, :cond_17

    and-int/lit8 v7, v8, 0x1

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    goto :goto_3

    :cond_c
    const/4 v7, 0x0

    :goto_3
    and-int/lit8 v16, v8, 0x8

    if-eqz v16, :cond_d

    .line 53
    iget-object v14, v1, Lpa7$c;->e:Lat7;

    invoke-interface {v14}, Lat7;->readByte()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    int-to-short v14, v14

    goto :goto_4

    :cond_d
    const/4 v14, 0x0

    :goto_4
    and-int/lit8 v15, v8, 0x20

    if-eqz v15, :cond_e

    .line 54
    iget-object v15, v1, Lpa7$c;->e:Lat7;

    invoke-interface {v15}, Lat7;->readInt()I

    .line 55
    iget-object v15, v1, Lpa7$c;->e:Lat7;

    invoke-interface {v15}, Lat7;->readByte()B

    .line 56
    move-object v15, v0

    check-cast v15, Lp97$e;

    add-int/lit8 v4, v4, -0x5

    .line 57
    :cond_e
    invoke-static {v4, v8, v14}, Lpa7;->c(IBS)I

    move-result v4

    .line 58
    invoke-virtual {v1, v4, v14, v8, v13}, Lpa7$c;->b(ISBI)Ljava/util/List;

    move-result-object v4

    .line 59
    check-cast v0, Lp97$e;

    .line 60
    iget-object v8, v0, Lp97$e;->e:Lq97;

    .line 61
    invoke-virtual {v8}, Lq97;->a()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 62
    iget-object v14, v8, Lq97;->a:Ljava/util/logging/Logger;

    iget-object v8, v8, Lq97;->b:Ljava/util/logging/Level;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " HEADERS: streamId="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " headers="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " endStream="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 63
    :cond_f
    iget-object v5, v0, Lp97$e;->h:Lp97;

    .line 64
    iget v5, v5, Lp97;->L:I

    if-eq v5, v12, :cond_12

    const/4 v5, 0x0

    const-wide/16 v14, 0x0

    .line 65
    :goto_5
    move-object v8, v4

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_10

    .line 66
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lna7;

    .line 67
    iget-object v12, v8, Lna7;->a:Lbt7;

    .line 68
    invoke-virtual {v12}, Lbt7;->t()I

    move-result v12

    add-int/lit8 v12, v12, 0x20

    .line 69
    iget-object v8, v8, Lna7;->b:Lbt7;

    .line 70
    invoke-virtual {v8}, Lbt7;->t()I

    move-result v8

    add-int/2addr v8, v12

    int-to-long v11, v8

    add-long/2addr v14, v11

    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x1

    goto :goto_5

    :cond_10
    const-wide/32 v11, 0x7fffffff

    .line 71
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v5, v11

    .line 72
    iget-object v8, v0, Lp97$e;->h:Lp97;

    .line 73
    iget v8, v8, Lp97;->L:I

    if-le v5, v8, :cond_12

    .line 74
    sget-object v6, Lx47;->l:Lx47;

    const-string v11, "Response %s metadata larger than %d: %d"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    if-eqz v7, :cond_11

    const-string v14, "trailer"

    goto :goto_6

    :cond_11
    const-string v14, "header"

    :goto_6
    aput-object v14, v12, v10

    .line 75
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x1

    aput-object v8, v12, v14

    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v9

    .line 77
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-virtual {v6, v5}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v6

    .line 79
    :cond_12
    iget-object v5, v0, Lp97$e;->h:Lp97;

    .line 80
    iget-object v5, v5, Lp97;->j:Ljava/lang/Object;

    .line 81
    monitor-enter v5

    .line 82
    :try_start_1
    iget-object v8, v0, Lp97$e;->h:Lp97;

    .line 83
    iget-object v8, v8, Lp97;->m:Ljava/util/Map;

    .line 84
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo97;

    if-nez v8, :cond_14

    .line 85
    iget-object v4, v0, Lp97$e;->h:Lp97;

    invoke-virtual {v4, v13}, Lp97;->q(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 86
    iget-object v4, v0, Lp97$e;->h:Lp97;

    .line 87
    iget-object v4, v4, Lp97;->h:Lk97;

    .line 88
    invoke-virtual {v4, v13, v2}, Lk97;->I0(ILka7;)V

    goto :goto_7

    :cond_13
    const/4 v10, 0x1

    goto :goto_7

    :cond_14
    if-nez v6, :cond_15

    .line 89
    iget-object v2, v8, Lo97;->m:Lo97$b;

    .line 90
    iget-object v2, v2, Lo97$b;->N:Lfb7;

    .line 91
    sget-object v2, Leb7;->a:Lcb7;

    .line 92
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v2, v8, Lo97;->m:Lo97$b;

    .line 94
    invoke-virtual {v2, v4, v7}, Lo97$b;->p(Ljava/util/List;Z)V

    goto :goto_7

    :cond_15
    if-nez v7, :cond_16

    .line 95
    iget-object v2, v0, Lp97$e;->h:Lp97;

    .line 96
    iget-object v2, v2, Lp97;->h:Lk97;

    .line 97
    sget-object v4, Lka7;->q:Lka7;

    invoke-virtual {v2, v13, v4}, Lk97;->I0(ILka7;)V

    .line 98
    :cond_16
    iget-object v2, v8, Lo97;->m:Lo97$b;

    .line 99
    new-instance v4, Li47;

    invoke-direct {v4}, Li47;-><init>()V

    .line 100
    sget-object v7, Lz57$a;->e:Lz57$a;

    invoke-virtual {v2, v6, v7, v10, v4}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    .line 101
    :goto_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_1f

    .line 102
    iget-object v0, v0, Lp97$e;->h:Lp97;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received header for unknown stream: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lp97;->i(Lp97;Lka7;Ljava/lang/String;)V

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    .line 103
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_17
    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v2, v10, [Ljava/lang/Object;

    .line 104
    invoke-static {v0, v2}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :pswitch_8
    and-int/lit8 v7, v8, 0x1

    if-eqz v7, :cond_18

    const/4 v14, 0x1

    goto :goto_8

    :cond_18
    const/4 v14, 0x0

    :goto_8
    and-int/lit8 v7, v8, 0x20

    if-eqz v7, :cond_19

    const/4 v7, 0x1

    goto :goto_9

    :cond_19
    const/4 v7, 0x0

    :goto_9
    if-nez v7, :cond_1e

    and-int/lit8 v6, v8, 0x8

    if-eqz v6, :cond_1a

    .line 105
    iget-object v6, v1, Lpa7$c;->e:Lat7;

    invoke-interface {v6}, Lat7;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    move v11, v6

    goto :goto_a

    :cond_1a
    const/4 v11, 0x0

    .line 106
    :goto_a
    invoke-static {v4, v8, v11}, Lpa7;->c(IBS)I

    move-result v12

    .line 107
    iget-object v15, v1, Lpa7$c;->e:Lat7;

    check-cast v0, Lp97$e;

    .line 108
    iget-object v4, v0, Lp97$e;->e:Lq97;

    .line 109
    invoke-interface {v15}, Lat7;->r()Lxs7;

    move-result-object v7

    move v6, v13

    move v8, v12

    move v9, v14

    .line 110
    invoke-virtual/range {v4 .. v9}, Lq97;->b(Lq97$a;ILxs7;IZ)V

    .line 111
    iget-object v4, v0, Lp97$e;->h:Lp97;

    invoke-virtual {v4, v13}, Lp97;->p(I)Lo97;

    move-result-object v4

    if-nez v4, :cond_1c

    .line 112
    iget-object v4, v0, Lp97$e;->h:Lp97;

    invoke-virtual {v4, v13}, Lp97;->q(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 113
    iget-object v3, v0, Lp97$e;->h:Lp97;

    .line 114
    iget-object v4, v3, Lp97;->j:Ljava/lang/Object;

    .line 115
    monitor-enter v4

    .line 116
    :try_start_3
    iget-object v3, v0, Lp97$e;->h:Lp97;

    .line 117
    iget-object v3, v3, Lp97;->h:Lk97;

    .line 118
    invoke-virtual {v3, v13, v2}, Lk97;->I0(ILka7;)V

    .line 119
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    int-to-long v2, v12

    .line 120
    invoke-interface {v15, v2, v3}, Lat7;->skip(J)V

    goto :goto_b

    :catchall_1
    move-exception v0

    .line 121
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 122
    :cond_1b
    iget-object v0, v0, Lp97$e;->h:Lp97;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received data for unknown stream: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lp97;->i(Lp97;Lka7;Ljava/lang/String;)V

    goto :goto_c

    :cond_1c
    int-to-long v2, v12

    .line 123
    invoke-interface {v15, v2, v3}, Lat7;->D0(J)V

    .line 124
    new-instance v5, Lxs7;

    invoke-direct {v5}, Lxs7;-><init>()V

    .line 125
    invoke-interface {v15}, Lat7;->r()Lxs7;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v3}, Lxs7;->write(Lxs7;J)V

    .line 126
    iget-object v2, v4, Lo97;->m:Lo97$b;

    .line 127
    iget-object v2, v2, Lo97$b;->N:Lfb7;

    .line 128
    sget-object v2, Leb7;->a:Lcb7;

    .line 129
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v2, v0, Lp97$e;->h:Lp97;

    .line 131
    iget-object v2, v2, Lp97;->j:Ljava/lang/Object;

    .line 132
    monitor-enter v2

    .line 133
    :try_start_5
    iget-object v3, v4, Lo97;->m:Lo97$b;

    .line 134
    invoke-virtual {v3, v5, v14}, Lo97$b;->o(Lxs7;Z)V

    .line 135
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 136
    :goto_b
    iget-object v2, v0, Lp97$e;->h:Lp97;

    .line 137
    iget v3, v2, Lp97;->q:I

    add-int/2addr v3, v12

    iput v3, v2, Lp97;->q:I

    int-to-float v3, v3

    .line 138
    iget v4, v2, Lp97;->f:I

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1d

    .line 139
    iget-object v2, v2, Lp97;->j:Ljava/lang/Object;

    .line 140
    monitor-enter v2

    .line 141
    :try_start_6
    iget-object v3, v0, Lp97$e;->h:Lp97;

    .line 142
    iget-object v4, v3, Lp97;->h:Lk97;

    .line 143
    iget v3, v3, Lp97;->q:I

    int-to-long v5, v3

    .line 144
    invoke-virtual {v4, v10, v5, v6}, Lk97;->windowUpdate(IJ)V

    .line 145
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 146
    iget-object v0, v0, Lp97$e;->h:Lp97;

    .line 147
    iput v10, v0, Lp97;->q:I

    goto :goto_c

    :catchall_2
    move-exception v0

    .line 148
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 149
    :cond_1d
    :goto_c
    iget-object v0, v1, Lpa7$c;->e:Lat7;

    int-to-long v2, v11

    invoke-interface {v0, v2, v3}, Lat7;->skip(J)V

    goto :goto_d

    :catchall_3
    move-exception v0

    .line 150
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_1e
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v2, v10, [Ljava/lang/Object;

    .line 151
    invoke-static {v0, v2}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :cond_1f
    :goto_d
    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x1

    const-string v2, "FRAME_SIZE_ERROR: %s"

    new-array v0, v0, [Ljava/lang/Object;

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v10

    invoke-static {v2, v0}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :catch_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lna7;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa7$c;->f:Lpa7$a;

    iput p1, v0, Lpa7$a;->i:I

    iput p1, v0, Lpa7$a;->f:I

    .line 2
    iput-short p2, v0, Lpa7$a;->j:S

    .line 3
    iput-byte p3, v0, Lpa7$a;->g:B

    .line 4
    iput p4, v0, Lpa7$a;->h:I

    .line 5
    iget-object p1, p0, Lpa7$c;->g:Loa7$a;

    .line 6
    :cond_0
    :goto_0
    iget-object p2, p1, Loa7$a;->b:Lat7;

    invoke-interface {p2}, Lat7;->J()Z

    move-result p2

    if-nez p2, :cond_d

    .line 7
    iget-object p2, p1, Loa7$a;->b:Lat7;

    invoke-interface {p2}, Lat7;->readByte()B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x80

    if-eq p2, p3, :cond_c

    and-int/lit16 p4, p2, 0x80

    if-ne p4, p3, :cond_4

    const/16 p3, 0x7f

    .line 8
    invoke-virtual {p1, p2, p3}, Loa7$a;->g(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    .line 9
    sget-object p3, Loa7;->b:[Lna7;

    .line 10
    array-length p3, p3

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    .line 11
    sget-object p3, Loa7;->b:[Lna7;

    .line 12
    aget-object p2, p3, p2

    .line 13
    iget-object p3, p1, Loa7$a;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    sget-object p3, Loa7;->b:[Lna7;

    .line 15
    array-length p3, p3

    sub-int p3, p2, p3

    invoke-virtual {p1, p3}, Loa7$a;->b(I)I

    move-result p3

    if-ltz p3, :cond_3

    .line 16
    iget-object p4, p1, Loa7$a;->e:[Lna7;

    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    if-gt p3, v0, :cond_3

    .line 17
    iget-object p2, p1, Loa7$a;->a:Ljava/util/List;

    aget-object p3, p4, p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p3, "Header index too large "

    invoke-static {p3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p3, -0x1

    const/16 p4, 0x40

    if-ne p2, p4, :cond_5

    .line 19
    invoke-virtual {p1}, Loa7$a;->f()Lbt7;

    move-result-object p2

    invoke-static {p2}, Loa7;->a(Lbt7;)Lbt7;

    .line 20
    invoke-virtual {p1}, Loa7$a;->f()Lbt7;

    move-result-object p4

    .line 21
    new-instance v0, Lna7;

    invoke-direct {v0, p2, p4}, Lna7;-><init>(Lbt7;Lbt7;)V

    invoke-virtual {p1, p3, v0}, Loa7$a;->e(ILna7;)V

    goto :goto_0

    :cond_5
    and-int/lit8 v0, p2, 0x40

    if-ne v0, p4, :cond_6

    const/16 p4, 0x3f

    .line 22
    invoke-virtual {p1, p2, p4}, Loa7$a;->g(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 23
    invoke-virtual {p1, p2}, Loa7$a;->d(I)Lbt7;

    move-result-object p2

    .line 24
    invoke-virtual {p1}, Loa7$a;->f()Lbt7;

    move-result-object p4

    .line 25
    new-instance v0, Lna7;

    invoke-direct {v0, p2, p4}, Lna7;-><init>(Lbt7;Lbt7;)V

    invoke-virtual {p1, p3, v0}, Loa7$a;->e(ILna7;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 p3, p2, 0x20

    const/16 p4, 0x20

    if-ne p3, p4, :cond_9

    const/16 p3, 0x1f

    .line 26
    invoke-virtual {p1, p2, p3}, Loa7$a;->g(II)I

    move-result p2

    iput p2, p1, Loa7$a;->d:I

    if-ltz p2, :cond_8

    .line 27
    iget p3, p1, Loa7$a;->c:I

    if-gt p2, p3, :cond_8

    .line 28
    iget p3, p1, Loa7$a;->h:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_7

    .line 29
    invoke-virtual {p1}, Loa7$a;->a()V

    goto/16 :goto_0

    :cond_7
    sub-int/2addr p3, p2

    .line 30
    invoke-virtual {p1, p3}, Loa7$a;->c(I)I

    goto/16 :goto_0

    .line 31
    :cond_8
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Invalid dynamic table size update "

    invoke-static {p3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p1, p1, Loa7$a;->d:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    const/16 p3, 0x10

    if-eq p2, p3, :cond_b

    if-nez p2, :cond_a

    goto :goto_2

    :cond_a
    const/16 p3, 0xf

    .line 32
    invoke-virtual {p1, p2, p3}, Loa7$a;->g(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 33
    invoke-virtual {p1, p2}, Loa7$a;->d(I)Lbt7;

    move-result-object p2

    .line 34
    invoke-virtual {p1}, Loa7$a;->f()Lbt7;

    move-result-object p3

    .line 35
    iget-object p4, p1, Loa7$a;->a:Ljava/util/List;

    new-instance v0, Lna7;

    invoke-direct {v0, p2, p3}, Lna7;-><init>(Lbt7;Lbt7;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 36
    :cond_b
    :goto_2
    invoke-virtual {p1}, Loa7$a;->f()Lbt7;

    move-result-object p2

    invoke-static {p2}, Loa7;->a(Lbt7;)Lbt7;

    .line 37
    invoke-virtual {p1}, Loa7$a;->f()Lbt7;

    move-result-object p3

    .line 38
    iget-object p4, p1, Loa7$a;->a:Ljava/util/List;

    new-instance v0, Lna7;

    invoke-direct {v0, p2, p3}, Lna7;-><init>(Lbt7;Lbt7;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 39
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_d
    iget-object p1, p0, Lpa7$c;->g:Loa7$a;

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p1, Loa7$a;->a:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    iget-object p1, p1, Loa7$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p2
.end method

.method public final c(Lla7$a;IBI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p2, v3, :cond_7

    if-nez p4, :cond_6

    .line 1
    iget-object p2, p0, Lpa7$c;->e:Lat7;

    invoke-interface {p2}, Lat7;->readInt()I

    move-result p2

    .line 2
    iget-object p4, p0, Lpa7$c;->e:Lat7;

    invoke-interface {p4}, Lat7;->readInt()I

    move-result p4

    and-int/2addr p3, v2

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 3
    :goto_0
    check-cast p1, Lp97$e;

    int-to-long v3, p2

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    int-to-long v5, p4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 4
    iget-object v5, p1, Lp97$e;->e:Lq97;

    sget-object v6, Lq97$a;->e:Lq97$a;

    invoke-virtual {v5, v6, v3, v4}, Lq97;->d(Lq97$a;J)V

    if-nez p3, :cond_1

    .line 5
    iget-object p3, p1, Lp97$e;->h:Lp97;

    .line 6
    iget-object p3, p3, Lp97;->j:Ljava/lang/Object;

    .line 7
    monitor-enter p3

    .line 8
    :try_start_0
    iget-object p1, p1, Lp97$e;->h:Lp97;

    .line 9
    iget-object p1, p1, Lp97;->h:Lk97;

    .line 10
    invoke-virtual {p1, v2, p2, p4}, Lk97;->ping(ZII)V

    .line 11
    monitor-exit p3

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 12
    :cond_1
    iget-object p2, p1, Lp97$e;->h:Lp97;

    .line 13
    iget-object p2, p2, Lp97;->j:Ljava/lang/Object;

    .line 14
    monitor-enter p2

    .line 15
    :try_start_1
    iget-object p1, p1, Lp97$e;->h:Lp97;

    .line 16
    iget-object p3, p1, Lp97;->v:La77;

    if-eqz p3, :cond_3

    .line 17
    iget-wide v5, p3, La77;->a:J

    cmp-long p4, v5, v3

    if-nez p4, :cond_2

    .line 18
    iput-object v0, p1, Lp97;->v:La77;

    goto :goto_2

    .line 19
    :cond_2
    sget-object p1, Lp97;->R:Ljava/util/logging/Logger;

    .line 20
    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p4, "Received unexpected ping ack. Expecting %d, got %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v2

    .line 22
    invoke-static {p4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_3
    sget-object p1, Lp97;->R:Ljava/util/logging/Logger;

    const-string p3, "Received unexpected ping ack. No ping outstanding"

    .line 24
    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_1
    move-object p3, v0

    .line 25
    :goto_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p3, :cond_5

    .line 26
    monitor-enter p3

    .line 27
    :try_start_2
    iget-boolean p1, p3, La77;->d:Z

    if-eqz p1, :cond_4

    .line 28
    monitor-exit p3

    goto :goto_4

    .line 29
    :cond_4
    iput-boolean v2, p3, La77;->d:Z

    .line 30
    iget-object p1, p3, La77;->b:Lpd5;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2}, Lpd5;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iput-wide p1, p3, La77;->f:J

    .line 31
    iget-object p4, p3, La77;->c:Ljava/util/Map;

    .line 32
    iput-object v0, p3, La77;->c:Ljava/util/Map;

    .line 33
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, La67$a;

    .line 36
    new-instance v1, Ly67;

    invoke-direct {v1, p4, p1, p2}, Ly67;-><init>(La67$a;J)V

    .line 37
    invoke-static {v0, v1}, La77;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 38
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_5
    :goto_4
    return-void

    :catchall_2
    move-exception p1

    .line 39
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_6
    const-string p1, "TYPE_PING streamId != 0"

    new-array p2, v1, [Ljava/lang/Object;

    .line 40
    invoke-static {p1, p2}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_7
    const-string p1, "TYPE_PING length != 8: %s"

    new-array p3, v2, [Ljava/lang/Object;

    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa7$c;->e:Lat7;

    invoke-interface {v0}, Lvt7;->close()V

    return-void
.end method

.method public final e(Lla7$a;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    .line 1
    iget-object v0, p0, Lpa7$c;->e:Lat7;

    invoke-interface {v0}, Lat7;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 2
    :cond_0
    iget-object v1, p0, Lpa7$c;->e:Lat7;

    invoke-interface {v1}, Lat7;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    .line 3
    invoke-static {p2, p3, v0}, Lpa7;->c(IBS)I

    move-result p2

    .line 4
    invoke-virtual {p0, p2, v0, p3, p4}, Lpa7$c;->b(ISBI)Ljava/util/List;

    move-result-object p2

    .line 5
    check-cast p1, Lp97$e;

    .line 6
    iget-object p3, p1, Lp97$e;->e:Lq97;

    sget-object v0, Lq97$a;->e:Lq97$a;

    .line 7
    invoke-virtual {p3}, Lq97;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p3, Lq97;->a:Ljava/util/logging/Logger;

    iget-object p3, p3, Lq97;->b:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " PUSH_PROMISE: streamId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " promisedStreamId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " headers="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object p2, p1, Lp97$e;->h:Lp97;

    .line 10
    iget-object p2, p2, Lp97;->j:Ljava/lang/Object;

    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object p1, p1, Lp97$e;->h:Lp97;

    .line 13
    iget-object p1, p1, Lp97;->h:Lk97;

    .line 14
    sget-object p3, Lka7;->g:Lka7;

    invoke-virtual {p1, p4, p3}, Lk97;->I0(ILka7;)V

    .line 15
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    .line 16
    invoke-static {p1, p2}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1
.end method

.method public final f(Lla7$a;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_6

    if-eqz p3, :cond_5

    .line 1
    iget-object p2, p0, Lpa7$c;->e:Lat7;

    invoke-interface {p2}, Lat7;->readInt()I

    move-result p2

    .line 2
    invoke-static {p2}, Lka7;->i(I)Lka7;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3
    check-cast p1, Lp97$e;

    .line 4
    iget-object p2, p1, Lp97$e;->e:Lq97;

    sget-object v0, Lq97$a;->e:Lq97$a;

    invoke-virtual {p2, v0, p3, v3}, Lq97;->e(Lq97$a;ILka7;)V

    .line 5
    invoke-static {v3}, Lp97;->z(Lka7;)Lx47;

    move-result-object p2

    const-string v0, "Rst Stream"

    invoke-virtual {p2, v0}, Lx47;->b(Ljava/lang/String;)Lx47;

    move-result-object v6

    .line 6
    iget-object p2, v6, Lx47;->a:Lx47$b;

    .line 7
    sget-object v0, Lx47$b;->h:Lx47$b;

    if-eq p2, v0, :cond_1

    sget-object v0, Lx47$b;->k:Lx47$b;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    .line 8
    :goto_1
    iget-object p2, p1, Lp97$e;->h:Lp97;

    .line 9
    iget-object v11, p2, Lp97;->j:Ljava/lang/Object;

    .line 10
    monitor-enter v11

    .line 11
    :try_start_0
    iget-object p2, p1, Lp97$e;->h:Lp97;

    .line 12
    iget-object p2, p2, Lp97;->m:Ljava/util/Map;

    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo97;

    if-eqz p2, :cond_3

    .line 14
    iget-object p2, p2, Lo97;->m:Lo97$b;

    .line 15
    iget-object p2, p2, Lo97$b;->N:Lfb7;

    .line 16
    sget-object p2, Leb7;->a:Lcb7;

    .line 17
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v4, p1, Lp97$e;->h:Lp97;

    .line 19
    sget-object p1, Lka7;->p:Lka7;

    if-ne v3, p1, :cond_2

    sget-object p1, Lz57$a;->f:Lz57$a;

    goto :goto_2

    :cond_2
    sget-object p1, Lz57$a;->e:Lz57$a;

    :goto_2
    move-object v7, p1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, p3

    .line 20
    invoke-virtual/range {v4 .. v10}, Lp97;->k(ILx47;Lz57$a;ZLka7;Li47;)V

    .line 21
    :cond_3
    monitor-exit v11

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array p3, v1, [Ljava/lang/Object;

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_5
    const-string p1, "TYPE_RST_STREAM streamId == 0"

    new-array p2, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {p1, p2}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_6
    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    new-array p3, v1, [Ljava/lang/Object;

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method public final g(Lla7$a;IBI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_10

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 1
    check-cast p1, Lp97$e;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p2, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    .line 4
    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_f

    .line 5
    new-instance p3, Lra7;

    invoke-direct {p3}, Lra7;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    const/4 v4, 0x4

    if-ge v2, p2, :cond_6

    .line 6
    iget-object v5, p0, Lpa7$c;->e:Lat7;

    invoke-interface {v5}, Lat7;->readShort()S

    move-result v5

    .line 7
    iget-object v6, p0, Lpa7$c;->e:Lat7;

    invoke-interface {v6}, Lat7;->readInt()I

    move-result v6

    packed-switch v5, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/16 v3, 0x4000

    if-lt v6, v3, :cond_2

    const v3, 0xffffff

    if-gt v6, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array p2, p4, [Ljava/lang/Object;

    .line 8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :pswitch_1
    if-ltz v6, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p2, v0, [Ljava/lang/Object;

    .line 9
    invoke-static {p1, p2}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :pswitch_2
    const/4 v3, 0x4

    goto :goto_2

    :pswitch_3
    if-eqz v6, :cond_5

    if-ne v6, p4, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p2, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {p1, p2}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_5
    :goto_1
    :pswitch_4
    move v3, v5

    .line 11
    :goto_2
    invoke-virtual {p3, v3, v0, v6}, Lra7;->b(III)Lra7;

    :goto_3
    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    .line 12
    :cond_6
    check-cast p1, Lp97$e;

    .line 13
    iget-object p2, p1, Lp97$e;->e:Lq97;

    sget-object v1, Lq97$a;->e:Lq97$a;

    invoke-virtual {p2, v1, p3}, Lq97;->f(Lq97$a;Lra7;)V

    .line 14
    iget-object p2, p1, Lp97$e;->h:Lp97;

    .line 15
    iget-object v2, p2, Lp97;->j:Ljava/lang/Object;

    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    invoke-virtual {p3, v4}, Lra7;->a(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 18
    iget-object p2, p3, Lra7;->d:[I

    aget p2, p2, v4

    .line 19
    iget-object v1, p1, Lp97$e;->h:Lp97;

    .line 20
    iput p2, v1, Lp97;->B:I

    .line 21
    :cond_7
    invoke-virtual {p3, v3}, Lra7;->a(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 22
    iget-object p2, p3, Lra7;->d:[I

    aget p2, p2, v3

    .line 23
    iget-object v1, p1, Lp97$e;->h:Lp97;

    .line 24
    iget-object v1, v1, Lp97;->i:Lw97;

    .line 25
    invoke-virtual {v1, p2}, Lw97;->c(I)Z

    move-result p2

    goto :goto_4

    :cond_8
    const/4 p2, 0x0

    .line 26
    :goto_4
    iget-boolean v1, p1, Lp97$e;->g:Z

    if-eqz v1, :cond_9

    .line 27
    iget-object v1, p1, Lp97$e;->h:Lp97;

    .line 28
    iget-object v1, v1, Lp97;->g:Lc87$a;

    .line 29
    invoke-interface {v1}, Lc87$a;->b()V

    .line 30
    iput-boolean v0, p1, Lp97$e;->g:Z

    .line 31
    :cond_9
    iget-object v0, p1, Lp97$e;->h:Lp97;

    .line 32
    iget-object v0, v0, Lp97;->h:Lk97;

    .line 33
    invoke-virtual {v0, p3}, Lk97;->X(Lra7;)V

    if-eqz p2, :cond_a

    .line 34
    iget-object p2, p1, Lp97$e;->h:Lp97;

    .line 35
    iget-object p2, p2, Lp97;->i:Lw97;

    .line 36
    invoke-virtual {p2}, Lw97;->f()V

    .line 37
    :cond_a
    iget-object p1, p1, Lp97$e;->h:Lp97;

    .line 38
    invoke-virtual {p1}, Lp97;->w()Z

    .line 39
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget p1, p3, Lra7;->a:I

    and-int/lit8 p1, p1, 0x2

    const/4 p2, -0x1

    if-eqz p1, :cond_b

    iget-object v0, p3, Lra7;->d:[I

    aget v0, v0, p4

    goto :goto_5

    :cond_b
    const/4 v0, -0x1

    :goto_5
    if-ltz v0, :cond_e

    .line 41
    iget-object v0, p0, Lpa7$c;->g:Loa7$a;

    if-eqz p1, :cond_c

    .line 42
    iget-object p1, p3, Lra7;->d:[I

    aget p2, p1, p4

    .line 43
    :cond_c
    iput p2, v0, Loa7$a;->c:I

    .line 44
    iput p2, v0, Loa7$a;->d:I

    .line 45
    iget p1, v0, Loa7$a;->h:I

    if-ge p2, p1, :cond_e

    if-nez p2, :cond_d

    .line 46
    invoke-virtual {v0}, Loa7$a;->a()V

    goto :goto_6

    :cond_d
    sub-int/2addr p1, p2

    .line 47
    invoke-virtual {v0, p1}, Loa7$a;->c(I)I

    :cond_e
    :goto_6
    return-void

    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_f
    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array p3, p4, [Ljava/lang/Object;

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_10
    const-string p1, "TYPE_SETTINGS streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    .line 50
    invoke-static {p1, p2}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final i(Lla7$a;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_8

    .line 1
    iget-object p2, p0, Lpa7$c;->e:Lat7;

    invoke-interface {p2}, Lat7;->readInt()I

    move-result p2

    int-to-long v3, p2

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_7

    .line 2
    check-cast p1, Lp97$e;

    .line 3
    sget-object v5, Lka7;->g:Lka7;

    iget-object v6, p1, Lp97$e;->e:Lq97;

    sget-object v7, Lq97$a;->e:Lq97$a;

    invoke-virtual {v6, v7, p3, v3, v4}, Lq97;->g(Lq97$a;IJ)V

    if-nez p2, :cond_2

    const-string p2, "Received 0 flow control window increment."

    if-nez p3, :cond_0

    .line 4
    iget-object p1, p1, Lp97$e;->h:Lp97;

    invoke-static {p1, v5, p2}, Lp97;->i(Lp97;Lka7;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object p1, p1, Lp97$e;->h:Lp97;

    sget-object v0, Lx47;->m:Lx47;

    .line 6
    invoke-virtual {v0, p2}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p2

    sget-object v0, Lz57$a;->e:Lz57$a;

    .line 7
    iget-object v6, p1, Lp97;->j:Ljava/lang/Object;

    monitor-enter v6

    .line 8
    :try_start_0
    iget-object v1, p1, Lp97;->m:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo97;

    if-eqz v1, :cond_1

    .line 9
    iget-object v3, p1, Lp97;->h:Lk97;

    sget-object v4, Lka7;->q:Lka7;

    invoke-virtual {v3, p3, v4}, Lk97;->I0(ILka7;)V

    .line 10
    iget-object p3, v1, Lo97;->m:Lo97$b;

    .line 11
    new-instance v3, Li47;

    invoke-direct {v3}, Li47;-><init>()V

    .line 12
    invoke-virtual {p3, p2, v0, v2, v3}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    .line 13
    invoke-virtual {p1}, Lp97;->w()Z

    move-result p2

    if-nez p2, :cond_1

    .line 14
    invoke-virtual {p1}, Lp97;->y()V

    .line 15
    invoke-virtual {p1, v1}, Lp97;->r(Lo97;)V

    .line 16
    :cond_1
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 17
    :cond_2
    iget-object p2, p1, Lp97$e;->h:Lp97;

    .line 18
    iget-object p2, p2, Lp97;->j:Ljava/lang/Object;

    .line 19
    monitor-enter p2

    if-nez p3, :cond_3

    .line 20
    :try_start_1
    iget-object p1, p1, Lp97$e;->h:Lp97;

    .line 21
    iget-object p1, p1, Lp97;->i:Lw97;

    long-to-int p3, v3

    .line 22
    invoke-virtual {p1, v1, p3}, Lw97;->e(Lo97;I)I

    .line 23
    monitor-exit p2

    goto :goto_2

    .line 24
    :cond_3
    iget-object v1, p1, Lp97$e;->h:Lp97;

    .line 25
    iget-object v1, v1, Lp97;->m:Ljava/util/Map;

    .line 26
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo97;

    if-eqz v1, :cond_4

    .line 27
    iget-object v0, p1, Lp97$e;->h:Lp97;

    .line 28
    iget-object v0, v0, Lp97;->i:Lw97;

    long-to-int v4, v3

    .line 29
    invoke-virtual {v0, v1, v4}, Lw97;->e(Lo97;I)I

    goto :goto_0

    .line 30
    :cond_4
    iget-object v1, p1, Lp97$e;->h:Lp97;

    invoke-virtual {v1, p3}, Lp97;->q(I)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x0

    .line 31
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_6

    .line 32
    iget-object p1, p1, Lp97$e;->h:Lp97;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received window_update for unknown stream: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v5, p2}, Lp97;->i(Lp97;Lka7;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 33
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_7
    const-string p1, "windowSizeIncrement was 0"

    new-array p2, v2, [Ljava/lang/Object;

    .line 34
    invoke-static {p1, p2}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_8
    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array p3, v0, [Ljava/lang/Object;

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lpa7;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1
.end method
