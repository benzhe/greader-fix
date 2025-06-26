.class public final Lyc3;
.super Lid3;
.source "SourceFile"


# instance fields
.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V
    .locals 7

    const/16 v6, 0x1f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lid3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;II)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lyc3;->l:Ljava/util/List;

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

    invoke-static {v0, v3, v4}, Lgl1;->w0(Lgl1;J)V

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

    invoke-static {v0, v3, v4}, Lgl1;->x0(Lgl1;J)V

    .line 11
    iget-object v0, p0, Lyc3;->l:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lid3;->e:Lxb3;

    .line 13
    iget-object v5, v5, Lxb3;->a:Landroid/content/Context;

    aput-object v5, v4, v2

    .line 14
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lyc3;->l:Ljava/util/List;

    .line 15
    :cond_2
    iget-object v0, p0, Lyc3;->l:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 16
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v3, p0, Lid3;->h:Lgl1$b;

    iget-object v4, p0, Lyc3;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 18
    iget-boolean v6, v3, Ls63$b;->g:Z

    if-eqz v6, :cond_3

    .line 19
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 20
    iput-boolean v2, v3, Ls63$b;->g:Z

    .line 21
    :cond_3
    iget-object v3, v3, Ls63$b;->f:Ls63;

    check-cast v3, Lgl1;

    invoke-static {v3, v4, v5}, Lgl1;->w0(Lgl1;J)V

    .line 22
    iget-object v3, p0, Lid3;->h:Lgl1$b;

    iget-object v4, p0, Lyc3;->l:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 23
    iget-boolean v1, v3, Ls63$b;->g:Z

    if-eqz v1, :cond_4

    .line 24
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 25
    iput-boolean v2, v3, Ls63$b;->g:Z

    .line 26
    :cond_4
    iget-object v1, v3, Ls63$b;->f:Ls63;

    check-cast v1, Lgl1;

    invoke-static {v1, v4, v5}, Lgl1;->x0(Lgl1;J)V

    .line 27
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
