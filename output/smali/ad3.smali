.class public final Lad3;
.super Lid3;
.source "SourceFile"


# instance fields
.field public final l:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I[Ljava/lang/StackTraceElement;)V
    .locals 7

    const/16 v6, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lid3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;II)V

    .line 2
    iput-object p6, p0, Lad3;->l:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lad3;->l:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_5

    .line 2
    iget-object v1, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ltb3;

    invoke-direct {v1, v0}, Ltb3;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lid3;->h:Lgl1$b;

    iget-object v3, v1, Ltb3;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 6
    iget-boolean v3, v2, Ls63$b;->g:Z

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 8
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 9
    :cond_0
    iget-object v2, v2, Ls63$b;->f:Ls63;

    check-cast v2, Lgl1;

    invoke-static {v2, v5, v6}, Lgl1;->H0(Lgl1;J)V

    .line 10
    iget-object v2, v1, Ltb3;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, p0, Lid3;->h:Lgl1$b;

    .line 12
    iget-object v1, v1, Ltb3;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    sget-object v1, Lkw1;->f:Lkw1;

    goto :goto_0

    .line 14
    :cond_1
    sget-object v1, Lkw1;->g:Lkw1;

    .line 15
    :goto_0
    iget-boolean v3, v2, Ls63$b;->g:Z

    if-eqz v3, :cond_2

    .line 16
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 17
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 18
    :cond_2
    iget-object v2, v2, Ls63$b;->f:Ls63;

    check-cast v2, Lgl1;

    invoke-static {v2, v1}, Lgl1;->d0(Lgl1;Lkw1;)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object v1, p0, Lid3;->h:Lgl1$b;

    sget-object v2, Lkw1;->h:Lkw1;

    .line 20
    iget-boolean v3, v1, Ls63$b;->g:Z

    if-eqz v3, :cond_4

    .line 21
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 22
    iput-boolean v4, v1, Ls63$b;->g:Z

    .line 23
    :cond_4
    iget-object v1, v1, Ls63$b;->f:Ls63;

    check-cast v1, Lgl1;

    invoke-static {v1, v2}, Lgl1;->d0(Lgl1;Lkw1;)V

    .line 24
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    return-void
.end method
