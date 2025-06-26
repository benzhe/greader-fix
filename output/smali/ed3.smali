.class public final Led3;
.super Lid3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V
    .locals 7

    const/16 v6, 0x30

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    sget-object v1, Lkw1;->h:Lkw1;

    invoke-virtual {v0, v1}, Lgl1$b;->s(Lkw1;)Lgl1$b;

    .line 2
    iget-object v0, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lid3;->e:Lxb3;

    .line 3
    iget-object v2, v2, Lxb3;->a:Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 5
    iget-object v1, p0, Lid3;->h:Lgl1$b;

    monitor-enter v1

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    sget-object v2, Lkw1;->g:Lkw1;

    invoke-virtual {v0, v2}, Lgl1$b;->s(Lkw1;)Lgl1$b;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    sget-object v2, Lkw1;->f:Lkw1;

    invoke-virtual {v0, v2}, Lgl1$b;->s(Lkw1;)Lgl1$b;

    .line 8
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
