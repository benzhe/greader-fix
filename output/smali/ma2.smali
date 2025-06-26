.class public final synthetic Lma2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lna2;


# direct methods
.method public constructor <init>(Lna2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma2;->e:Lna2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lma2;->e:Lna2;

    .line 1
    iget-object v1, v0, Lna2;->b:Lpq1;

    iget-object v2, v0, Lna2;->d:Lll2;

    iget-object v2, v2, Lll2;->f:Ljava/lang/String;

    iget-object v3, v0, Lna2;->c:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v4, Ly40;->e2:Lo40;

    .line 4
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 5
    invoke-virtual {v5, v4}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_6

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v4, v1, Lpq1;->d:Z

    if-nez v4, :cond_2

    .line 8
    invoke-virtual {v1}, Lpq1;->a()V

    .line 9
    :cond_2
    iget-object v4, v1, Lpq1;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    iget-object v1, v1, Lpq1;->e:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lc50;->O1(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/json/JSONObject;

    goto :goto_1

    :cond_6
    :goto_0
    move-object v6, v5

    .line 13
    :goto_1
    iget-object v0, v0, Lna2;->b:Lpq1;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Ly40;->f2:Lo40;

    .line 16
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 17
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    .line 19
    :cond_7
    iget-object v5, v0, Lpq1;->b:Lorg/json/JSONObject;

    .line 20
    :goto_2
    new-instance v0, Lka2;

    invoke-direct {v0, v6, v5}, Lka2;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v0
.end method
