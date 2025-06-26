.class public Lyx$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lg14;

.field public final e:Lp14;

.field public f:Z

.field public final synthetic g:Lyx;


# direct methods
.method public constructor <init>(Lyx;[BLzx;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lyx$a;->g:Lyx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p3, p1, Lyx;->e:I

    .line 3
    iput p3, p0, Lyx$a;->a:I

    .line 4
    iget-object p3, p1, Lyx;->d:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lyx$a;->b:Ljava/lang/String;

    .line 6
    iget-object p3, p1, Lyx;->f:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lyx$a;->c:Ljava/lang/String;

    .line 8
    iget-object p3, p1, Lyx;->h:Lg14;

    .line 9
    iput-object p3, p0, Lyx$a;->d:Lg14;

    new-instance p3, Lp14;

    invoke-direct {p3}, Lp14;-><init>()V

    iput-object p3, p0, Lyx$a;->e:Lp14;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyx$a;->f:Z

    .line 10
    iget-object v1, p1, Lyx;->f:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lyx$a;->c:Ljava/lang/String;

    .line 12
    iget-object v1, p1, Lyx;->a:Landroid/content/Context;

    .line 13
    sget-object v2, Luv3;->a:Landroid/os/UserManager;

    .line 14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 15
    sget-boolean v2, Luv3;->b:Z

    if-nez v2, :cond_4

    sget-object v2, Luv3;->a:Landroid/os/UserManager;

    if-nez v2, :cond_3

    const-class v4, Luv3;

    monitor-enter v4

    :try_start_0
    sget-object v2, Luv3;->a:Landroid/os/UserManager;

    if-nez v2, :cond_2

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    sput-object v1, Luv3;->a:Landroid/os/UserManager;

    if-nez v1, :cond_1

    sput-boolean v3, Luv3;->b:Z

    monitor-exit v4

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    move-object v2, v1

    :cond_2
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    sput-boolean v2, Luv3;->b:Z

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    sput-object v1, Luv3;->a:Landroid/os/UserManager;

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    const/4 v0, 0x1

    .line 16
    :cond_5
    iput-boolean v0, p3, Lp14;->w:Z

    .line 17
    iget-object v0, p1, Lyx;->j:Lb20;

    .line 18
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v0

    iput-wide v0, p3, Lp14;->g:J

    .line 19
    iget-object p1, p1, Lyx;->j:Lb20;

    .line 20
    invoke-interface {p1}, Lb20;->b()J

    move-result-wide v0

    iput-wide v0, p3, Lp14;->h:J

    iget-wide v0, p3, Lp14;->g:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p3, Lp14;->q:J

    if-eqz p2, :cond_6

    iput-object p2, p3, Lp14;->l:[B

    :cond_6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 20

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lyx$a;->f:Z

    if-nez v0, :cond_1c

    const/4 v2, 0x1

    iput-boolean v2, v1, Lyx$a;->f:Z

    new-instance v10, Lcom/google/android/gms/clearcut/zze;

    new-instance v4, Lcom/google/android/gms/internal/clearcut/zzr;

    iget-object v0, v1, Lyx$a;->g:Lyx;

    .line 1
    iget-object v12, v0, Lyx;->b:Ljava/lang/String;

    .line 2
    iget v13, v0, Lyx;->c:I

    .line 3
    iget v14, v1, Lyx$a;->a:I

    iget-object v15, v1, Lyx$a;->b:Ljava/lang/String;

    iget-object v3, v1, Lyx$a;->c:Ljava/lang/String;

    const/16 v17, 0x0

    .line 4
    iget-boolean v0, v0, Lyx;->g:Z

    .line 5
    iget-object v5, v1, Lyx$a;->d:Lg14;

    move-object v11, v4

    move-object/from16 v16, v3

    move/from16 v18, v0

    move-object/from16 v19, v5

    invoke-direct/range {v11 .. v19}, Lcom/google/android/gms/internal/clearcut/zzr;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLg14;)V

    iget-object v5, v1, Lyx$a;->e:Lp14;

    const/4 v6, 0x0

    sget-object v0, Lyx;->m:Lny$g;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/clearcut/zze;-><init>(Lcom/google/android/gms/internal/clearcut/zzr;Lp14;Lyx$c;[I[IZ)V

    iget-object v0, v1, Lyx$a;->g:Lyx;

    .line 6
    iget-object v0, v0, Lyx;->l:Lyx$b;

    .line 7
    move-object v3, v0

    check-cast v3, Lx14;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v10, Lcom/google/android/gms/clearcut/zze;->e:Lcom/google/android/gms/internal/clearcut/zzr;

    iget-object v4, v0, Lcom/google/android/gms/internal/clearcut/zzr;->k:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/clearcut/zzr;->g:I

    iget-object v5, v10, Lcom/google/android/gms/clearcut/zze;->m:Lp14;

    sget-object v5, Lx14;->i:Lyv3;

    invoke-virtual {v5}, Lyv3;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v5, :cond_10

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v7

    :goto_0
    if-eqz v4, :cond_18

    iget-object v0, v3, Lx14;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lx14;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lx14;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyv3;

    if-nez v5, :cond_3

    sget-object v5, Lx14;->d:Liw3;

    .line 9
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v9, Lyv3;->g:Ljava/lang/Object;

    .line 11
    new-instance v9, Lew3;

    invoke-direct {v9, v5, v4, v7}, Lew3;-><init>(Liw3;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v9

    :cond_3
    invoke-virtual {v5}, Lyv3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_2

    :cond_4
    :goto_1
    move-object v4, v7

    :goto_2
    if-nez v4, :cond_5

    goto/16 :goto_9

    :cond_5
    const/16 v0, 0x2c

    .line 13
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_6

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v0, v2

    goto :goto_3

    :cond_6
    const-string v5, ""

    const/4 v0, 0x0

    :goto_3
    const/16 v9, 0x2f

    invoke-virtual {v4, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const-string v11, "LogSamplerImpl"

    if-gtz v9, :cond_8

    const-string v0, "Failed to parse the rule: "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_7
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_7

    :cond_8
    :try_start_0
    invoke-virtual {v4, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-int/2addr v9, v2

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v16, 0x0

    cmp-long v0, v12, v16

    if-ltz v0, :cond_e

    cmp-long v0, v14, v16

    if-gez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {}, Lk14$b;->u()Lk14$b$a;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lsx3$a;->d()V

    iget-object v4, v0, Lsx3$a;->f:Lsx3;

    check-cast v4, Lk14$b;

    invoke-static {v4, v5}, Lk14$b;->j(Lk14$b;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lsx3$a;->d()V

    iget-object v4, v0, Lsx3$a;->f:Lsx3;

    check-cast v4, Lk14$b;

    invoke-static {v4, v12, v13}, Lk14$b;->i(Lk14$b;J)V

    .line 16
    invoke-virtual {v0}, Lsx3$a;->d()V

    iget-object v4, v0, Lsx3$a;->f:Lsx3;

    check-cast v4, Lk14$b;

    invoke-static {v4, v14, v15}, Lk14$b;->k(Lk14$b;J)V

    .line 17
    invoke-virtual {v0}, Lsx3$a;->e()Lxy3;

    move-result-object v0

    check-cast v0, Lsx3;

    invoke-virtual {v0, v2, v7, v7}, Lsx3;->d(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-ne v4, v2, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    if-nez v4, :cond_b

    const/4 v4, 0x0

    goto :goto_5

    .line 18
    :cond_b
    sget-object v4, Liz3;->c:Liz3;

    .line 19
    invoke-virtual {v4, v0}, Liz3;->b(Ljava/lang/Object;)Lnz3;

    move-result-object v4

    invoke-interface {v4, v0}, Lnz3;->e(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v5, v0

    goto :goto_4

    :cond_c
    move-object v5, v7

    :goto_4
    invoke-virtual {v0, v6, v5, v7}, Lsx3;->d(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v4, :cond_d

    .line 20
    check-cast v0, Lk14$b;

    goto :goto_a

    .line 21
    :cond_d
    new-instance v0, La04;

    invoke-direct {v0}, La04;-><init>()V

    throw v0

    :cond_e
    :goto_6
    const/16 v0, 0x48

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "negative values not supported: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_0
    move-exception v0

    const-string v5, "parseLong() failed while parsing: "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_f
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-static {v11, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    move-object v0, v7

    :goto_a
    if-eqz v0, :cond_18

    .line 23
    invoke-virtual {v0}, Lk14$b;->n()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lx14;->a:Landroid/content/Context;

    invoke-static {v3}, Lx14;->d(Landroid/content/Context;)J

    move-result-wide v11

    invoke-static {v4, v11, v12}, Lx14;->a(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-virtual {v0}, Lk14$b;->s()J

    move-result-wide v15

    invoke-virtual {v0}, Lk14$b;->t()J

    move-result-wide v17

    invoke-static/range {v13 .. v18}, Lx14;->b(JJJ)Z

    move-result v0

    goto/16 :goto_e

    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_b

    :cond_11
    if-ltz v0, :cond_12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_12
    move-object v4, v7

    :goto_b
    if-eqz v4, :cond_18

    iget-object v0, v3, Lx14;->a:Landroid/content/Context;

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_d

    :cond_13
    sget-object v0, Lx14;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyv3;

    if-nez v5, :cond_15

    sget-object v5, Lx14;->c:Liw3;

    invoke-static {}, Lk14;->i()Lk14;

    move-result-object v9

    sget-object v11, Ly14;->a:Lhw3;

    .line 24
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v12, Lyv3;->g:Ljava/lang/Object;

    .line 26
    new-instance v12, Lfw3;

    invoke-direct {v12, v5, v4, v9, v11}, Lfw3;-><init>(Liw3;Ljava/lang/String;Ljava/lang/Object;Lhw3;)V

    .line 27
    invoke-virtual {v0, v4, v12}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lyv3;

    if-eqz v5, :cond_14

    goto :goto_c

    :cond_14
    move-object v5, v12

    :cond_15
    :goto_c
    invoke-virtual {v5}, Lyv3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk14;

    invoke-virtual {v0}, Lk14;->h()Ljava/util/List;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk14$b;

    invoke-virtual {v4}, Lk14$b;->m()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Lk14$b;->h()I

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Lk14$b;->h()I

    move-result v5

    if-nez v5, :cond_16

    :cond_17
    invoke-virtual {v4}, Lk14$b;->n()Ljava/lang/String;

    move-result-object v5

    iget-object v9, v3, Lx14;->a:Landroid/content/Context;

    invoke-static {v9}, Lx14;->d(Landroid/content/Context;)J

    move-result-wide v11

    invoke-static {v5, v11, v12}, Lx14;->a(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-virtual {v4}, Lk14$b;->s()J

    move-result-wide v15

    invoke-virtual {v4}, Lk14$b;->t()J

    move-result-wide v17

    invoke-static/range {v13 .. v18}, Lx14;->b(JJJ)Z

    move-result v4

    if-nez v4, :cond_16

    const/4 v0, 0x0

    goto :goto_e

    :cond_18
    const/4 v0, 0x1

    :goto_e
    if-eqz v0, :cond_1b

    .line 28
    iget-object v0, v1, Lyx$a;->g:Lyx;

    .line 29
    iget-object v0, v0, Lyx;->i:Lay;

    .line 30
    check-cast v0, Lhz3;

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lo14;

    .line 32
    iget-object v4, v0, Lpy;->g:Lqy;

    .line 33
    invoke-direct {v3, v10, v4}, Lo14;-><init>(Lcom/google/android/gms/clearcut/zze;Lqy;)V

    .line 34
    iget-boolean v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j:Z

    if-nez v4, :cond_1a

    sget-object v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_f

    :cond_19
    const/4 v2, 0x0

    :cond_1a
    :goto_f
    iput-boolean v2, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j:Z

    .line 35
    iget-object v2, v0, Lpy;->h:Lzy;

    .line 36
    new-instance v4, Lzz;

    invoke-direct {v4, v6, v3}, Lzz;-><init>(ILyy;)V

    .line 37
    iget-object v3, v2, Lzy;->n:Landroid/os/Handler;

    new-instance v5, Lqz;

    iget-object v2, v2, Lzy;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v5, v4, v2, v0}, Lqz;-><init>(Liz;ILpy;)V

    const/4 v0, 0x4

    .line 39
    invoke-virtual {v3, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 40
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 41
    :cond_1b
    sget-object v0, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    const-string v2, "Result must not be null"

    .line 42
    invoke-static {v0, v2}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v2, Ldz;

    invoke-direct {v2, v7}, Ldz;-><init>(Lqy;)V

    .line 44
    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c(Lty;)V

    return-void

    .line 45
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "do not reuse LogEventBuilder"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
