.class public final Lx22;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvl2;

.field public final b:Lhq1;

.field public final c:Lns1;

.field public final d:Lpp2;


# direct methods
.method public constructor <init>(Lvl2;Lhq1;Lns1;Lpp2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx22;->a:Lvl2;

    .line 3
    iput-object p2, p0, Lx22;->b:Lhq1;

    .line 4
    iput-object p3, p0, Lx22;->c:Lns1;

    .line 5
    iput-object p4, p0, Lx22;->d:Lpp2;

    return-void
.end method


# virtual methods
.method public final a(Lwk2;Lsk2;ILoz1;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 1
    sget-object v4, Ly40;->e5:Lo40;

    .line 2
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v5, v4}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "adapter_sv"

    const-string v6, "adapter_v"

    const-string v7, "areec"

    const-string v8, "ancn"

    const-string v9, "arec"

    const-string v10, "sc"

    const-string v11, "adapter_l"

    const-string v12, "adapter_status"

    const-string v13, "aai"

    if-eqz v4, :cond_3

    .line 5
    invoke-static {v12}, Lqp2;->c(Ljava/lang/String;)Lqp2;

    move-result-object v4

    .line 6
    invoke-virtual {v4, v1}, Lqp2;->b(Lwk2;)Lqp2;

    .line 7
    iget-object v1, v4, Lqp2;->a:Ljava/util/HashMap;

    iget-object v12, v2, Lsk2;->v:Ljava/lang/String;

    invoke-virtual {v1, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v12, v4, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {v12, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v11, v4, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {v11, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 12
    iget-object v1, v3, Loz1;->f:Lcom/google/android/gms/internal/ads/zzvh;

    .line 13
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v10, v4, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {v10, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, v0, Lx22;->a:Lvl2;

    .line 16
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lvl2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    iget-object v3, v4, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    iget-object v1, v0, Lx22;->b:Lhq1;

    iget-object v2, v2, Lsk2;->s:Ljava/util/List;

    .line 19
    invoke-virtual {v1, v2}, Lhq1;->a(Ljava/util/List;)Liq1;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    iget-object v2, v1, Liq1;->a:Ljava/lang/String;

    .line 21
    iget-object v3, v4, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v2, v1, Liq1;->b:Lcom/google/android/gms/internal/ads/zzaqr;

    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaqr;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    iget-object v3, v4, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_1
    iget-object v1, v1, Liq1;->c:Lcom/google/android/gms/internal/ads/zzaqr;

    if-eqz v1, :cond_2

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqr;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    iget-object v2, v4, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_2
    iget-object v1, v0, Lx22;->d:Lpp2;

    invoke-interface {v1, v4}, Lpp2;->b(Lqp2;)V

    return-void

    .line 29
    :cond_3
    iget-object v4, v0, Lx22;->c:Lns1;

    .line 30
    invoke-virtual {v4}, Lns1;->a()Lms1;

    move-result-object v4

    .line 31
    iget-object v14, v4, Lms1;->a:Ljava/util/Map;

    iget-object v1, v1, Lwk2;->b:Ljava/lang/String;

    const-string v15, "gqi"

    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, v4, Lms1;->a:Ljava/util/Map;

    iget-object v14, v2, Lsk2;->v:Ljava/lang/String;

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, v4, Lms1;->a:Ljava/util/Map;

    const-string v13, "action"

    invoke-interface {v1, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 35
    iget-object v12, v4, Lms1;->a:Ljava/util/Map;

    invoke-interface {v12, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    iget-object v11, v4, Lms1;->a:Ljava/util/Map;

    invoke-interface {v11, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 38
    iget-object v1, v3, Loz1;->f:Lcom/google/android/gms/internal/ads/zzvh;

    .line 39
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v10, v4, Lms1;->a:Ljava/util/Map;

    invoke-interface {v10, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v1, v0, Lx22;->a:Lvl2;

    .line 42
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lvl2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 43
    iget-object v3, v4, Lms1;->a:Ljava/util/Map;

    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_4
    iget-object v1, v0, Lx22;->b:Lhq1;

    iget-object v2, v2, Lsk2;->s:Ljava/util/List;

    .line 45
    invoke-virtual {v1, v2}, Lhq1;->a(Ljava/util/List;)Liq1;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 46
    iget-object v2, v1, Liq1;->a:Ljava/lang/String;

    .line 47
    iget-object v3, v4, Lms1;->a:Ljava/util/Map;

    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v2, v1, Liq1;->b:Lcom/google/android/gms/internal/ads/zzaqr;

    if-eqz v2, :cond_5

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaqr;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    iget-object v3, v4, Lms1;->a:Ljava/util/Map;

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_5
    iget-object v1, v1, Liq1;->c:Lcom/google/android/gms/internal/ads/zzaqr;

    if-eqz v1, :cond_6

    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqr;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v2, v4, Lms1;->a:Ljava/util/Map;

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_6
    invoke-virtual {v4}, Lms1;->b()V

    return-void
.end method
