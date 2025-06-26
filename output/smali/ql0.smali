.class public Lql0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lzq0;


# direct methods
.method public static a(Landroid/content/Context;)Lzq0;
    .locals 3

    .line 1
    const-class v0, Lql0;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lql0;->a:Lzq0;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->b:Lwr3;

    .line 4
    new-instance v2, Leg0;

    invoke-direct {v2}, Leg0;-><init>()V

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Las3;

    invoke-direct {v1, p0, v2}, Las3;-><init>(Landroid/content/Context;Lhg0;)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, p0, v2}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    .line 8
    check-cast p0, Lzq0;

    .line 9
    sput-object p0, Lql0;->a:Lzq0;

    .line 10
    :cond_0
    sget-object p0, Lql0;->a:Lzq0;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
