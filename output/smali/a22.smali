.class public final synthetic La22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lz12;

.field public final b:Lio1;


# direct methods
.method public constructor <init>(Lz12;Lio1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La22;->a:Lz12;

    iput-object p2, p0, La22;->b:Lio1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 3

    iget-object v0, p0, La22;->a:Lz12;

    iget-object v1, p0, La22;->b:Lio1;

    check-cast p1, Lorg/json/JSONObject;

    .line 1
    iget-object v0, v0, Lz12;->d:Lyl2;

    invoke-static {v1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v1

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, v0, Lyl2;->a:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    const-string v0, "success"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "json"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "ads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Laf0;

    const-string v0, "process json failed"

    invoke-direct {p1, v0}, Laf0;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0

    throw p1
.end method
