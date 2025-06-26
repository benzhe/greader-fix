.class public final Llf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbt0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbt0<",
        "Lwe0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Loe0;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lxs0;

.field public final synthetic d:Lmf0;


# direct methods
.method public constructor <init>(Lmf0;Loe0;Ljava/lang/Object;Lxs0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llf0;->d:Lmf0;

    iput-object p2, p0, Llf0;->a:Loe0;

    iput-object p3, p0, Llf0;->b:Ljava/lang/Object;

    iput-object p4, p0, Llf0;->c:Lxs0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzg(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lwe0;

    .line 2
    iget-object v0, p0, Llf0;->d:Lmf0;

    iget-object v1, p0, Llf0;->a:Loe0;

    iget-object v2, p0, Llf0;->b:Ljava/lang/Object;

    iget-object v3, p0, Llf0;->c:Lxs0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzj;->zzzr()Ljava/lang/String;

    move-result-object v4

    .line 5
    sget-object v5, Lva0;->p:Lvb0;

    new-instance v6, Lnf0;

    invoke-direct {v6, v0, v1, v3}, Lnf0;-><init>(Lmf0;Loe0;Lxs0;)V

    invoke-virtual {v5, v4, v6}, Lvb0;->b(Ljava/lang/String;Lxb0;)V

    .line 6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "id"

    .line 7
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "args"

    .line 8
    iget-object v6, v0, Lmf0;->b:Lef0;

    invoke-interface {v6, v2}, Lef0;->c(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v0, v0, Lmf0;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v5}, Lzd0;->Z(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    invoke-virtual {v3, p1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    const-string v0, "Unable to invokeJavascript"

    .line 11
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-virtual {v1}, Loe0;->d()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {v1}, Loe0;->d()V

    .line 14
    throw p1
.end method
