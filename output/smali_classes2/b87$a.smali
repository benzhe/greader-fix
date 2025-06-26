.class public final Lb87$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/lang/Boolean;

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/lang/Integer;

.field public final e:Ls87;

.field public final f:Lw67;


# direct methods
.method public constructor <init>(Ljava/util/Map;ZII)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;ZII)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "timeout"

    .line 2
    invoke-static {v1, v2}, Lm77;->h(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 3
    iput-object v2, v0, Lb87$a;->a:Ljava/lang/Long;

    .line 4
    sget v2, Lm77;->b:I

    const-string v2, "waitForReady"

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    instance-of v8, v3, Ljava/lang/Boolean;

    if-eqz v8, :cond_11

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    .line 9
    :goto_0
    iput-object v3, v0, Lb87$a;->b:Ljava/lang/Boolean;

    const-string v2, "maxResponseMessageBytes"

    .line 10
    invoke-static {v1, v2}, Lm77;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 11
    iput-object v2, v0, Lb87$a;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v8, "maxInboundMessageSize %s exceeds bounds"

    .line 13
    invoke-static {v3, v8, v2}, Lc50;->o(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v2, "maxRequestMessageBytes"

    .line 14
    invoke-static {v1, v2}, Lm77;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 15
    iput-object v2, v0, Lb87$a;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    const-string v8, "maxOutboundMessageSize %s exceeds bounds"

    .line 17
    invoke-static {v3, v8, v2}, Lc50;->o(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    if-eqz p2, :cond_5

    const-string v2, "retryPolicy"

    .line 18
    invoke-static {v1, v2}, Lm77;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    const-string v3, "%s must not contain OK"

    const-wide/16 v8, 0x0

    const-string v10, "maxAttempts must be greater than 1: %s"

    const-string v11, "maxAttempts cannot be empty"

    const-string v12, "maxAttempts"

    if-nez v2, :cond_6

    .line 19
    sget-object v2, Ls87;->f:Ls87;

    goto/16 :goto_9

    .line 20
    :cond_6
    invoke-static {v2, v12}, Lm77;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 21
    invoke-static {v13, v11}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lt v13, v4, :cond_7

    const/4 v14, 0x1

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    .line 22
    :goto_4
    invoke-static {v14, v10, v13}, Lc50;->m(ZLjava/lang/String;I)V

    move/from16 v14, p3

    .line 23
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    const-string v13, "initialBackoff"

    .line 24
    invoke-static {v2, v13}, Lm77;->h(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "initialBackoff cannot be empty"

    .line 25
    invoke-static {v13, v14}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v16, v13, v8

    if-lez v16, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    const-string v6, "initialBackoffNanos must be greater than 0: %s"

    .line 26
    invoke-static {v5, v6, v13, v14}, Lc50;->n(ZLjava/lang/String;J)V

    const-string v5, "maxBackoff"

    .line 27
    invoke-static {v2, v5}, Lm77;->h(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "maxBackoff cannot be empty"

    .line 28
    invoke-static {v5, v6}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v16, v5, v8

    if-lez v16, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    const-string v9, "maxBackoff must be greater than 0: %s"

    .line 29
    invoke-static {v8, v9, v5, v6}, Lc50;->n(ZLjava/lang/String;J)V

    const-string v8, "backoffMultiplier"

    .line 30
    invoke-static {v2, v8}, Lm77;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    const-string v9, "backoffMultiplier cannot be empty"

    .line 31
    invoke-static {v8, v9}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const-wide/16 v8, 0x0

    cmpl-double v16, v20, v8

    if-lez v16, :cond_a

    const/4 v8, 0x1

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    .line 32
    :goto_7
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v4, "backoffMultiplier must be greater than 0: %s"

    .line 33
    invoke-static {v8, v4, v9}, Lc50;->o(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 34
    new-instance v4, Ls87;

    const-string v8, "retryableStatusCodes"

    .line 35
    invoke-static {v2, v8}, Ln56;->Q0(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_b

    const/4 v9, 0x1

    goto :goto_8

    :cond_b
    const/4 v9, 0x0

    :goto_8
    const-string v7, "%s is required in retry policy"

    .line 36
    invoke-static {v9, v7, v8}, Lsd5;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 37
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    const/4 v9, 0x1

    xor-int/2addr v7, v9

    const-string v9, "%s must not be empty"

    invoke-static {v7, v9, v8}, Lsd5;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 38
    sget-object v7, Lx47$b;->g:Lx47$b;

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x1

    xor-int/2addr v7, v9

    invoke-static {v7, v3, v8}, Lsd5;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    move-wide v7, v13

    move-object v14, v4

    move-wide/from16 v16, v7

    move-wide/from16 v18, v5

    move-object/from16 v22, v2

    .line 39
    invoke-direct/range {v14 .. v22}, Ls87;-><init>(IJJDLjava/util/Set;)V

    move-object v2, v4

    .line 40
    :goto_9
    iput-object v2, v0, Lb87$a;->e:Ls87;

    if-eqz p2, :cond_c

    const-string v2, "hedgingPolicy"

    .line 41
    invoke-static {v1, v2}, Lm77;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    goto :goto_a

    :cond_c
    const/4 v5, 0x0

    :goto_a
    if-nez v5, :cond_d

    .line 42
    sget-object v1, Lw67;->d:Lw67;

    goto :goto_e

    .line 43
    :cond_d
    invoke-static {v5, v12}, Lm77;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 44
    invoke-static {v1, v11}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_e

    const/4 v2, 0x1

    goto :goto_b

    :cond_e
    const/4 v2, 0x0

    .line 45
    :goto_b
    invoke-static {v2, v10, v1}, Lc50;->m(ZLjava/lang/String;I)V

    move/from16 v2, p4

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-string v2, "hedgingDelay"

    .line 47
    invoke-static {v5, v2}, Lm77;->h(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "hedgingDelay cannot be empty"

    .line 48
    invoke-static {v2, v4}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-ltz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_c

    :cond_f
    const/4 v2, 0x0

    :goto_c
    const-string v4, "hedgingDelay must not be negative: %s"

    .line 49
    invoke-static {v2, v4, v6, v7}, Lc50;->n(ZLjava/lang/String;J)V

    .line 50
    new-instance v2, Lw67;

    const-string v4, "nonFatalStatusCodes"

    .line 51
    invoke-static {v5, v4}, Ln56;->Q0(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    if-nez v5, :cond_10

    .line 52
    const-class v3, Lx47$b;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    goto :goto_d

    .line 53
    :cond_10
    sget-object v8, Lx47$b;->g:Lx47$b;

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    invoke-static {v8, v3, v4}, Lsd5;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 54
    :goto_d
    invoke-direct {v2, v1, v6, v7, v5}, Lw67;-><init>(IJLjava/util/Set;)V

    move-object v1, v2

    .line 55
    :goto_e
    iput-object v1, v0, Lb87$a;->f:Lw67;

    return-void

    .line 56
    :cond_11
    new-instance v4, Ljava/lang/ClassCastException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v1, v5, v2

    const-string v1, "value \'%s\' for key \'%s\' in \'%s\' is not Boolean"

    .line 57
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lb87$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lb87$a;

    .line 3
    iget-object v0, p0, Lb87$a;->a:Ljava/lang/Long;

    iget-object v2, p1, Lb87$a;->a:Ljava/lang/Long;

    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb87$a;->b:Ljava/lang/Boolean;

    iget-object v2, p1, Lb87$a;->b:Ljava/lang/Boolean;

    .line 4
    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb87$a;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lb87$a;->c:Ljava/lang/Integer;

    .line 5
    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb87$a;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lb87$a;->d:Ljava/lang/Integer;

    .line 6
    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb87$a;->e:Ls87;

    iget-object v2, p1, Lb87$a;->e:Ls87;

    .line 7
    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb87$a;->f:Lw67;

    iget-object p1, p1, Lb87$a;->f:Lw67;

    .line 8
    invoke-static {v0, p1}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lb87$a;->a:Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lb87$a;->b:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lb87$a;->c:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lb87$a;->d:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lb87$a;->e:Ls87;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lb87$a;->f:Lw67;

    const/4 v2, 0x5

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

    iget-object v1, p0, Lb87$a;->a:Ljava/lang/Long;

    const-string v2, "timeoutNanos"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 3
    iget-object v1, p0, Lb87$a;->b:Ljava/lang/Boolean;

    const-string v2, "waitForReady"

    .line 4
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 5
    iget-object v1, p0, Lb87$a;->c:Ljava/lang/Integer;

    const-string v2, "maxInboundMessageSize"

    .line 6
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 7
    iget-object v1, p0, Lb87$a;->d:Ljava/lang/Integer;

    const-string v2, "maxOutboundMessageSize"

    .line 8
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 9
    iget-object v1, p0, Lb87$a;->e:Ls87;

    const-string v2, "retryPolicy"

    .line 10
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 11
    iget-object v1, p0, Lb87$a;->f:Lw67;

    const-string v2, "hedgingPolicy"

    .line 12
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 13
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
