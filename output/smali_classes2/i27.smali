.class public Li27;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Le27;

.field public final b:Lh27$b;

.field public c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Li27;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Le27;Landroid/net/Uri;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li27;->a:Le27;

    .line 3
    new-instance v0, Lh27$b;

    iget-object p1, p1, Le27;->l:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, p1}, Lh27$b;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Li27;->b:Lh27$b;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget v0, p0, Li27;->c:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Li27;->a:Le27;

    iget-object v1, v1, Le27;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/widget/ImageView;Lp17;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2
    invoke-static {}, Lp27;->a()V

    if-eqz v3, :cond_10

    .line 3
    iget-object v4, v0, Li27;->b:Lh27$b;

    .line 4
    iget-object v5, v4, Lh27$b;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    if-nez v5, :cond_1

    iget v4, v4, Lh27$b;->b:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_2

    .line 5
    iget-object v1, v0, Li27;->a:Le27;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v3}, Le27;->a(Ljava/lang/Object;)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Li27;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lf27;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 9
    :cond_2
    sget-object v4, Li27;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    .line 10
    iget-object v5, v0, Li27;->b:Lh27$b;

    .line 11
    iget-object v7, v5, Lh27$b;->f:Le27$e;

    if-nez v7, :cond_3

    .line 12
    sget-object v7, Le27$e;->f:Le27$e;

    iput-object v7, v5, Lh27$b;->f:Le27$e;

    .line 13
    :cond_3
    new-instance v7, Lh27;

    move-object v8, v7

    iget-object v9, v5, Lh27$b;->a:Landroid/net/Uri;

    iget v10, v5, Lh27$b;->b:I

    const/4 v12, 0x0

    iget v13, v5, Lh27$b;->c:I

    iget v14, v5, Lh27$b;->d:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v11, v5, Lh27$b;->e:Landroid/graphics/Bitmap$Config;

    move-object/from16 v24, v11

    iget-object v5, v5, Lh27$b;->f:Le27$e;

    move-object/from16 v25, v5

    const/16 v26, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v26}, Lh27;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZIZFFFZZLandroid/graphics/Bitmap$Config;Le27$e;Lh27$a;)V

    .line 14
    iput v4, v7, Lh27;->a:I

    .line 15
    iput-wide v1, v7, Lh27;->b:J

    .line 16
    iget-object v5, v0, Li27;->a:Le27;

    iget-boolean v5, v5, Le27;->n:Z

    const-string v8, "Main"

    if-eqz v5, :cond_4

    .line 17
    invoke-virtual {v7}, Lh27;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lh27;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "created"

    invoke-static {v8, v11, v9, v10}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_4
    iget-object v9, v0, Li27;->a:Le27;

    .line 19
    iget-object v9, v9, Le27;->b:Le27$f;

    check-cast v9, Le27$f$a;

    .line 20
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v7, v7, :cond_5

    .line 21
    iput v4, v7, Lh27;->a:I

    .line 22
    iput-wide v1, v7, Lh27;->b:J

    if-eqz v5, :cond_5

    .line 23
    invoke-virtual {v7}, Lh27;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "into "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "changed"

    invoke-static {v8, v4, v1, v2}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_5
    sget-object v1, Lp27;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    .line 25
    iget-object v4, v7, Lh27;->c:Landroid/net/Uri;

    if-eqz v4, :cond_6

    .line 26
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 29
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 30
    iget v2, v7, Lh27;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v2, 0xa

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    iget v4, v7, Lh27;->l:F

    const/4 v5, 0x0

    const/16 v9, 0x78

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_8

    const-string v4, "rotation:"

    .line 33
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lh27;->l:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    iget-boolean v4, v7, Lh27;->o:Z

    if-eqz v4, :cond_7

    const/16 v4, 0x40

    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v7, Lh27;->m:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v7, Lh27;->n:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    :cond_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    :cond_8
    invoke-virtual {v7}, Lh27;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "resize:"

    .line 38
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lh27;->f:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v7, Lh27;->g:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    :cond_9
    iget-boolean v4, v7, Lh27;->h:Z

    if-eqz v4, :cond_a

    const-string v4, "centerCrop:"

    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lh27;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 42
    :cond_a
    iget-boolean v4, v7, Lh27;->j:Z

    if-eqz v4, :cond_b

    const-string v4, "centerInside"

    .line 43
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    :cond_b
    :goto_3
    iget-object v4, v7, Lh27;->e:Ljava/util/List;

    if-eqz v4, :cond_c

    .line 45
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_c

    .line 46
    iget-object v9, v7, Lh27;->e:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln27;

    invoke-interface {v9}, Ln27;->key()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 48
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 49
    sget-object v1, Lp27;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 50
    invoke-static {v6}, Lb27;->i(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 51
    iget-object v1, v0, Li27;->a:Le27;

    invoke-virtual {v1, v9}, Le27;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 52
    iget-object v1, v0, Li27;->a:Le27;

    .line 53
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v1, v3}, Le27;->a(Ljava/lang/Object;)V

    .line 55
    iget-object v1, v0, Li27;->a:Le27;

    iget-object v2, v1, Le27;->e:Landroid/content/Context;

    sget-object v9, Le27$d;->f:Le27$d;

    const/4 v5, 0x0

    iget-boolean v6, v1, Le27;->m:Z

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v9

    invoke-static/range {v1 .. v6}, Lf27;->b(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Le27$d;ZZ)V

    .line 56
    iget-object v1, v0, Li27;->a:Le27;

    iget-boolean v1, v1, Le27;->n:Z

    if-eqz v1, :cond_d

    .line 57
    invoke-virtual {v7}, Lh27;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "completed"

    invoke-static {v8, v3, v1, v2}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz p2, :cond_e

    .line 58
    move-object/from16 v1, p2

    check-cast v1, Loz5;

    invoke-virtual {v1}, Loz5;->a()V

    :cond_e
    return-void

    .line 59
    :cond_f
    invoke-virtual/range {p0 .. p0}, Li27;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lf27;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 60
    new-instance v13, Lw17;

    iget-object v2, v0, Li27;->a:Le27;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Li27;->d:Ljava/lang/Object;

    const/4 v12, 0x0

    move-object v1, v13

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v11

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v12}, Lw17;-><init>(Le27;Landroid/widget/ImageView;Lh27;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lp17;Z)V

    .line 61
    iget-object v1, v0, Li27;->a:Le27;

    invoke-virtual {v1, v13}, Le27;->c(Ll17;)V

    return-void

    .line 62
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
