.class public final Lc68$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc68$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Le68;Ljava/lang/StringBuilder;)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    sget-object v2, Lq68;->K:Lq68;

    invoke-virtual {v0, v2}, Le68;->b(Ly68;)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 3
    iget-object v6, v0, Le68;->a:Lu68;

    .line 4
    sget-object v7, Lq68;->i:Lq68;

    invoke-interface {v6, v7}, Lu68;->y(Ly68;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    iget-object v0, v0, Le68;->a:Lu68;

    .line 6
    invoke-interface {v0, v7}, Lu68;->D(Ly68;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_0
    const/4 v0, 0x0

    if-nez v2, :cond_1

    return v0

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 8
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lq68;->C(J)I

    move-result v2

    const-wide v5, -0xe79747c00L

    const-string v7, ":00"

    const-wide/16 v10, 0x1

    const-wide v12, 0xe79747c00L

    const-wide v14, 0x497968bd80L

    const/4 v3, 0x1

    cmp-long v4, v8, v5

    if-ltz v4, :cond_3

    sub-long/2addr v8, v14

    add-long/2addr v8, v12

    .line 9
    invoke-static {v8, v9, v14, v15}, Lkt7;->f(JJ)J

    move-result-wide v4

    add-long/2addr v4, v10

    .line 10
    invoke-static {v8, v9, v14, v15}, Lkt7;->i(JJ)J

    move-result-wide v8

    sub-long/2addr v8, v12

    .line 11
    sget-object v6, La58;->j:La58;

    invoke-static {v8, v9, v0, v6}, Lq48;->Z(JILa58;)Lq48;

    move-result-object v0

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-lez v6, :cond_2

    const/16 v6, 0x2b

    .line 12
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v0, v0, Lq48;->f:Lr48;

    .line 15
    iget-byte v0, v0, Lr48;->g:B

    if-nez v0, :cond_7

    .line 16
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    add-long/2addr v8, v12

    .line 17
    div-long v4, v8, v14

    .line 18
    rem-long/2addr v8, v14

    sub-long v12, v8, v12

    .line 19
    sget-object v6, La58;->j:La58;

    invoke-static {v12, v13, v0, v6}, Lq48;->Z(JILa58;)Lq48;

    move-result-object v0

    .line 20
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v12, v0, Lq48;->f:Lr48;

    .line 23
    iget-byte v12, v12, Lr48;->g:B

    if-nez v12, :cond_4

    .line 24
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-gez v7, :cond_7

    .line 25
    iget-object v0, v0, Lq48;->e:Lp48;

    .line 26
    iget v0, v0, Lp48;->e:I

    const/16 v7, -0x2710

    if-ne v0, v7, :cond_5

    add-int/lit8 v0, v6, 0x2

    sub-long/2addr v4, v10

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v6, v0, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_6

    .line 28
    invoke-virtual {v1, v6, v4, v5}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    add-int/2addr v6, v3

    .line 29
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v1, v6, v4, v5}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    :cond_7
    :goto_0
    if-eqz v2, :cond_a

    const/16 v0, 0x2e

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v0, 0xf4240

    .line 31
    rem-int v4, v2, v0

    if-nez v4, :cond_8

    .line 32
    div-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 33
    :cond_8
    rem-int/lit16 v4, v2, 0x3e8

    if-nez v4, :cond_9

    .line 34
    div-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    const v0, 0x3b9aca00

    add-int/2addr v2, v0

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_1
    const/16 v0, 0x5a

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Instant()"

    return-object v0
.end method
