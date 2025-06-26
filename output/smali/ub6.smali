.class public final synthetic Lub6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld45;


# instance fields
.field public final a:Lxb6;

.field public final b:Z

.field public final c:Lyb6;


# direct methods
.method public constructor <init>(Lxb6;ZLyb6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lub6;->a:Lxb6;

    iput-boolean p2, p0, Lub6;->b:Z

    iput-object p3, p0, Lub6;->c:Lyb6;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Le45;
    .locals 3

    iget-object v0, p0, Lub6;->a:Lxb6;

    iget-boolean v1, p0, Lub6;->b:Z

    iget-object v2, p0, Lub6;->c:Lyb6;

    check-cast p1, Ljava/lang/Void;

    .line 1
    sget-object p1, Lxb6;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {v2}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    iput-object p1, v0, Lxb6;->c:Le45;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 5
    :cond_0
    :goto_0
    invoke-static {v2}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    return-object p1
.end method
