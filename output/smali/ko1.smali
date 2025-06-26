.class public final synthetic Lko1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lio1;

.field public final b:Ljava/lang/String;

.field public final c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lio1;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko1;->a:Lio1;

    iput-object p2, p0, Lko1;->b:Ljava/lang/String;

    iput-object p3, p0, Lko1;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 6

    iget-object v0, p0, Lko1;->a:Lio1;

    iget-object v1, p0, Lko1;->b:Ljava/lang/String;

    iget-object v2, p0, Lko1;->c:Lorg/json/JSONObject;

    check-cast p1, Lxw0;

    .line 1
    iget-object v0, v0, Lio1;->i:Lvb0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Lxs0;

    invoke-direct {v3}, Lxs0;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzj;->zzzr()Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v5, Lyb0;

    invoke-direct {v5, v3}, Lyb0;-><init>(Lxs0;)V

    invoke-virtual {v0, v4, v5}, Lvb0;->b(Ljava/lang/String;Lxb0;)V

    .line 6
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "id"

    .line 7
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "args"

    .line 8
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-interface {p1, v1, v0}, Lzd0;->Z(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {v3, p1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v3
.end method
