.class public final synthetic Lz81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:La91;


# direct methods
.method public constructor <init>(La91;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz81;->e:La91;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lz81;->e:La91;

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, v0, La91;->i:Liw2;

    invoke-virtual {v1}, Lsu2;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, La91;->i:Liw2;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Liw2;->h(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
