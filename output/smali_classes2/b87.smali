.class public final Lb87;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb87$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb87$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb87$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr87$x;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lr87$x;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb87$a;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb87$a;",
            ">;",
            "Lr87$x;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lb87;->a:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lb87;->b:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lb87;->c:Lr87$x;

    .line 5
    iput-object p4, p0, Lb87;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/Map;ZIILjava/lang/Object;)Lb87;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;ZII",
            "Ljava/lang/Object;",
            ")",
            "Lb87;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v6, "retryThrottling"

    .line 1
    invoke-static {v0, v6}, Lm77;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    const-string v7, "maxTokens"

    .line 2
    invoke-static {v6, v7}, Lm77;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    const-string v8, "tokenRatio"

    .line 3
    invoke-static {v6, v8}, Lm77;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->floatValue()F

    move-result v6

    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-lez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    const-string v10, "maxToken should be greater than zero"

    .line 4
    invoke-static {v9, v10}, Lc50;->G(ZLjava/lang/Object;)V

    cmpl-float v8, v6, v8

    if-lez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    const-string v9, "tokenRatio should be greater than zero"

    .line 5
    invoke-static {v8, v9}, Lc50;->G(ZLjava/lang/Object;)V

    .line 6
    new-instance v8, Lr87$x;

    invoke-direct {v8, v7, v6}, Lr87$x;-><init>(FF)V

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v8, 0x0

    .line 7
    :goto_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "methodConfig"

    .line 9
    invoke-static {v0, v9}, Lm77;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_4

    .line 10
    :cond_5
    invoke-static {v0}, Lm77;->a(Ljava/util/List;)Ljava/util/List;

    :goto_4
    if-nez v0, :cond_6

    .line 11
    new-instance v0, Lb87;

    invoke-direct {v0, v6, v7, v8, v2}, Lb87;-><init>(Ljava/util/Map;Ljava/util/Map;Lr87$x;Ljava/lang/Object;)V

    return-object v0

    .line 12
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 13
    new-instance v10, Lb87$a;

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-direct {v10, v9, v1, v11, v12}, Lb87$a;-><init>(Ljava/util/Map;ZII)V

    const-string v13, "name"

    .line 14
    invoke-static {v9, v13}, Lm77;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_8

    const/4 v13, 0x0

    goto :goto_5

    .line 15
    :cond_8
    invoke-static {v13}, Lm77;->a(Ljava/util/List;)Ljava/util/List;

    :goto_5
    if-eqz v13, :cond_9

    .line 16
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    const/4 v14, 0x1

    goto :goto_6

    :cond_9
    const/4 v14, 0x0

    :goto_6
    const-string v15, "no names in method config %s"

    .line 17
    invoke-static {v14, v15, v9}, Lc50;->o(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    const-string v14, "service"

    .line 19
    invoke-static {v13, v14}, Lm77;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 20
    sget v15, Lod5;->a:I

    if-eqz v14, :cond_b

    .line 21
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_a

    goto :goto_8

    :cond_a
    const/4 v15, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v15, 0x1

    :goto_9
    xor-int/2addr v15, v5

    const-string v3, "missing service name"

    .line 22
    invoke-static {v15, v3}, Lc50;->t(ZLjava/lang/Object;)V

    const-string v3, "method"

    .line 23
    invoke-static {v13, v3}, Lm77;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_a

    :cond_c
    const/4 v13, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v13, 0x1

    :goto_b
    if-eqz v13, :cond_e

    .line 25
    invoke-virtual {v7, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v5

    const-string v13, "Duplicate service %s"

    .line 26
    invoke-static {v3, v13, v14}, Lc50;->o(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v7, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 28
    :cond_e
    invoke-static {v14, v3}, Lj47;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    xor-int/2addr v13, v5

    const-string v14, "Duplicate method name %s"

    .line 30
    invoke-static {v13, v14, v3}, Lc50;->o(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v6, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 32
    :cond_f
    new-instance v0, Lb87;

    invoke-direct {v0, v6, v7, v8, v2}, Lb87;-><init>(Ljava/util/Map;Ljava/util/Map;Lr87$x;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lb87;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lb87;

    .line 3
    iget-object v2, p0, Lb87;->a:Ljava/util/Map;

    iget-object v3, p1, Lb87;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb87;->b:Ljava/util/Map;

    iget-object v3, p1, Lb87;->b:Ljava/util/Map;

    .line 4
    invoke-static {v2, v3}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb87;->c:Lr87$x;

    iget-object v3, p1, Lb87;->c:Lr87$x;

    .line 5
    invoke-static {v2, v3}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb87;->d:Ljava/lang/Object;

    iget-object p1, p1, Lb87;->d:Ljava/lang/Object;

    .line 6
    invoke-static {v2, p1}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lb87;->a:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lb87;->b:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lb87;->c:Lr87$x;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lb87;->d:Ljava/lang/Object;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget-object v1, p0, Lb87;->a:Ljava/util/Map;

    const-string v2, "serviceMethodMap"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 3
    iget-object v1, p0, Lb87;->b:Ljava/util/Map;

    const-string v2, "serviceMap"

    .line 4
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 5
    iget-object v1, p0, Lb87;->c:Lr87$x;

    const-string v2, "retryThrottling"

    .line 6
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 7
    iget-object v1, p0, Lb87;->d:Ljava/lang/Object;

    const-string v2, "loadBalancingConfig"

    .line 8
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 9
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
