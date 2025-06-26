.class public final Loc3;
.super Lid3;
.source "SourceFile"


# static fields
.field public static volatile l:Ljava/lang/Long;

.field public static final m:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Loc3;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V
    .locals 7

    const/16 v6, 0x2c

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Loc3;->l:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Loc3;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v2, Loc3;->l:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    sput-object v2, Loc3;->l:Ljava/lang/Long;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    monitor-enter v0

    .line 7
    :try_start_1
    iget-object v2, p0, Lid3;->h:Lgl1$b;

    sget-object v3, Loc3;->l:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 8
    iget-boolean v5, v2, Ls63$b;->g:Z

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 10
    iput-boolean v1, v2, Ls63$b;->g:Z

    .line 11
    :cond_2
    iget-object v1, v2, Ls63$b;->f:Ls63;

    check-cast v1, Lgl1;

    invoke-static {v1, v3, v4}, Lgl1;->G0(Lgl1;J)V

    .line 12
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
