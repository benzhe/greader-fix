.class public Ljb6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lye5;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lxb6;

.field public final d:Lxb6;

.field public final e:Lxb6;

.field public final f:Ldc6;

.field public final g:Lfc6;

.field public final h:Lgc6;

.field public final i:Lz96;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpe5;Lz96;Lye5;Ljava/util/concurrent/Executor;Lxb6;Lxb6;Lxb6;Ldc6;Lfc6;Lgc6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Ljb6;->i:Lz96;

    .line 3
    iput-object p4, p0, Ljb6;->a:Lye5;

    .line 4
    iput-object p5, p0, Ljb6;->b:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p6, p0, Ljb6;->c:Lxb6;

    .line 6
    iput-object p7, p0, Ljb6;->d:Lxb6;

    .line 7
    iput-object p8, p0, Ljb6;->e:Lxb6;

    .line 8
    iput-object p9, p0, Ljb6;->f:Ldc6;

    .line 9
    iput-object p10, p0, Ljb6;->g:Lfc6;

    .line 10
    iput-object p11, p0, Ljb6;->h:Lgc6;

    return-void
.end method

.method public static a()Ljb6;
    .locals 2

    .line 1
    invoke-static {}, Lpe5;->b()Lpe5;

    move-result-object v0

    .line 2
    const-class v1, Lrb6;

    .line 3
    invoke-virtual {v0}, Lpe5;->a()V

    .line 4
    iget-object v0, v0, Lpe5;->d:Leg5;

    invoke-virtual {v0, v1}, Lpf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lrb6;

    invoke-virtual {v0}, Lrb6;->c()Ljb6;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)J
    .locals 3

    .line 1
    iget-object v0, p0, Ljb6;->g:Lfc6;

    .line 2
    iget-object v1, v0, Lfc6;->c:Lxb6;

    invoke-static {v1, p1}, Lfc6;->c(Lxb6;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v0, Lfc6;->c:Lxb6;

    invoke-static {v2}, Lfc6;->b(Lxb6;)Lyb6;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lfc6;->a(Ljava/lang/String;Lyb6;)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lfc6;->d:Lxb6;

    invoke-static {v0, p1}, Lfc6;->c(Lxb6;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-string v0, "Long"

    .line 7
    invoke-static {p1, v0}, Lfc6;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ljb6;->g:Lfc6;

    .line 2
    iget-object v1, v0, Lfc6;->c:Lxb6;

    invoke-static {v1, p1}, Lfc6;->d(Lxb6;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v0, Lfc6;->c:Lxb6;

    invoke-static {v2}, Lfc6;->b(Lxb6;)Lyb6;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lfc6;->a(Ljava/lang/String;Lyb6;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lfc6;->d:Lxb6;

    invoke-static {v0, p1}, Lfc6;->d(Lxb6;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "String"

    .line 5
    invoke-static {p1, v0}, Lfc6;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    :goto_0
    return-object v1
.end method
