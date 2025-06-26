.class public final Lxc3;
.super Lid3;
.source "SourceFile"


# static fields
.field public static volatile l:Ljava/lang/String;

.field public static final m:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lxc3;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V
    .locals 7

    const/4 v6, 0x1

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    const-string v1, "E"

    .line 2
    iget-boolean v2, v0, Ls63$b;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 4
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 5
    :cond_0
    iget-object v0, v0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    invoke-static {v0, v1}, Lgl1;->F(Lgl1;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lxc3;->l:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lxc3;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lxc3;->l:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lxc3;->l:Ljava/lang/String;

    .line 10
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    monitor-enter v0

    .line 12
    :try_start_1
    iget-object v1, p0, Lid3;->h:Lgl1$b;

    sget-object v2, Lxc3;->l:Ljava/lang/String;

    .line 13
    iget-boolean v4, v1, Ls63$b;->g:Z

    if-eqz v4, :cond_3

    .line 14
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 15
    iput-boolean v3, v1, Ls63$b;->g:Z

    .line 16
    :cond_3
    iget-object v1, v1, Ls63$b;->f:Ls63;

    check-cast v1, Lgl1;

    invoke-static {v1, v2}, Lgl1;->F(Lgl1;Ljava/lang/String;)V

    .line 17
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
