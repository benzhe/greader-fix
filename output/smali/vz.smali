.class public final Lvz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/signin/internal/zaj;

.field public final synthetic f:Ltz;


# direct methods
.method public constructor <init>(Ltz;Lcom/google/android/gms/signin/internal/zaj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvz;->f:Ltz;

    iput-object p2, p0, Lvz;->e:Lcom/google/android/gms/signin/internal/zaj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lvz;->f:Ltz;

    iget-object v1, p0, Lvz;->e:Lcom/google/android/gms/signin/internal/zaj;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/signin/internal/zaj;->f:Lcom/google/android/gms/common/ConnectionResult;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->n()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/signin/internal/zaj;->g:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    .line 6
    iget-object v2, v1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->g:Lcom/google/android/gms/common/ConnectionResult;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->n()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    const-string v4, "Sign-in succeeded with resolve account failure: "

    invoke-static {v3, v4, v1}, Ljo;->O(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v4, "SignInCoordinator"

    invoke-static {v4, v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    iget-object v1, v0, Ltz;->k:Lwz;

    check-cast v1, Lzy$c;

    invoke-virtual {v1, v2}, Lzy$c;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 10
    iget-object v0, v0, Ltz;->j:Lu35;

    invoke-interface {v0}, Lny$f;->disconnect()V

    goto :goto_2

    .line 11
    :cond_0
    iget-object v2, v0, Ltz;->k:Lwz;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->n()Lq00;

    move-result-object v1

    iget-object v3, v0, Ltz;->h:Ljava/util/Set;

    check-cast v2, Lzy$c;

    .line 12
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iput-object v1, v2, Lzy$c;->c:Lq00;

    .line 14
    iput-object v3, v2, Lzy$c;->d:Ljava/util/Set;

    .line 15
    iget-boolean v4, v2, Lzy$c;->e:Z

    if-eqz v4, :cond_4

    .line 16
    iget-object v2, v2, Lzy$c;->a:Lny$f;

    invoke-interface {v2, v1, v3}, Lny$f;->getRemoteService(Lq00;Ljava/util/Set;)V

    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GoogleApiManager"

    const-string v4, "Received null response from onSignInSuccess"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v2, v1}, Lzy$c;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object v1, v0, Ltz;->k:Lwz;

    check-cast v1, Lzy$c;

    invoke-virtual {v1, v2}, Lzy$c;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 20
    :cond_4
    :goto_1
    iget-object v0, v0, Ltz;->j:Lu35;

    invoke-interface {v0}, Lny$f;->disconnect()V

    :goto_2
    return-void
.end method
