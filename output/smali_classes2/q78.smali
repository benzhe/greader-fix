.class public Lq78;
.super Lz78;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lr78;


# direct methods
.method public constructor <init>(Lr78;Lr78;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq78;->f:Lr78;

    invoke-direct {p0, p2}, Lz78;-><init>(Lr78;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq78;->f:Lr78;

    iget-object v0, v0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, v0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->reset(J)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lq78;->f:Lr78;

    invoke-virtual {v0}, Lr78;->start()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0

    throw v1
.end method
