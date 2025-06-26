.class public final synthetic Lin1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lfn1;

.field public final b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lfn1;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin1;->a:Lfn1;

    iput-object p2, p0, Lin1;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 6

    iget-object v0, p0, Lin1;->a:Lfn1;

    iget-object v1, p0, Lin1;->b:Lorg/json/JSONObject;

    check-cast p1, Lxw0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Lus0;

    invoke-direct {v2, p1}, Lus0;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object v3, v0, Lfn1;->a:Lll2;

    iget-object v3, v3, Lll2;->c:Lcom/google/android/gms/internal/ads/zzajy;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Ljy0;

    const/4 v5, 0x5

    invoke-direct {v3, v5, v4, v4}, Ljy0;-><init>(III)V

    .line 5
    invoke-interface {p1, v3}, Lxw0;->J(Ljy0;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v3, Ljy0;

    const/4 v5, 0x4

    invoke-direct {v3, v5, v4, v4}, Ljy0;-><init>(III)V

    .line 7
    invoke-interface {p1, v3}, Lxw0;->J(Ljy0;)V

    .line 8
    :goto_0
    invoke-interface {p1}, Lxw0;->I()Lhy0;

    move-result-object v3

    new-instance v4, Lln1;

    invoke-direct {v4, v0, p1, v2}, Lln1;-><init>(Lfn1;Lxw0;Lus0;)V

    .line 9
    check-cast v3, Lww0;

    .line 10
    iput-object v4, v3, Lww0;->k:Lgy0;

    const-string v0, "google.afma.nativeAds.renderVideo"

    .line 11
    invoke-interface {p1, v0, v1}, Lzd0;->Z(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v2
.end method
