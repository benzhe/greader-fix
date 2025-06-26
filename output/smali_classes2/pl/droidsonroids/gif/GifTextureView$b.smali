.class public Lpl/droidsonroids/gif/GifTextureView$b;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final e:Lp78;

.field public f:Lpl/droidsonroids/gif/GifInfoHandle;

.field public g:Ljava/io/IOException;

.field public h:[J

.field public final i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lpl/droidsonroids/gif/GifTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 1

    const-string v0, "GifRenderThread"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lp78;

    invoke-direct {v0}, Lp78;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Lp78;

    .line 3
    sget-object v0, Lpl/droidsonroids/gif/GifInfoHandle;->b:Lpl/droidsonroids/gif/GifInfoHandle;

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Lp78;

    invoke-virtual {v0}, Lp78;->a()V

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$b;)V

    .line 3
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget-wide v0, p1, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->postUnbindSurface(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p1

    throw v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/droidsonroids/gif/GifTextureView;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    sget-object p3, Lpl/droidsonroids/gif/GifTextureView;->k:[Landroid/widget/ImageView$ScaleType;

    .line 4
    invoke-virtual {p1, p2}, Lpl/droidsonroids/gif/GifTextureView;->c(Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Lp78;

    invoke-virtual {p1}, Lp78;->b()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Lp78;

    invoke-virtual {p1}, Lp78;->a()V

    .line 2
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-wide v0, p1, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->postUnbindSurface(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lpl/droidsonroids/gif/GifTextureView;->g:Lv78;

    .line 3
    invoke-virtual {v0}, Lv78;->a()Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->e()V

    return-void

    .line 6
    :cond_1
    invoke-static {v0, p0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$b;)V

    .line 7
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    .line 8
    iget-object v2, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Lp78;

    .line 9
    monitor-enter v2

    if-eqz v1, :cond_2

    .line 10
    :try_start_1
    invoke-virtual {v2}, Lp78;->b()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v2}, Lp78;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 12
    :goto_0
    monitor-exit v2

    if-eqz v1, :cond_3

    .line 13
    new-instance v1, Lpl/droidsonroids/gif/GifTextureView$b$a;

    invoke-direct {v1, p0, v0}, Lpl/droidsonroids/gif/GifTextureView$b$a;-><init>(Lpl/droidsonroids/gif/GifTextureView$b;Lpl/droidsonroids/gif/GifTextureView;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    .line 14
    :cond_3
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 15
    iget v2, v0, Lpl/droidsonroids/gif/GifTextureView;->j:F

    .line 16
    invoke-virtual {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->f(F)V

    .line 17
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_6

    .line 18
    :try_start_2
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Lp78;

    .line 19
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 20
    :goto_2
    :try_start_3
    iget-boolean v2, v1, Lp78;->a:Z

    if-nez v2, :cond_4

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 22
    :cond_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 23
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 24
    :cond_5
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 25
    :try_start_5
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v3, p0, Lpl/droidsonroids/gif/GifTextureView$b;->h:[J

    invoke-virtual {v0}, Landroid/view/TextureView;->isOpaque()Z

    move-result v4

    .line 26
    iget-wide v5, v1, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v5, v6, v2, v3, v4}, Lpl/droidsonroids/gif/GifInfoHandle;->bindSurface(JLandroid/view/Surface;[JZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 27
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    throw v0

    :catchall_1
    move-exception v0

    .line 28
    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 29
    :catch_0
    :cond_6
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->e()V

    .line 30
    sget-object v0, Lpl/droidsonroids/gif/GifInfoHandle;->b:Lpl/droidsonroids/gif/GifInfoHandle;

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    return-void

    :catchall_2
    move-exception v0

    .line 31
    monitor-exit v2

    throw v0

    :catch_1
    move-exception v0

    .line 32
    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->g:Ljava/io/IOException;

    return-void
.end method
