.class public final Llc3;
.super Lid3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V
    .locals 7

    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lid3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    .line 2
    iget-boolean v1, v0, Ls63$b;->g:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 4
    iput-boolean v2, v0, Ls63$b;->g:Z

    .line 5
    :cond_0
    iget-object v0, v0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    const-wide/16 v3, -0x1

    invoke-static {v0, v3, v4}, Lgl1;->Y(Lgl1;J)V

    .line 6
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    .line 7
    iget-boolean v1, v0, Ls63$b;->g:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 9
    iput-boolean v2, v0, Ls63$b;->g:Z

    .line 10
    :cond_1
    iget-object v0, v0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    invoke-static {v0, v3, v4}, Lgl1;->c0(Lgl1;J)V

    .line 11
    iget-object v0, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lid3;->e:Lxb3;

    .line 12
    iget-object v5, v5, Lxb3;->a:Landroid/content/Context;

    aput-object v5, v4, v2

    .line 13
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 14
    iget-object v1, p0, Lid3;->h:Lgl1$b;

    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v4, p0, Lid3;->h:Lgl1$b;

    aget v5, v0, v2

    int-to-long v5, v5

    .line 16
    iget-boolean v7, v4, Ls63$b;->g:Z

    if-eqz v7, :cond_2

    .line 17
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 18
    iput-boolean v2, v4, Ls63$b;->g:Z

    .line 19
    :cond_2
    iget-object v4, v4, Ls63$b;->f:Ls63;

    check-cast v4, Lgl1;

    invoke-static {v4, v5, v6}, Lgl1;->Y(Lgl1;J)V

    .line 20
    iget-object v4, p0, Lid3;->h:Lgl1$b;

    aget v3, v0, v3

    int-to-long v5, v3

    .line 21
    iget-boolean v3, v4, Ls63$b;->g:Z

    if-eqz v3, :cond_3

    .line 22
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 23
    iput-boolean v2, v4, Ls63$b;->g:Z

    .line 24
    :cond_3
    iget-object v3, v4, Ls63$b;->f:Ls63;

    check-cast v3, Lgl1;

    invoke-static {v3, v5, v6}, Lgl1;->c0(Lgl1;J)V

    const/4 v3, 0x2

    .line 25
    aget v4, v0, v3

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_5

    .line 26
    iget-object v4, p0, Lid3;->h:Lgl1$b;

    aget v0, v0, v3

    int-to-long v5, v0

    .line 27
    iget-boolean v0, v4, Ls63$b;->g:Z

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 29
    iput-boolean v2, v4, Ls63$b;->g:Z

    .line 30
    :cond_4
    iget-object v0, v4, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    invoke-static {v0, v5, v6}, Lgl1;->I(Lgl1;J)V

    .line 31
    :cond_5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
