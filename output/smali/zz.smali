.class public final Lzz;
.super Liz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lyy<",
        "+",
        "Lty;",
        "Lny$b;",
        ">;>",
        "Liz;"
    }
.end annotation


# instance fields
.field public final a:Lyy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILyy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Liz;-><init>(I)V

    .line 2
    iput-object p2, p0, Lzz;->a:Lyy;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzz;->a:Lyy;

    invoke-virtual {v0, p1}, Lyy;->h(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final b(Lzy$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzy$a<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lzz;->a:Lyy;

    .line 2
    iget-object p1, p1, Lzy$a;->f:Lny$f;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v1, p1, Ly00;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    check-cast p1, Ly00;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-object p1, v2

    :cond_0
    const/16 v1, 0x8

    const/4 v3, 0x1

    .line 6
    :try_start_1
    invoke-virtual {v0, p1}, Lyy;->g(Lny$b;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    new-instance v4, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {v4, v3, v1, p1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 9
    invoke-virtual {v0, v4}, Lyy;->h(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 10
    new-instance v4, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-direct {v4, v3, v1, v5, v2}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 12
    invoke-virtual {v0, v4}, Lyy;->h(Lcom/google/android/gms/common/api/Status;)V

    .line 13
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception p1

    .line 14
    invoke-virtual {p0, p1}, Lzz;->d(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final c(Lez;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzz;->a:Lyy;

    .line 2
    iget-object v1, p1, Lez;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p2, Lfz;

    invoke-direct {p2, p1, v0}, Lfz;-><init>(Lez;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "Callback cannot be null."

    .line 5
    invoke-static {p1, v1}, Lbi;->c(ZLjava/lang/Object;)V

    .line 6
    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 7
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p2, v0}, Lfz;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final d(Ljava/lang/RuntimeException;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {p1, v2}, Ljo;->x(Ljava/lang/String;I)I

    move-result v2

    const-string v3, ": "

    invoke-static {v2, v1, v3, p1}, Ljo;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lzz;->a:Lyy;

    invoke-virtual {p1, v0}, Lyy;->h(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
