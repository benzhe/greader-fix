.class public Lfn;
.super Len;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/lang/String;

.field public final c:Landroid/os/Handler;

.field public d:Lyn;

.field public e:Landroid/content/Context;

.field public f:Lsr4;

.field public g:Ltn;

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljn;)V
    .locals 4

    :try_start_0
    const-string p1, "io"

    .line 1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "VERSION_NAME"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "3.0.3"

    :goto_0
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0}, Len;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lfn;->a:I

    new-instance v2, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lfn;->c:Landroid/os/Handler;

    iput v1, p0, Lfn;->j:I

    iput-object p1, p0, Lfn;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lfn;->e:Landroid/content/Context;

    new-instance p2, Lyn;

    .line 7
    invoke-direct {p2, p1, p3}, Lyn;-><init>(Landroid/content/Context;Ljn;)V

    iput-object p2, p0, Lfn;->d:Lyn;

    iput-boolean v0, p0, Lfn;->q:Z

    return-void
.end method

.method public static h(Lfn;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfn;->c:Landroid/os/Handler;

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcn;Ldn;)V
    .locals 3

    invoke-virtual {p0}, Lfn;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1
    sget-object p1, Lun;->l:Lin;

    check-cast p2, Lfq$a;

    invoke-virtual {p2, p1}, Lfq$a;->a(Lin;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcn;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid purchase token."

    .line 4
    invoke-static {p1, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lun;->i:Lin;

    check-cast p2, Lfq$a;

    invoke-virtual {p2, p1}, Lfq$a;->a(Lin;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lfn;->l:Z

    if-nez v0, :cond_2

    .line 6
    sget-object p1, Lun;->b:Lin;

    check-cast p2, Lfq$a;

    invoke-virtual {p2, p1}, Lfq$a;->a(Lin;)V

    return-void

    :cond_2
    new-instance v0, Lco;

    .line 7
    invoke-direct {v0, p0, p1, p2}, Lco;-><init>(Lfn;Lcn;Ldn;)V

    new-instance p1, Ldo;

    invoke-direct {p1, p2}, Ldo;-><init>(Ldn;)V

    const-wide/16 v1, 0x7530

    .line 8
    invoke-virtual {p0, v0, v1, v2, p1}, Lfn;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_3

    .line 9
    invoke-virtual {p0}, Lfn;->g()Lin;

    move-result-object p1

    check-cast p2, Lfq$a;

    invoke-virtual {p2, p1}, Lfq$a;->a(Lin;)V

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x3

    :try_start_0
    iget-object v1, p0, Lfn;->d:Lyn;

    .line 1
    invoke-virtual {v1}, Lyn;->a()V

    iget-object v1, p0, Lfn;->g:Ltn;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v3, v1, Ltn;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v2, v1, Ltn;->c:Lgn;

    const/4 v4, 0x1

    iput-boolean v4, v1, Ltn;->b:Z

    .line 3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    iget-object v1, p0, Lfn;->g:Ltn;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfn;->f:Lsr4;

    if-eqz v1, :cond_1

    const-string v1, "BillingClient"

    const-string v3, "Unbinding from service."

    .line 5
    invoke-static {v1, v3}, Lpr4;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lfn;->e:Landroid/content/Context;

    iget-object v3, p0, Lfn;->g:Ltn;

    .line 6
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lfn;->g:Ltn;

    :cond_1
    iput-object v2, p0, Lfn;->f:Lsr4;

    iget-object v1, p0, Lfn;->r:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Lfn;->r:Ljava/util/concurrent/ExecutorService;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    iput v0, p0, Lfn;->a:I

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :goto_1
    :try_start_3
    const-string v2, "BillingClient"

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "There was an exception while ending connection: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    iput v0, p0, Lfn;->a:I

    return-void

    .line 10
    :goto_2
    iput v0, p0, Lfn;->a:I

    .line 11
    throw v1
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lfn;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lfn;->f:Lsr4;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfn;->g:Ltn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Landroid/app/Activity;Lhn;)Lin;
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    const-string v9, "BUY_INTENT"

    const-string v0, "proxyPackageVersion"

    const-string v10, "; try to reconnect"

    invoke-virtual/range {p0 .. p0}, Lfn;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1
    sget-object v0, Lun;->l:Lin;

    .line 2
    iget-object v1, v7, Lfn;->d:Lyn;

    .line 3
    iget-object v1, v1, Lyn;->b:Lxn;

    .line 4
    iget-object v1, v1, Lxn;->a:Ljn;

    .line 5
    invoke-interface {v1, v0, v2}, Ljn;->a(Lin;Ljava/util/List;)V

    return-object v0

    .line 6
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v5, Lhn;->g:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/SkuDetails;

    .line 10
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v4

    const-string v6, "subs"

    .line 11
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v11, "BillingClient"

    if-eqz v6, :cond_2

    iget-boolean v6, v7, Lfn;->h:Z

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Current client doesn\'t support subscriptions."

    .line 12
    invoke-static {v11, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lun;->n:Lin;

    .line 14
    iget-object v1, v7, Lfn;->d:Lyn;

    .line 15
    iget-object v1, v1, Lyn;->b:Lxn;

    .line 16
    iget-object v1, v1, Lxn;->a:Ljn;

    .line 17
    invoke-interface {v1, v0, v2}, Ljn;->a(Lin;Ljava/util/List;)V

    return-object v0

    .line 18
    :cond_2
    :goto_0
    iget-object v6, v5, Lhn;->c:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 19
    iget-boolean v12, v7, Lfn;->i:Z

    if-eqz v12, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "Current client doesn\'t support subscriptions update."

    .line 20
    invoke-static {v11, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lun;->o:Lin;

    .line 22
    iget-object v1, v7, Lfn;->d:Lyn;

    .line 23
    iget-object v1, v1, Lyn;->b:Lxn;

    .line 24
    iget-object v1, v1, Lxn;->a:Ljn;

    .line 25
    invoke-interface {v1, v0, v2}, Ljn;->a(Lin;Ljava/util/List;)V

    return-object v0

    .line 26
    :cond_4
    :goto_1
    iget-boolean v12, v5, Lhn;->h:Z

    const/4 v13, 0x1

    if-nez v12, :cond_6

    iget-object v12, v5, Lhn;->b:Ljava/lang/String;

    if-nez v12, :cond_6

    iget-object v12, v5, Lhn;->e:Ljava/lang/String;

    if-nez v12, :cond_6

    iget v12, v5, Lhn;->f:I

    if-nez v12, :cond_6

    iget-boolean v12, v5, Lhn;->a:Z

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v12, 0x1

    :goto_3
    if-eqz v12, :cond_8

    .line 27
    iget-boolean v12, v7, Lfn;->k:Z

    if-eqz v12, :cond_7

    goto :goto_4

    :cond_7
    const-string v0, "Current client doesn\'t support extra params for buy intent."

    .line 28
    invoke-static {v11, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lun;->g:Lin;

    .line 30
    iget-object v1, v7, Lfn;->d:Lyn;

    .line 31
    iget-object v1, v1, Lyn;->b:Lxn;

    .line 32
    iget-object v1, v1, Lxn;->a:Ljn;

    .line 33
    invoke-interface {v1, v0, v2}, Ljn;->a(Lin;Ljava/util/List;)V

    return-object v0

    .line 34
    :cond_8
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v13, :cond_a

    iget-boolean v12, v7, Lfn;->p:Z

    if-eqz v12, :cond_9

    goto :goto_5

    :cond_9
    const-string v0, "Current client doesn\'t support multi-item purchases."

    .line 35
    invoke-static {v11, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lun;->p:Lin;

    .line 37
    iget-object v1, v7, Lfn;->d:Lyn;

    .line 38
    iget-object v1, v1, Lyn;->b:Lxn;

    .line 39
    iget-object v1, v1, Lxn;->a:Ljn;

    .line 40
    invoke-interface {v1, v0, v2}, Ljn;->a(Lin;Ljava/util/List;)V

    return-object v0

    :cond_a
    :goto_5
    const-string v2, ""

    const/4 v12, 0x0

    move-object v13, v2

    .line 41
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_c

    .line 42
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    move-object/from16 v17, v2

    new-instance v2, Ljava/lang/StringBuilder;

    add-int v15, v15, v16

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v2, v13, v14}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_b

    .line 44
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v13, ", "

    invoke-virtual {v2, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_b
    move-object v13, v2

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v17

    goto :goto_6

    :cond_c
    move-object/from16 v17, v2

    .line 45
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    new-instance v14, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x29

    add-int/2addr v2, v12

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", item type: "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lpr4;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v7, Lfn;->k:Z

    if-eqz v2, :cond_26

    iget-boolean v2, v7, Lfn;->l:Z

    iget-boolean v6, v7, Lfn;->q:Z

    iget-object v12, v7, Lfn;->b:Ljava/lang/String;

    .line 46
    new-instance v14, Landroid/os/Bundle;

    .line 47
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "playBillingLibraryVersion"

    .line 48
    invoke-virtual {v14, v15, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget v12, v5, Lhn;->f:I

    if-eqz v12, :cond_d

    const-string v15, "prorationMode"

    .line 50
    invoke-virtual {v14, v15, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    :cond_d
    iget-object v12, v5, Lhn;->b:Ljava/lang/String;

    .line 52
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 53
    iget-object v12, v5, Lhn;->b:Ljava/lang/String;

    const-string v15, "accountId"

    .line 54
    invoke-virtual {v14, v15, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_e
    iget-object v12, v5, Lhn;->e:Ljava/lang/String;

    .line 56
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 57
    iget-object v12, v5, Lhn;->e:Ljava/lang/String;

    const-string v15, "obfuscatedProfileId"

    .line 58
    invoke-virtual {v14, v15, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_f
    iget-boolean v12, v5, Lhn;->h:Z

    if-eqz v12, :cond_10

    const-string v12, "vr"

    const/4 v15, 0x1

    .line 60
    invoke-virtual {v14, v12, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_7

    :cond_10
    const/4 v15, 0x1

    .line 61
    :goto_7
    iget-object v12, v5, Lhn;->c:Ljava/lang/String;

    .line 62
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    new-instance v12, Ljava/util/ArrayList;

    new-array v15, v15, [Ljava/lang/String;

    move-object/from16 v16, v10

    .line 63
    iget-object v10, v5, Lhn;->c:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v10, v15, v18

    .line 64
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v10, "skusToReplace"

    .line 65
    invoke-virtual {v14, v10, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_8

    :cond_11
    move-object/from16 v16, v10

    .line 66
    :goto_8
    iget-object v10, v5, Lhn;->d:Ljava/lang/String;

    .line 67
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 68
    iget-object v10, v5, Lhn;->d:Ljava/lang/String;

    const-string v12, "oldSkuPurchaseToken"

    .line 69
    invoke-virtual {v14, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/4 v10, 0x0

    .line 70
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_13

    const-string v12, "oldSkuPurchaseId"

    .line 71
    invoke-virtual {v14, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_13
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    const-string v12, "paymentsPurchaseParams"

    .line 73
    invoke-virtual {v14, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    if-eqz v2, :cond_15

    if-eqz v6, :cond_15

    const-string v2, "enablePendingPurchases"

    const/4 v6, 0x1

    .line 74
    invoke-virtual {v14, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    .line 78
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    .line 79
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v13

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v15, :cond_18

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v23, v15

    .line 80
    move-object/from16 v15, v18

    check-cast v15, Lcom/android/billingclient/api/SkuDetails;

    move-object/from16 v18, v9

    .line 81
    iget-object v9, v15, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    const-string v8, "skuDetailsToken"

    .line 82
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 83
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_16

    .line 84
    iget-object v9, v15, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 85
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_16
    iget-object v8, v15, Lcom/android/billingclient/api/SkuDetails;->a:Ljava/lang/String;

    .line 88
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "offer_id_token"

    .line 89
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-object/from16 v8, v17

    .line 90
    :goto_a
    iget-object v9, v15, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    move-object/from16 v24, v11

    const-string v11, "offer_id"

    .line 91
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 92
    iget-object v11, v15, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    const-string v15, "offer_type"

    .line 93
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 94
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    or-int v19, v19, v8

    .line 96
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    or-int v20, v20, v8

    .line 98
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_17

    const/4 v8, 0x1

    goto :goto_b

    :cond_17
    const/4 v8, 0x0

    :goto_b
    or-int v21, v21, v8

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, v18

    move/from16 v15, v23

    move-object/from16 v11, v24

    goto :goto_9

    :cond_18
    move-object/from16 v18, v9

    move-object/from16 v24, v11

    .line 99
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, "skuDetailsTokens"

    .line 100
    invoke-virtual {v14, v8, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_19
    if-eqz v19, :cond_1b

    iget-boolean v2, v7, Lfn;->n:Z

    if-nez v2, :cond_1a

    .line 101
    sget-object v0, Lun;->h:Lin;

    .line 102
    iget-object v1, v7, Lfn;->d:Lyn;

    .line 103
    iget-object v1, v1, Lyn;->b:Lxn;

    .line 104
    iget-object v1, v1, Lxn;->a:Ljn;

    const/4 v2, 0x0

    .line 105
    invoke-interface {v1, v0, v2}, Ljn;->a(Lin;Ljava/util/List;)V

    return-object v0

    :cond_1a
    const-string v2, "SKU_OFFER_ID_TOKEN_LIST"

    .line 106
    invoke-virtual {v14, v2, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1b
    if-eqz v20, :cond_1c

    const-string v2, "SKU_OFFER_ID_LIST"

    .line 107
    invoke-virtual {v14, v2, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1c
    if-eqz v21, :cond_1d

    const-string v2, "SKU_OFFER_TYPE_LIST"

    .line 108
    invoke-virtual {v14, v2, v12}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 109
    :cond_1d
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 110
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v2

    const-string v6, "skuPackageName"

    .line 111
    invoke-virtual {v14, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_c

    :cond_1e
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 112
    :goto_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1f

    const-string v8, "accountName"

    .line 113
    invoke-virtual {v14, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x1

    if-le v2, v8, :cond_21

    new-instance v2, Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x1

    .line 117
    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_20

    .line 118
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v10}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v10}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_20
    const-string v1, "additionalSkus"

    .line 120
    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "additionalSkuTypes"

    .line 121
    invoke-virtual {v14, v1, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 122
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PROXY_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "proxyPackage"

    .line 124
    invoke-virtual {v14, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v2, v7, Lfn;->e:Landroid/content/Context;

    .line 125
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v8, 0x0

    .line 126
    invoke-virtual {v2, v1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 127
    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    const-string v1, "package not found"

    .line 128
    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_22
    :goto_e
    iget-boolean v0, v7, Lfn;->o:Z

    if-eqz v0, :cond_23

    if-eqz v6, :cond_23

    const/16 v0, 0xf

    const/16 v2, 0xf

    goto :goto_f

    .line 130
    :cond_23
    iget-boolean v0, v7, Lfn;->l:Z

    if-eqz v0, :cond_24

    const/16 v0, 0x9

    const/16 v2, 0x9

    goto :goto_f

    .line 131
    :cond_24
    iget-boolean v0, v5, Lhn;->h:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x7

    const/4 v2, 0x7

    goto :goto_f

    :cond_25
    const/4 v0, 0x6

    const/4 v2, 0x6

    .line 132
    :goto_f
    new-instance v8, Lgo;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object v6, v14

    .line 133
    invoke-direct/range {v0 .. v6}, Lgo;-><init>(Lfn;ILcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lhn;Landroid/os/Bundle;)V

    const-wide/16 v0, 0x1388

    const/4 v2, 0x0

    .line 134
    invoke-virtual {v7, v8, v0, v1, v2}, Lfn;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    goto :goto_10

    :cond_26
    move-object/from16 v18, v9

    move-object/from16 v16, v10

    move-object/from16 v24, v11

    move-object/from16 v22, v13

    const-wide/16 v0, 0x1388

    const/4 v2, 0x0

    if-eqz v6, :cond_27

    .line 135
    new-instance v4, Lho;

    .line 136
    invoke-direct {v4, v7, v5, v3}, Lho;-><init>(Lfn;Lhn;Lcom/android/billingclient/api/SkuDetails;)V

    .line 137
    invoke-virtual {v7, v4, v0, v1, v2}, Lfn;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    goto :goto_10

    :cond_27
    new-instance v5, Lmn;

    .line 138
    invoke-direct {v5, v7, v3, v4}, Lmn;-><init>(Lfn;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v7, v5, v0, v1, v2}, Lfn;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 140
    :goto_10
    :try_start_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 141
    :try_start_3
    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v1, v24

    .line 142
    :try_start_4
    invoke-static {v0, v1}, Lpr4;->d(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    .line 143
    invoke-static {v0, v1}, Lpr4;->e(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x34

    .line 144
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unable to buy item, Error response code: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 146
    iput v2, v0, Lin;->a:I

    .line 147
    iput-object v3, v0, Lin;->b:Ljava/lang/String;

    .line 148
    iget-object v2, v7, Lfn;->d:Lyn;

    .line 149
    iget-object v2, v2, Lyn;->b:Lxn;

    .line 150
    iget-object v2, v2, Lxn;->a:Ljn;

    const/4 v3, 0x0

    .line 151
    invoke-interface {v2, v0, v3}, Ljn;->a(Lin;Ljava/util/List;)V

    return-object v0

    .line 152
    :cond_28
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/billingclient/api/ProxyBillingActivity;

    move-object/from16 v4, p1

    .line 153
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v3, v18

    .line 154
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 155
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 157
    sget-object v0, Lun;->k:Lin;

    return-object v0

    :catch_2
    move-object/from16 v1, v24

    :catch_3
    move-object/from16 v0, v16

    move-object/from16 v13, v22

    goto :goto_11

    :catch_4
    move-object/from16 v1, v24

    .line 158
    :catch_5
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x45

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Exception while launching billing flow: ; for sku: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v22

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v1, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lun;->l:Lin;

    .line 161
    iget-object v1, v7, Lfn;->d:Lyn;

    .line 162
    iget-object v1, v1, Lyn;->b:Lxn;

    .line 163
    iget-object v1, v1, Lxn;->a:Ljn;

    const/4 v2, 0x0

    .line 164
    invoke-interface {v1, v0, v2}, Ljn;->a(Lin;Ljava/util/List;)V

    return-object v0

    :catch_6
    move-object/from16 v0, v16

    move-object/from16 v13, v22

    move-object/from16 v1, v24

    .line 165
    :goto_11
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x44

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Time out while launching billing flow: ; for sku: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v1, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lun;->m:Lin;

    .line 168
    iget-object v1, v7, Lfn;->d:Lyn;

    .line 169
    iget-object v1, v1, Lyn;->b:Lxn;

    .line 170
    iget-object v1, v1, Lxn;->a:Ljn;

    const/4 v2, 0x0

    .line 171
    invoke-interface {v1, v0, v2}, Ljn;->a(Lin;Ljava/util/List;)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;
    .locals 4

    invoke-virtual {p0}, Lfn;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lcom/android/billingclient/api/Purchase$a;

    .line 1
    sget-object v0, Lun;->l:Lin;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$a;-><init>(Lin;Ljava/util/List;)V

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid SKU type."

    .line 3
    invoke-static {p1, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/Purchase$a;

    .line 4
    sget-object v0, Lun;->f:Lin;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$a;-><init>(Lin;Ljava/util/List;)V

    return-object p1

    :cond_1
    new-instance v0, Lnn;

    .line 5
    invoke-direct {v0, p0, p1}, Lnn;-><init>(Lfn;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    .line 6
    invoke-virtual {p0, v0, v2, v3, v1}, Lfn;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/Purchase$a;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 8
    :catch_0
    new-instance p1, Lcom/android/billingclient/api/Purchase$a;

    .line 9
    sget-object v0, Lun;->j:Lin;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$a;-><init>(Lin;Ljava/util/List;)V

    return-object p1

    .line 10
    :catch_1
    new-instance p1, Lcom/android/billingclient/api/Purchase$a;

    .line 11
    sget-object v0, Lun;->m:Lin;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$a;-><init>(Lin;Ljava/util/List;)V

    return-object p1
.end method

.method public final f(Lkn;Lln;)V
    .locals 5

    invoke-virtual {p0}, Lfn;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    sget-object p1, Lun;->l:Lin;

    check-cast p2, Liq$a;

    invoke-virtual {p2, p1, v1}, Liq$a;->a(Lin;Ljava/util/List;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lkn;->a:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lkn;->b:Ljava/util/List;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "BillingClient"

    if-eqz v2, :cond_1

    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    .line 5
    invoke-static {v3, p1}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lun;->f:Lin;

    check-cast p2, Liq$a;

    invoke-virtual {p2, p1, v1}, Liq$a;->a(Lin;Ljava/util/List;)V

    return-void

    :cond_1
    if-eqz p1, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 10
    new-instance v4, Lwn;

    .line 11
    invoke-direct {v4, v3}, Lwn;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SKU must be set."

    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    new-instance p1, Lpn;

    .line 16
    invoke-direct {p1, p0, v0, v2, p2}, Lpn;-><init>(Lfn;Ljava/lang/String;Ljava/util/List;Lln;)V

    new-instance v0, Lzn;

    invoke-direct {v0, p2}, Lzn;-><init>(Lln;)V

    const-wide/16 v2, 0x7530

    .line 17
    invoke-virtual {p0, p1, v2, v3, v0}, Lfn;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_4

    .line 18
    invoke-virtual {p0}, Lfn;->g()Lin;

    move-result-object p1

    .line 19
    check-cast p2, Liq$a;

    invoke-virtual {p2, p1, v1}, Liq$a;->a(Lin;Ljava/util/List;)V

    :cond_4
    return-void

    :cond_5
    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty - set SKU list or SkuWithOffer list."

    .line 20
    invoke-static {v3, p1}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object p1, Lun;->e:Lin;

    check-cast p2, Liq$a;

    invoke-virtual {p2, p1, v1}, Liq$a;->a(Lin;Ljava/util/List;)V

    return-void
.end method

.method public final g()Lin;
    .locals 2

    iget v0, p0, Lfn;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lun;->j:Lin;

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lun;->l:Lin;

    :goto_1
    return-object v0
.end method

.method public final i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    long-to-double p2, p2

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double p2, p2, v0

    double-to-long p2, p2

    iget-object v0, p0, Lfn;->r:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 1
    sget v0, Lpr4;->a:I

    new-instance v1, Leo;

    invoke-direct {v1, p0}, Leo;-><init>(Lfn;)V

    .line 2
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lfn;->r:Ljava/util/concurrent/ExecutorService;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lfn;->r:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lfn;->c:Landroid/os/Handler;

    new-instance v1, Lfo;

    .line 4
    invoke-direct {v1, p1, p4}, Lfo;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1c

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Async task throws exception "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BillingClient"

    invoke-static {p2, p1}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
