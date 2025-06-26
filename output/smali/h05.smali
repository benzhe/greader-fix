.class public final Lh05;
.super Lww4;
.source "SourceFile"


# instance fields
.field public volatile c:La05;

.field public d:La05;

.field public e:La05;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "La05;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/app/Activity;

.field public volatile h:Z

.field public volatile i:La05;

.field public j:La05;

.field public k:Z

.field public final l:Ljava/lang/Object;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lww4;-><init>(Lrx4;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh05;->l:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lh05;->f:Ljava/util/Map;

    return-void
.end method

.method public static r(La05;Landroid/os/Bundle;Z)V
    .locals 4

    const-string v0, "_si"

    const-string v1, "_sn"

    const-string v2, "_sc"

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_3

    :cond_1
    :goto_0
    iget-object p2, p0, La05;->a:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4
    :goto_1
    iget-object p2, p0, La05;->b:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 7
    :goto_2
    iget-wide v1, p0, La05;->c:J

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_4
    :goto_3
    if-nez p0, :cond_5

    if-eqz p2, :cond_5

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(Landroid/app/Activity;La05;Z)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    iget-object v1, v7, Lh05;->c:La05;

    if-nez v1, :cond_0

    iget-object v1, v7, Lh05;->d:La05;

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, v7, Lh05;->c:La05;

    :goto_0
    move-object v3, v1

    .line 2
    iget-object v1, v0, La05;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Activity"

    .line 3
    invoke-virtual {v7, v1, v2}, Lh05;->q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v10, v1

    new-instance v1, La05;

    .line 4
    iget-object v9, v0, La05;->a:Ljava/lang/String;

    iget-wide v11, v0, La05;->c:J

    iget-boolean v13, v0, La05;->e:Z

    iget-wide v14, v0, La05;->f:J

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, La05;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    move-object v2, v1

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    iget-object v0, v7, Lh05;->c:La05;

    iput-object v0, v7, Lh05;->d:La05;

    iput-object v2, v7, Lh05;->c:La05;

    iget-object v0, v7, Lly4;->a:Lrx4;

    .line 5
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 6
    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v4

    iget-object v0, v7, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v8

    new-instance v9, Lc05;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, p3

    .line 8
    invoke-direct/range {v0 .. v6}, Lc05;-><init>(Lh05;La05;La05;JZ)V

    .line 9
    invoke-virtual {v8, v9}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(La05;La05;JZLandroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p6

    .line 1
    invoke-virtual/range {p0 .. p0}, Lyv4;->d()V

    const/4 v6, 0x1

    if-eqz p5, :cond_0

    iget-object v7, v0, Lh05;->e:La05;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    iget-object v8, v0, Lh05;->e:La05;

    .line 2
    invoke-virtual {v0, v8, v6, v3, v4}, Lh05;->l(La05;ZJ)V

    :cond_1
    const/4 v8, 0x0

    if-eqz v2, :cond_2

    iget-wide v9, v2, La05;->c:J

    .line 3
    iget-wide v11, v1, La05;->c:J

    cmp-long v13, v9, v11

    if-nez v13, :cond_2

    iget-object v9, v2, La05;->b:Ljava/lang/String;

    iget-object v10, v1, La05;->b:Ljava/lang/String;

    .line 4
    invoke-static {v9, v10}, Lp25;->G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v2, La05;->a:Ljava/lang/String;

    iget-object v10, v1, La05;->a:Ljava/lang/String;

    .line 5
    invoke-static {v9, v10}, Lp25;->G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    :cond_2
    new-instance v9, Landroid/os/Bundle;

    .line 6
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v10, v0, Lly4;->a:Lrx4;

    .line 7
    iget-object v10, v10, Lrx4;->g:Lcs4;

    .line 8
    sget-object v11, Lew4;->u0:Ldw4;

    invoke-virtual {v10, v8, v11}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v5, :cond_3

    new-instance v9, Landroid/os/Bundle;

    .line 9
    invoke-direct {v9, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 10
    :cond_3
    new-instance v9, Landroid/os/Bundle;

    .line 11
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 12
    :cond_4
    :goto_1
    invoke-static {v1, v9, v6}, Lh05;->r(La05;Landroid/os/Bundle;Z)V

    if-eqz v2, :cond_7

    iget-object v5, v2, La05;->a:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v10, "_pn"

    .line 13
    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v5, v2, La05;->b:Ljava/lang/String;

    if-eqz v5, :cond_6

    const-string v10, "_pc"

    .line 14
    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-wide v12, v2, La05;->c:J

    const-string v2, "_pi"

    .line 15
    invoke-virtual {v9, v2, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_7
    const-wide/16 v12, 0x0

    if-eqz v7, :cond_9

    .line 16
    sget-object v2, Lrd4;->f:Lrd4;

    .line 17
    invoke-virtual {v2}, Lrd4;->b()Lsd4;

    move-result-object v2

    invoke-interface {v2}, Lsd4;->a()Z

    .line 18
    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 19
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 20
    sget-object v5, Lew4;->U:Ldw4;

    .line 21
    invoke-virtual {v2, v8, v5}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 22
    invoke-virtual {v2}, Lrx4;->r()Lx15;

    move-result-object v2

    iget-object v2, v2, Lx15;->e:Lu15;

    iget-wide v14, v2, Lu15;->b:J

    sub-long v14, v3, v14

    iput-wide v3, v2, Lu15;->b:J

    goto :goto_2

    .line 23
    :cond_8
    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 24
    invoke-virtual {v2}, Lrx4;->r()Lx15;

    move-result-object v2

    iget-object v2, v2, Lx15;->e:Lu15;

    .line 25
    invoke-virtual {v2}, Lu15;->b()J

    move-result-wide v14

    :goto_2
    cmp-long v2, v14, v12

    if-lez v2, :cond_9

    .line 26
    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 27
    invoke-virtual {v2}, Lrx4;->t()Lp25;

    move-result-object v2

    .line 28
    invoke-virtual {v2, v9, v14, v15}, Lp25;->O(Landroid/os/Bundle;J)V

    :cond_9
    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 29
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 30
    invoke-virtual {v2, v8, v11}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 31
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 32
    invoke-virtual {v2}, Lcs4;->x()Z

    move-result v2

    if-nez v2, :cond_a

    const-wide/16 v2, 0x1

    const-string v4, "_mst"

    .line 33
    invoke-virtual {v9, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 34
    :cond_a
    iget-boolean v2, v1, La05;->e:Z

    if-eq v6, v2, :cond_b

    goto :goto_3

    :cond_b
    const-string v2, "app"

    goto :goto_4

    :cond_c
    :goto_3
    const-string v2, "auto"

    :goto_4
    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 35
    iget-object v3, v3, Lrx4;->g:Lcs4;

    .line 36
    invoke-virtual {v3, v8, v11}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 37
    iget-object v3, v3, Lrx4;->n:Lb20;

    .line 38
    invoke-interface {v3}, Lb20;->a()J

    move-result-wide v3

    .line 39
    iget-boolean v5, v1, La05;->e:Z

    if-eqz v5, :cond_d

    iget-wide v5, v1, La05;->f:J

    cmp-long v7, v5, v12

    if-eqz v7, :cond_d

    move-wide v15, v5

    goto :goto_5

    :cond_d
    move-wide v15, v3

    :goto_5
    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 40
    invoke-virtual {v3}, Lrx4;->s()Lsz4;

    move-result-object v12

    const-string v14, "_vs"

    move-object v13, v2

    move-object/from16 v17, v9

    .line 41
    invoke-virtual/range {v12 .. v17}, Lsz4;->B(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    goto :goto_6

    .line 42
    :cond_e
    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 43
    invoke-virtual {v3}, Lrx4;->s()Lsz4;

    move-result-object v12

    iget-object v3, v12, Lly4;->a:Lrx4;

    .line 44
    invoke-virtual {v12}, Lyv4;->d()V

    iget-object v3, v12, Lly4;->a:Lrx4;

    .line 45
    iget-object v3, v3, Lrx4;->n:Lb20;

    .line 46
    invoke-interface {v3}, Lb20;->a()J

    move-result-wide v15

    const-string v14, "_vs"

    move-object v13, v2

    move-object/from16 v17, v9

    .line 47
    invoke-virtual/range {v12 .. v17}, Lsz4;->B(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 48
    :cond_f
    :goto_6
    iput-object v1, v0, Lh05;->e:La05;

    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 49
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 50
    sget-object v3, Lew4;->u0:Ldw4;

    invoke-virtual {v2, v8, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-boolean v2, v1, La05;->e:Z

    if-eqz v2, :cond_10

    iput-object v1, v0, Lh05;->j:La05;

    :cond_10
    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 51
    invoke-virtual {v2}, Lrx4;->z()Lh15;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lyv4;->d()V

    .line 53
    invoke-virtual {v2}, Lww4;->f()V

    new-instance v3, Lo05;

    .line 54
    invoke-direct {v3, v2, v1}, Lo05;-><init>(Lh15;La05;)V

    invoke-virtual {v2, v3}, Lh15;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l(La05;ZJ)V
    .locals 3

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->c()Lxu4;

    move-result-object v0

    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 2
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 3
    invoke-interface {v1}, Lb20;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lxu4;->h(J)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p1, La05;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v2}, Lrx4;->r()Lx15;

    move-result-object v2

    iget-object v2, v2, Lx15;->e:Lu15;

    .line 5
    invoke-virtual {v2, v1, p2, p3, p4}, Lu15;->a(ZZJ)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iput-boolean v0, p1, La05;->d:Z

    :cond_1
    return-void
.end method

.method public final n(Landroid/app/Activity;)La05;
    .locals 5

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lh05;->f:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La05;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Activity"

    invoke-virtual {p0, v0, v2}, Lh05;->q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, La05;

    iget-object v3, p0, Lly4;->a:Lrx4;

    .line 5
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lp25;->c0()J

    move-result-wide v3

    invoke-direct {v2, v1, v0, v3, v4}, La05;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lh05;->f:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_0
    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 8
    iget-object p1, p1, Lrx4;->g:Lcs4;

    .line 9
    sget-object v2, Lew4;->u0:Ldw4;

    invoke-virtual {p1, v1, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p0, Lh05;->i:La05;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lh05;->i:La05;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final p(Z)La05;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lww4;->f()V

    .line 2
    invoke-virtual {p0}, Lyv4;->d()V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 3
    iget-object v0, v0, Lrx4;->g:Lcs4;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lew4;->u0:Ldw4;

    invoke-virtual {v0, v1, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh05;->e:La05;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lh05;->j:La05;

    return-object p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lh05;->e:La05;

    return-object p1
.end method

.method public final q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Activity"

    return-object p1

    :cond_0
    const-string p2, "\\."

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length p2, p1

    if-lez p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 4
    aget-object p1, p1, p2

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 6
    iget-object v0, v0, Lrx4;->g:Lcs4;

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final s(Ljava/lang/String;La05;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lh05;->m:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lh05;->m:Ljava/lang/String;

    .line 3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final t(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 2
    invoke-virtual {v0}, Lcs4;->x()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "com.google.app_measurement.screen_service"

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance v0, La05;

    const-string v1, "name"

    .line 4
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    .line 5
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 6
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, La05;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Lh05;->f:Ljava/util/Map;

    .line 7
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
