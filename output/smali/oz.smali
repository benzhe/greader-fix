.class public final Loz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/common/ConnectionResult;

.field public final synthetic f:Lzy$c;


# direct methods
.method public constructor <init>(Lzy$c;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loz;->f:Lzy$c;

    iput-object p2, p0, Loz;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Loz;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Loz;->f:Lzy$c;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lzy$c;->e:Z

    .line 4
    iget-object v0, v0, Lzy$c;->a:Lny$f;

    .line 5
    invoke-interface {v0}, Lny$f;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Loz;->f:Lzy$c;

    .line 7
    iget-boolean v1, v0, Lzy$c;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lzy$c;->c:Lq00;

    if-eqz v1, :cond_0

    .line 8
    iget-object v2, v0, Lzy$c;->a:Lny$f;

    iget-object v0, v0, Lzy$c;->d:Ljava/util/Set;

    invoke-interface {v2, v1, v0}, Lny$f;->getRemoteService(Lq00;Ljava/util/Set;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    :try_start_0
    iget-object v0, p0, Loz;->f:Lzy$c;

    .line 10
    iget-object v0, v0, Lzy$c;->a:Lny$f;

    const/4 v1, 0x0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 12
    invoke-interface {v0, v1, v2}, Lny$f;->getRemoteService(Lq00;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "GoogleApiManager"

    const-string v2, "Failed to get service from broker. "

    .line 13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    iget-object v0, p0, Loz;->f:Lzy$c;

    iget-object v1, v0, Lzy$c;->f:Lzy;

    .line 15
    iget-object v1, v1, Lzy;->k:Ljava/util/Map;

    .line 16
    iget-object v0, v0, Lzy$c;->b:Lb00;

    .line 17
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzy$a;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 18
    invoke-virtual {v0, v1}, Lzy$a;->g0(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 19
    :cond_2
    iget-object v0, p0, Loz;->f:Lzy$c;

    iget-object v1, v0, Lzy$c;->f:Lzy;

    .line 20
    iget-object v1, v1, Lzy;->k:Ljava/util/Map;

    .line 21
    iget-object v0, v0, Lzy$c;->b:Lb00;

    .line 22
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzy$a;

    iget-object v1, p0, Loz;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lzy$a;->g0(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
