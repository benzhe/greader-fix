.class public final Lrn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ltn;


# direct methods
.method public constructor <init>(Ltn;)V
    .locals 0

    iput-object p1, p0, Lrn;->e:Ltn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lrn;->e:Ltn;

    .line 1
    iget-object v0, v0, Ltn;->a:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lrn;->e:Ltn;

    .line 3
    iget-boolean v2, v1, Ltn;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v0

    goto/16 :goto_e

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, v1, Ltn;->d:Lfn;

    .line 6
    iget-object v1, v1, Lfn;->e:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x3

    :goto_0
    if-lt v5, v0, :cond_2

    :try_start_2
    iget-object v7, p0, Lrn;->e:Ltn;

    iget-object v7, v7, Ltn;->d:Lfn;

    .line 8
    iget-object v7, v7, Lfn;->f:Lsr4;

    const-string v8, "subs"

    .line 9
    invoke-interface {v7, v5, v1, v8}, Lsr4;->K0(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :catch_0
    move v0, v6

    goto/16 :goto_c

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget-object v7, p0, Lrn;->e:Ltn;

    iget-object v7, v7, Ltn;->d:Lfn;

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-lt v5, v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 10
    :goto_2
    iput-boolean v8, v7, Lfn;->i:Z

    if-lt v5, v0, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    .line 11
    :goto_3
    iput-boolean v8, v7, Lfn;->h:Z

    if-ge v5, v0, :cond_5

    const-string v5, "BillingClient"

    const-string v7, "In-app billing API does not support subscription on this device."

    .line 12
    invoke-static {v5, v7}, Lpr4;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/16 v5, 0x10

    :goto_4
    if-lt v5, v0, :cond_7

    iget-object v7, p0, Lrn;->e:Ltn;

    iget-object v7, v7, Ltn;->d:Lfn;

    .line 13
    iget-object v7, v7, Lfn;->f:Lsr4;

    const-string v8, "inapp"

    .line 14
    invoke-interface {v7, v5, v1, v8}, Lsr4;->K0(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    iget-object v1, p0, Lrn;->e:Ltn;

    iget-object v1, v1, Ltn;->d:Lfn;

    .line 15
    iput v5, v1, Lfn;->j:I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 16
    :cond_7
    :goto_5
    iget-object v1, p0, Lrn;->e:Ltn;

    iget-object v1, v1, Ltn;->d:Lfn;

    .line 17
    iget v5, v1, Lfn;->j:I

    if-lt v5, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    .line 18
    :goto_6
    iput-boolean v4, v1, Lfn;->p:Z

    const/16 v4, 0xf

    if-lt v5, v4, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    .line 19
    :goto_7
    iput-boolean v4, v1, Lfn;->o:Z

    const/16 v4, 0xe

    if-lt v5, v4, :cond_a

    const/4 v4, 0x1

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    .line 20
    :goto_8
    iput-boolean v4, v1, Lfn;->n:Z

    const/16 v4, 0xa

    if-lt v5, v4, :cond_b

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    .line 21
    :goto_9
    iput-boolean v4, v1, Lfn;->m:Z

    const/16 v4, 0x9

    if-lt v5, v4, :cond_c

    const/4 v4, 0x1

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    .line 22
    :goto_a
    iput-boolean v4, v1, Lfn;->l:Z

    const/4 v4, 0x6

    if-lt v5, v4, :cond_d

    goto :goto_b

    :cond_d
    const/4 v9, 0x0

    .line 23
    :goto_b
    iput-boolean v9, v1, Lfn;->k:Z

    if-ge v5, v0, :cond_e

    const-string v0, "BillingClient"

    const-string v1, "In-app billing API version 3 is not supported on this device."

    .line 24
    invoke-static {v0, v1}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    if-nez v6, :cond_f

    iget-object v0, p0, Lrn;->e:Ltn;

    iget-object v0, v0, Ltn;->d:Lfn;

    const/4 v1, 0x2

    .line 25
    iput v1, v0, Lfn;->a:I

    goto :goto_d

    .line 26
    :cond_f
    iget-object v0, p0, Lrn;->e:Ltn;

    iget-object v0, v0, Ltn;->d:Lfn;

    .line 27
    iput v2, v0, Lfn;->a:I

    .line 28
    iput-object v3, v0, Lfn;->f:Lsr4;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_d

    :catch_1
    :goto_c
    const-string v1, "BillingClient"

    const-string v4, "Exception while checking if billing is supported; try to reconnect"

    .line 29
    invoke-static {v1, v4}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lrn;->e:Ltn;

    iget-object v1, v1, Ltn;->d:Lfn;

    .line 30
    iput v2, v1, Lfn;->a:I

    .line 31
    iput-object v3, v1, Lfn;->f:Lsr4;

    move v6, v0

    :goto_d
    if-nez v6, :cond_10

    .line 32
    iget-object v0, p0, Lrn;->e:Ltn;

    .line 33
    sget-object v1, Lun;->k:Lin;

    invoke-static {v0, v1}, Ltn;->a(Ltn;Lin;)V

    goto :goto_e

    :cond_10
    iget-object v0, p0, Lrn;->e:Ltn;

    .line 34
    sget-object v1, Lun;->a:Lin;

    invoke-static {v0, v1}, Ltn;->a(Ltn;Lin;)V

    :goto_e
    return-object v3

    :catchall_0
    move-exception v1

    .line 35
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
