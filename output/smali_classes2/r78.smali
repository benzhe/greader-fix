.class public Lr78;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field public final e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public volatile f:Z

.field public g:J

.field public final h:Landroid/graphics/Rect;

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/graphics/Bitmap;

.field public final k:Lpl/droidsonroids/gif/GifInfoHandle;

.field public final l:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lo78;",
            ">;"
        }
    .end annotation
.end field

.field public m:Landroid/content/res/ColorStateList;

.field public n:Landroid/graphics/PorterDuffColorFilter;

.field public o:Landroid/graphics/PorterDuff$Mode;

.field public final p:Z

.field public final q:Lw78;

.field public final r:Ly78;

.field public final s:Landroid/graphics/Rect;

.field public t:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public u:I

.field public v:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 2
    new-instance v1, Lpl/droidsonroids/gif/GifInfoHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v0, v0, v3}, Lr78;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lr78;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 3
    sget-object v0, Lu78;->a:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 5
    invoke-virtual {p1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 6
    iget p2, v0, Landroid/util/TypedValue;->density:I

    if-nez p2, :cond_0

    const/16 v2, 0xa0

    goto :goto_0

    :cond_0
    const v0, 0xffff

    if-eq p2, v0, :cond_1

    move v2, p2

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lez v2, :cond_2

    if-lez p1, :cond_2

    int-to-float p1, p1

    int-to-float p2, v2

    div-float/2addr p1, p2

    goto :goto_1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    :goto_1
    iget-object p2, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {p2}, Lpl/droidsonroids/gif/GifInfoHandle;->a()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    iput p2, p0, Lr78;->v:I

    .line 9
    iget-object p2, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {p2}, Lpl/droidsonroids/gif/GifInfoHandle;->c()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, Lr78;->u:I

    return-void
.end method

.method public constructor <init>(Lpl/droidsonroids/gif/GifInfoHandle;Lr78;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V
    .locals 2

    .line 10
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p0, Lr78;->f:Z

    const-wide/high16 p2, -0x8000000000000000L

    .line 12
    iput-wide p2, p0, Lr78;->g:J

    .line 13
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lr78;->h:Landroid/graphics/Rect;

    .line 14
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x6

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lr78;->i:Landroid/graphics/Paint;

    .line 15
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lr78;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 16
    new-instance p2, Ly78;

    invoke-direct {p2, p0}, Ly78;-><init>(Lr78;)V

    iput-object p2, p0, Lr78;->r:Ly78;

    .line 17
    iput-boolean p4, p0, Lr78;->p:Z

    .line 18
    sget-object p3, Lt78;->e:Lt78;

    if-nez p3, :cond_1

    .line 19
    const-class p3, Lt78;

    monitor-enter p3

    .line 20
    :try_start_0
    sget-object p4, Lt78;->e:Lt78;

    if-nez p4, :cond_0

    .line 21
    new-instance p4, Lt78;

    invoke-direct {p4}, Lt78;-><init>()V

    sput-object p4, Lt78;->e:Lt78;

    .line 22
    :cond_0
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 23
    :cond_1
    :goto_0
    sget-object p3, Lt78;->e:Lt78;

    .line 24
    iput-object p3, p0, Lr78;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 25
    iput-object p1, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    const/4 p3, 0x0

    .line 26
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->c()I

    move-result p4

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->a()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p0, Lr78;->j:Landroid/graphics/Bitmap;

    .line 27
    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->c()I

    move-result v0

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->a()I

    move-result v1

    invoke-direct {p4, p3, p3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p4, p0, Lr78;->s:Landroid/graphics/Rect;

    .line 28
    new-instance p3, Lw78;

    invoke-direct {p3, p0}, Lw78;-><init>(Lr78;)V

    iput-object p3, p0, Lr78;->q:Lw78;

    .line 29
    invoke-virtual {p2}, Ly78;->a()V

    .line 30
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->c()I

    move-result p2

    iput p2, p0, Lr78;->u:I

    .line 31
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->a()I

    move-result p1

    iput p1, p0, Lr78;->v:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->d()Z

    move-result v0

    return v0
.end method

.method public b(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lr78;->p:Z

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-wide v2, p0, Lr78;->g:J

    .line 3
    iget-object p1, p0, Lr78;->q:Lw78;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lr78;->t:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    .line 5
    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 6
    :cond_1
    iget-object v0, p0, Lr78;->q:Lw78;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object v0, p0, Lr78;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lr78;->r:Ly78;

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lr78;->t:Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    return-void
.end method

.method public final c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 2
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->b()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canSeekForward()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->b()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lr78;->n:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr78;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lr78;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lr78;->n:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lr78;->j:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lr78;->s:Landroid/graphics/Rect;

    iget-object v3, p0, Lr78;->h:Landroid/graphics/Rect;

    iget-object v4, p0, Lr78;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lr78;->i:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5
    :cond_1
    iget-boolean p1, p0, Lr78;->p:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lr78;->f:Z

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lr78;->g:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    const-wide/16 v4, 0x0

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 7
    iput-wide v2, p0, Lr78;->g:J

    .line 8
    iget-object p1, p0, Lr78;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v2, p0, Lr78;->r:Ly78;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 9
    iget-object p1, p0, Lr78;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v2, p0, Lr78;->r:Ly78;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lr78;->t:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr78;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lr78;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 1
    iget-object v0, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, v0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->getCurrentPosition(J)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getDuration()I
    .locals 3

    .line 1
    iget-object v0, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, v0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->getDuration(J)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lr78;->v:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lr78;->u:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr78;->f:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr78;->f:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr78;->m:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr78;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lr78;->m:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lr78;->o:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lr78;->c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lr78;->n:Landroid/graphics/PorterDuffColorFilter;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lr78;->stop()V

    return-void
.end method

.method public seekTo(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lr78;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lr78$a;

    invoke-direct {v1, p0, p0, p1}, Lr78$a;-><init>(Lr78;Lr78;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Position is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr78;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr78;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lr78;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr78;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lr78;->m:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Lr78;->o:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Lr78;->c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lr78;->n:Landroid/graphics/PorterDuffColorFilter;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lr78;->o:Landroid/graphics/PorterDuff$Mode;

    .line 2
    iget-object v0, p0, Lr78;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, Lr78;->c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lr78;->n:Landroid/graphics/PorterDuffColorFilter;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lr78;->p:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lr78;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p2, Lq78;

    invoke-direct {p2, p0, p0}, Lq78;-><init>(Lr78;Lr78;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lr78;->start()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lr78;->stop()V

    :cond_2
    :goto_0
    return v0
.end method

.method public start()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lr78;->f:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lr78;->f:Z

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object v0, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_1
    iget-wide v1, v0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->restoreRemainder(J)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    .line 9
    invoke-virtual {p0, v1, v2}, Lr78;->b(J)V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v0

    .line 11
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public stop()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lr78;->f:Z

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lr78;->f:Z

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object v1, p0, Lr78;->t:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 8
    :cond_1
    iget-object v0, p0, Lr78;->q:Lw78;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object v0, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_1
    iget-wide v1, v0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->saveRemainder(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v0

    .line 13
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "GIF: size: %dx%d, frames: %d, error: %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 2
    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    monitor-enter v3

    .line 4
    :try_start_0
    iget-wide v4, v3, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v4, v5}, Lpl/droidsonroids/gif/GifInfoHandle;->getNativeErrorCode(J)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 6
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit v3

    throw v0
.end method
