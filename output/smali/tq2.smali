.class public final Ltq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lpr2;


# direct methods
.method public constructor <init>(Lpr2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltq2;->e:Lpr2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Ltq2;->e:Lpr2;

    iget-object v0, v0, Lpr2;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lpr2;->c:Landroid/os/ConditionVariable;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ltq2;->e:Lpr2;

    iget-object v1, v1, Lpr2;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 6
    :try_start_1
    sget-object v2, Ly40;->v1:Le60;

    invoke-virtual {v2}, Le60;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 7
    :try_start_2
    new-instance v3, Lip3;

    iget-object v4, p0, Ltq2;->e:Lpr2;

    .line 8
    iget-object v4, v4, Lpr2;->a:Lxb3;

    .line 9
    iget-object v4, v4, Lxb3;->a:Landroid/content/Context;

    const-string v5, "ADSHIELD"

    .line 10
    invoke-direct {v3, v4, v5}, Lip3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v3, Lpr2;->d:Lip3;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move v1, v2

    .line 11
    :catchall_0
    :try_start_3
    iget-object v2, p0, Ltq2;->e:Lpr2;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lpr2;->b:Ljava/lang/Boolean;

    .line 12
    sget-object v1, Lpr2;->c:Landroid/os/ConditionVariable;

    .line 13
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 14
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
