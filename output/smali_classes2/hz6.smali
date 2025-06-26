.class public Lhz6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "hz6"

.field public static volatile e:Lhz6;


# instance fields
.field public a:Liz6;

.field public b:Lkz6;

.field public c:Ll07;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ll07;

    invoke-direct {v0}, Ll07;-><init>()V

    iput-object v0, p0, Lhz6;->c:Ll07;

    return-void
.end method

.method public static d(Lgz6;)Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lgz6;->r:Landroid/os/Handler;

    .line 2
    iget-boolean p0, p0, Lgz6;->s:Z

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static j()Lhz6;
    .locals 2

    .line 1
    sget-object v0, Lhz6;->e:Lhz6;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lhz6;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lhz6;->e:Lhz6;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lhz6;

    invoke-direct {v1}, Lhz6;-><init>()V

    sput-object v1, Lhz6;->e:Lhz6;

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
    sget-object v0, Lhz6;->e:Lhz6;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhz6;->b:Lkz6;

    new-instance v1, Lh07;

    invoke-direct {v1, p1}, Lh07;-><init>(Landroid/widget/ImageView;)V

    .line 2
    iget-object p1, v0, Lkz6;->e:Ljava/util/Map;

    invoke-virtual {v1}, Lj07;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lg07;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lhz6;->b:Lkz6;

    .line 2
    iget-object v0, v0, Lkz6;->e:Ljava/util/Map;

    invoke-interface {p1}, Lg07;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lhz6;->a:Liz6;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lhz6;->b:Lkz6;

    .line 2
    iget-object v0, v0, Lkz6;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public f(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6

    .line 1
    new-instance v2, Lh07;

    invoke-direct {v2, p2}, Lh07;-><init>(Landroid/widget/ImageView;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lhz6;->h(Ljava/lang/String;Lg07;Lgz6;Ll07;Lk07;)V

    return-void
.end method

.method public g(Ljava/lang/String;Landroid/widget/ImageView;Lgz6;)V
    .locals 6

    .line 1
    new-instance v2, Lh07;

    invoke-direct {v2, p2}, Lh07;-><init>(Landroid/widget/ImageView;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lhz6;->h(Ljava/lang/String;Lg07;Lgz6;Ll07;Lk07;)V

    return-void
.end method

.method public h(Ljava/lang/String;Lg07;Lgz6;Ll07;Lk07;)V
    .locals 14

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    .line 1
    invoke-virtual {p0}, Lhz6;->c()V

    if-nez p4, :cond_0

    .line 2
    iget-object v1, v0, Lhz6;->c:Ll07;

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    if-nez p3, :cond_1

    .line 3
    iget-object v1, v0, Lhz6;->a:Liz6;

    iget-object v1, v1, Liz6;->m:Lgz6;

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p3

    .line 4
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_6

    .line 5
    iget-object v1, v0, Lhz6;->b:Lkz6;

    .line 6
    iget-object v1, v1, Lkz6;->e:Ljava/util/Map;

    invoke-interface/range {p2 .. p2}, Lg07;->n()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface/range {p2 .. p2}, Lg07;->b()Landroid/view/View;

    .line 8
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, v10, Lgz6;->e:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    iget v8, v10, Lgz6;->b:I

    if-eqz v8, :cond_3

    :cond_2
    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_5

    .line 10
    iget-object v5, v0, Lhz6;->a:Liz6;

    iget-object v5, v5, Liz6;->a:Landroid/content/res/Resources;

    .line 11
    iget v6, v10, Lgz6;->b:I

    if-eqz v6, :cond_4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 12
    :cond_4
    invoke-interface {v3, v1}, Lg07;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_2

    .line 13
    :cond_5
    invoke-interface {v3, v4}, Lg07;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 14
    :goto_2
    invoke-interface/range {p2 .. p2}, Lg07;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, p1, v1, v4}, Ll07;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 15
    :cond_6
    iget-object v1, v0, Lhz6;->a:Liz6;

    .line 16
    iget-object v1, v1, Liz6;->a:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 17
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 19
    sget-object v9, Ln07;->a:Luz6;

    .line 20
    invoke-interface/range {p2 .. p2}, Lg07;->getWidth()I

    move-result v9

    if-gtz v9, :cond_7

    goto :goto_3

    :cond_7
    move v8, v9

    .line 21
    :goto_3
    invoke-interface/range {p2 .. p2}, Lg07;->getHeight()I

    move-result v9

    if-gtz v9, :cond_8

    goto :goto_4

    :cond_8
    move v1, v9

    .line 22
    :goto_4
    new-instance v9, Luz6;

    invoke-direct {v9, v8, v1}, Luz6;-><init>(II)V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v8, v9, Luz6;->a:I

    .line 25
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v8, v9, Luz6;->b:I

    .line 27
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 28
    iget-object v1, v0, Lhz6;->b:Lkz6;

    .line 29
    iget-object v1, v1, Lkz6;->e:Ljava/util/Map;

    invoke-interface/range {p2 .. p2}, Lg07;->n()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-interface/range {p2 .. p2}, Lg07;->b()Landroid/view/View;

    .line 31
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, v0, Lhz6;->a:Liz6;

    iget-object v1, v1, Liz6;->i:Lbz6;

    invoke-interface {v1, v8}, Lbz6;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 33
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_d

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v8, v1, v5

    const-string v4, "Load image from memory cache [%s]"

    .line 34
    invoke-static {v4, v1}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v1, v10, Lgz6;->p:Lm07;

    if-eqz v1, :cond_9

    const/4 v5, 0x1

    :cond_9
    if-eqz v5, :cond_c

    .line 36
    new-instance v12, Llz6;

    iget-object v1, v0, Lhz6;->b:Lkz6;

    .line 37
    iget-object v4, v1, Lkz6;->f:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v4, :cond_a

    .line 38
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 39
    iget-object v1, v1, Lkz6;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object v13, v4

    move-object v1, v12

    move-object v2, p1

    move-object/from16 v3, p2

    move-object v4, v9

    move-object v5, v8

    move-object v6, v10

    move-object/from16 v8, p5

    move-object v9, v13

    .line 40
    invoke-direct/range {v1 .. v9}, Llz6;-><init>(Ljava/lang/String;Lg07;Luz6;Ljava/lang/String;Lgz6;Ll07;Lk07;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 41
    new-instance v1, Lpz6;

    iget-object v2, v0, Lhz6;->b:Lkz6;

    invoke-static {v10}, Lhz6;->d(Lgz6;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v11, v12, v3}, Lpz6;-><init>(Lkz6;Landroid/graphics/Bitmap;Llz6;Landroid/os/Handler;)V

    .line 42
    iget-boolean v2, v10, Lgz6;->s:Z

    if-eqz v2, :cond_b

    .line 43
    invoke-virtual {v1}, Lpz6;->run()V

    goto/16 :goto_6

    .line 44
    :cond_b
    iget-object v2, v0, Lhz6;->b:Lkz6;

    .line 45
    invoke-virtual {v2}, Lkz6;->b()V

    .line 46
    iget-object v2, v2, Lkz6;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 47
    :cond_c
    iget-object v1, v10, Lgz6;->q:Ld07;

    .line 48
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-interface {v3, v11}, Lg07;->e(Landroid/graphics/Bitmap;)Z

    .line 50
    invoke-interface/range {p2 .. p2}, Lg07;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, p1, v1, v11}, Ll07;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 51
    :cond_d
    iget-object v1, v10, Lgz6;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_e

    iget v11, v10, Lgz6;->a:I

    if-eqz v11, :cond_f

    :cond_e
    const/4 v5, 0x1

    :cond_f
    if-eqz v5, :cond_11

    .line 52
    iget-object v4, v0, Lhz6;->a:Liz6;

    iget-object v4, v4, Liz6;->a:Landroid/content/res/Resources;

    .line 53
    iget v5, v10, Lgz6;->a:I

    if-eqz v5, :cond_10

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 54
    :cond_10
    invoke-interface {v3, v1}, Lg07;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_5

    .line 55
    :cond_11
    iget-boolean v1, v10, Lgz6;->g:Z

    if-eqz v1, :cond_12

    .line 56
    invoke-interface {v3, v4}, Lg07;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 57
    :cond_12
    :goto_5
    new-instance v11, Llz6;

    iget-object v1, v0, Lhz6;->b:Lkz6;

    .line 58
    iget-object v4, v1, Lkz6;->f:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v4, :cond_13

    .line 59
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 60
    iget-object v1, v1, Lkz6;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    move-object v12, v4

    move-object v1, v11

    move-object v2, p1

    move-object/from16 v3, p2

    move-object v4, v9

    move-object v5, v8

    move-object v6, v10

    move-object/from16 v8, p5

    move-object v9, v12

    .line 61
    invoke-direct/range {v1 .. v9}, Llz6;-><init>(Ljava/lang/String;Lg07;Luz6;Ljava/lang/String;Lgz6;Ll07;Lk07;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 62
    new-instance v1, Lnz6;

    iget-object v2, v0, Lhz6;->b:Lkz6;

    invoke-static {v10}, Lhz6;->d(Lgz6;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v11, v3}, Lnz6;-><init>(Lkz6;Llz6;Landroid/os/Handler;)V

    .line 63
    iget-boolean v2, v10, Lgz6;->s:Z

    if-eqz v2, :cond_14

    .line 64
    invoke-virtual {v1}, Lnz6;->run()V

    goto :goto_6

    .line 65
    :cond_14
    iget-object v2, v0, Lhz6;->b:Lkz6;

    .line 66
    iget-object v3, v2, Lkz6;->d:Ljava/util/concurrent/Executor;

    new-instance v4, Ljz6;

    invoke-direct {v4, v2, v1}, Ljz6;-><init>(Lkz6;Lnz6;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_6
    return-void
.end method

.method public i()Lty6;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhz6;->c()V

    .line 2
    iget-object v0, p0, Lhz6;->a:Liz6;

    iget-object v0, v0, Liz6;->j:Lty6;

    return-object v0
.end method

.method public declared-synchronized k(Liz6;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lhz6;->a:Liz6;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Initialize ImageLoader with configuration"

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {v0, v1}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lkz6;

    invoke-direct {v0, p1}, Lkz6;-><init>(Liz6;)V

    iput-object v0, p0, Lhz6;->b:Lkz6;

    .line 4
    iput-object p1, p0, Lhz6;->a:Liz6;

    goto :goto_0

    :cond_0
    const-string p1, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    new-array v0, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {p1, v0}, Lp07;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    throw p1
.end method

.method public l(Ljava/lang/String;Luz6;Lgz6;Ll07;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lhz6;->m(Ljava/lang/String;Luz6;Lgz6;Ll07;Lk07;)V

    return-void
.end method

.method public m(Ljava/lang/String;Luz6;Lgz6;Ll07;Lk07;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lhz6;->c()V

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lhz6;->a:Liz6;

    .line 3
    iget-object p2, p2, Liz6;->a:Landroid/content/res/Resources;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 4
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 5
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6
    new-instance v1, Luz6;

    invoke-direct {v1, v0, p2}, Luz6;-><init>(II)V

    move-object p2, v1

    :cond_0
    if-nez p3, :cond_1

    .line 7
    iget-object p3, p0, Lhz6;->a:Liz6;

    iget-object p3, p3, Liz6;->m:Lgz6;

    :cond_1
    move-object v3, p3

    .line 8
    new-instance v2, Li07;

    sget-object p3, Lxz6;->f:Lxz6;

    invoke-direct {v2, p1, p2, p3}, Li07;-><init>(Ljava/lang/String;Luz6;Lxz6;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    .line 9
    invoke-virtual/range {v0 .. v5}, Lhz6;->h(Ljava/lang/String;Lg07;Lgz6;Ll07;Lk07;)V

    return-void
.end method
