.class public final synthetic Ly12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lz12;

.field public final b:Lsk2;


# direct methods
.method public constructor <init>(Lz12;Lsk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly12;->a:Lz12;

    iput-object p2, p0, Ly12;->b:Lsk2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 6

    iget-object v0, p0, Ly12;->a:Lz12;

    iget-object v1, p0, Ly12;->b:Lsk2;

    check-cast p1, Lio1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x1

    const-string v4, "isNonagon"

    .line 3
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4
    sget-object v4, Ly40;->b5:Lo40;

    .line 5
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v5, v4}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lbi;->K()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "skipDeepLinkValidation"

    .line 8
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 9
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 10
    iget-object v1, v1, Lsk2;->r:Lzk2;

    iget-object v1, v1, Lzk2;->c:Lorg/json/JSONObject;

    const-string v4, "response"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_params"

    .line 11
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "google.afma.nativeAds.preProcessJson"

    .line 12
    invoke-virtual {p1, v1, v3}, Lio1;->e(Ljava/lang/String;Lorg/json/JSONObject;)Law2;

    move-result-object v1

    new-instance v2, La22;

    invoke-direct {v2, v0, p1}, La22;-><init>(Lz12;Lio1;)V

    iget-object p1, v0, Lz12;->b:Lzv2;

    .line 13
    invoke-static {v1, v2, p1}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    return-object p1
.end method
