.class public final Lnc3;
.super Lid3;
.source "SourceFile"


# instance fields
.field public l:J


# direct methods
.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;JI)V
    .locals 7

    const/16 v6, 0x19

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lid3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;II)V

    .line 2
    iput-wide p5, p0, Lnc3;->l:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v4, p0, Lid3;->h:Lgl1$b;

    .line 4
    iget-boolean v5, v4, Ls63$b;->g:Z

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 6
    iput-boolean v1, v4, Ls63$b;->g:Z

    .line 7
    :cond_0
    iget-object v4, v4, Ls63$b;->f:Ls63;

    check-cast v4, Lgl1;

    invoke-static {v4, v2, v3}, Lgl1;->O(Lgl1;J)V

    .line 8
    iget-wide v4, p0, Lnc3;->l:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    .line 9
    iget-object v6, p0, Lid3;->h:Lgl1$b;

    sub-long/2addr v2, v4

    .line 10
    iget-boolean v4, v6, Ls63$b;->g:Z

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v6}, Ls63$b;->o()V

    .line 12
    iput-boolean v1, v6, Ls63$b;->g:Z

    .line 13
    :cond_1
    iget-object v4, v6, Ls63$b;->f:Ls63;

    check-cast v4, Lgl1;

    invoke-static {v4, v2, v3}, Lgl1;->r0(Lgl1;J)V

    .line 14
    iget-object v2, p0, Lid3;->h:Lgl1$b;

    iget-wide v3, p0, Lnc3;->l:J

    .line 15
    iget-boolean v5, v2, Ls63$b;->g:Z

    if-eqz v5, :cond_2

    .line 16
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 17
    iput-boolean v1, v2, Ls63$b;->g:Z

    .line 18
    :cond_2
    iget-object v1, v2, Ls63$b;->f:Ls63;

    check-cast v1, Lgl1;

    invoke-static {v1, v3, v4}, Lgl1;->v0(Lgl1;J)V

    .line 19
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
