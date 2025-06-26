.class public final synthetic Lxf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Luf0;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Luf0;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxf0;->a:Luf0;

    iput-object p2, p0, Lxf0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 6

    iget-object v0, p0, Lxf0;->a:Luf0;

    iget-object v1, p0, Lxf0;->b:Ljava/lang/Object;

    check-cast p1, Lwe0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Lxs0;

    invoke-direct {v2}, Lxs0;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzj;->zzzr()Ljava/lang/String;

    move-result-object v3

    .line 4
    sget-object v4, Lva0;->p:Lvb0;

    new-instance v5, Lwf0;

    invoke-direct {v5, v0, v2}, Lwf0;-><init>(Luf0;Lxs0;)V

    invoke-virtual {v4, v3, v5}, Lvb0;->b(Ljava/lang/String;Lxb0;)V

    .line 5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "id"

    .line 6
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v3, v0, Luf0;->b:Lef0;

    invoke-interface {v3, v1}, Lef0;->c(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "args"

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v0, v0, Luf0;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v4}, Lzd0;->Z(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v2
.end method
