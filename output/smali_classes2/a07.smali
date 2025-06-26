.class public La07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb07;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La07$b;,
        La07$a;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, La07;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lc07;)Landroid/graphics/Bitmap;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v0, Lc07;->f:Lf07;

    .line 2
    iget-object v3, v0, Lc07;->b:Ljava/lang/String;

    .line 3
    iget-object v4, v0, Lc07;->g:Ljava/lang/Object;

    .line 4
    invoke-interface {v2, v3, v4}, Lf07;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_0

    new-array v2, v3, [Ljava/lang/Object;

    .line 5
    iget-object v0, v0, Lc07;->a:Ljava/lang/String;

    aput-object v0, v2, v4

    const-string v0, "No stream for image [%s]"

    .line 6
    invoke-static {v0, v2}, Lp07;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v1, v2, v0}, La07;->b(Ljava/io/InputStream;Lc07;)La07$b;

    move-result-object v6

    .line 8
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 9
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :catch_0
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :catch_1
    :try_start_3
    iget-object v7, v0, Lc07;->f:Lf07;

    .line 12
    iget-object v8, v0, Lc07;->b:Ljava/lang/String;

    .line 13
    iget-object v9, v0, Lc07;->g:Ljava/lang/Object;

    .line 14
    invoke-interface {v7, v8, v9}, Lf07;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v2

    .line 15
    :goto_0
    iget-object v7, v6, La07$b;->a:Luz6;

    invoke-virtual {v1, v7, v0}, La07;->c(Luz6;Lc07;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 16
    invoke-static {v2, v5, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    .line 17
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    nop

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    new-array v2, v3, [Ljava/lang/Object;

    .line 18
    iget-object v0, v0, Lc07;->a:Ljava/lang/String;

    aput-object v0, v2, v4

    const-string v0, "Image can\'t be decoded [%s]"

    .line 19
    invoke-static {v0, v2}, Lp07;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 20
    :cond_3
    iget-object v2, v6, La07$b;->b:La07$a;

    iget v6, v2, La07$a;->a:I

    iget-boolean v2, v2, La07$a;->b:Z

    .line 21
    sget-object v7, Ltz6;->j:Ltz6;

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 22
    iget-object v8, v0, Lc07;->d:Ltz6;

    .line 23
    sget-object v9, Ltz6;->i:Ltz6;

    if-eq v8, v9, :cond_4

    if-ne v8, v7, :cond_c

    .line 24
    :cond_4
    new-instance v9, Luz6;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v9, v12, v14, v6}, Luz6;-><init>(III)V

    .line 25
    iget-object v12, v0, Lc07;->c:Luz6;

    .line 26
    iget-object v14, v0, Lc07;->e:Lxz6;

    if-ne v8, v7, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    .line 27
    :goto_2
    sget-object v8, Ln07;->a:Luz6;

    .line 28
    iget v8, v9, Luz6;->a:I

    .line 29
    iget v15, v9, Luz6;->b:I

    .line 30
    iget v10, v12, Luz6;->a:I

    .line 31
    iget v12, v12, Luz6;->b:I

    int-to-float v3, v8

    int-to-float v4, v10

    div-float v4, v3, v4

    int-to-float v11, v15

    move/from16 v16, v10

    int-to-float v10, v12

    div-float v10, v11, v10

    move/from16 v17, v12

    .line 32
    sget-object v12, Lxz6;->e:Lxz6;

    if-ne v14, v12, :cond_6

    cmpl-float v12, v4, v10

    if-gez v12, :cond_7

    :cond_6
    sget-object v12, Lxz6;->f:Lxz6;

    if-ne v14, v12, :cond_8

    cmpg-float v12, v4, v10

    if-gez v12, :cond_8

    :cond_7
    div-float/2addr v11, v4

    float-to-int v12, v11

    move/from16 v10, v16

    goto :goto_3

    :cond_8
    div-float v4, v3, v10

    float-to-int v10, v4

    move/from16 v12, v17

    :goto_3
    if-nez v7, :cond_9

    if-ge v10, v8, :cond_9

    if-lt v12, v15, :cond_a

    :cond_9
    if-eqz v7, :cond_b

    if-eq v10, v8, :cond_b

    if-eq v12, v15, :cond_b

    :cond_a
    int-to-float v4, v10

    div-float v3, v4, v3

    goto :goto_4

    :cond_b
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_4
    const/high16 v4, 0x3f800000    # 1.0f

    .line 33
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_c

    .line 34
    invoke-virtual {v13, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 35
    iget-boolean v4, v1, La07;->a:Z

    if-eqz v4, :cond_c

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v9, v4, v7

    .line 36
    new-instance v7, Luz6;

    iget v8, v9, Luz6;->a:I

    int-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    iget v9, v9, Luz6;->b:I

    int-to-float v9, v9

    mul-float v9, v9, v3

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Luz6;-><init>(II)V

    const/4 v8, 0x1

    aput-object v7, v4, v8

    .line 37
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v4, v7

    const/4 v3, 0x3

    .line 38
    iget-object v7, v0, Lc07;->a:Ljava/lang/String;

    aput-object v7, v4, v3

    const-string v3, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    .line 39
    invoke-static {v3, v4}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-eqz v2, :cond_d

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 40
    invoke-virtual {v13, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 41
    iget-boolean v2, v1, La07;->a:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 42
    iget-object v2, v0, Lc07;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "Flip image horizontally [%s]"

    .line 43
    invoke-static {v2, v3}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    if-eqz v6, :cond_e

    int-to-float v2, v6

    .line 44
    invoke-virtual {v13, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 45
    iget-boolean v2, v1, La07;->a:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 46
    iget-object v0, v0, Lc07;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Rotate image on %1$d\u00b0 [%2$s]"

    .line 47
    invoke-static {v0, v2}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 48
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x1

    move-object v8, v5

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v5, :cond_f

    .line 49
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    move-object v5, v0

    :goto_5
    return-object v5

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_10

    .line 50
    :try_start_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 51
    :catch_3
    :cond_10
    throw v0
.end method

.method public b(Ljava/io/InputStream;Lc07;)La07$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget-object p1, p2, Lc07;->b:Ljava/lang/String;

    .line 5
    iget-boolean p2, p2, Lc07;->h:Z

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v2, "image/jpeg"

    .line 7
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lf07$a;->k(Ljava/lang/String;)Lf07$a;

    move-result-object p2

    sget-object v3, Lf07$a;->i:Lf07$a;

    if-ne p2, v3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 8
    :try_start_0
    new-instance p2, Landroid/media/ExifInterface;

    sget-object v3, Lf07$a;->i:Lf07$a;

    invoke-virtual {v3, p1}, Lf07$a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    .line 9
    invoke-virtual {p2, v3, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x0

    :pswitch_2
    const/16 v2, 0x5a

    goto :goto_3

    :goto_1
    :pswitch_3
    const/16 v2, 0x10e

    goto :goto_3

    :pswitch_4
    const/4 v1, 0x0

    :pswitch_5
    const/16 v2, 0xb4

    goto :goto_3

    :catch_0
    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Can\'t read EXIF tags from file [%s]"

    .line 10
    invoke-static {p1, p2}, Lp07;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const/4 v1, 0x0

    .line 11
    :goto_3
    :pswitch_6
    new-instance p1, La07$a;

    invoke-direct {p1, v2, v1}, La07$a;-><init>(IZ)V

    goto :goto_4

    .line 12
    :cond_1
    new-instance p1, La07$a;

    invoke-direct {p1}, La07$a;-><init>()V

    .line 13
    :goto_4
    new-instance p2, La07$b;

    new-instance v1, Luz6;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, p1, La07$a;->a:I

    invoke-direct {v1, v2, v0, v3}, Luz6;-><init>(III)V

    invoke-direct {p2, v1, p1}, La07$b;-><init>(Luz6;La07$a;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public c(Luz6;Lc07;)Landroid/graphics/BitmapFactory$Options;
    .locals 11

    .line 1
    iget-object v0, p2, Lc07;->d:Ltz6;

    .line 2
    sget-object v1, Ltz6;->e:Ltz6;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_5

    .line 3
    :cond_0
    sget-object v1, Ltz6;->f:Ltz6;

    if-ne v0, v1, :cond_1

    .line 4
    sget-object v0, Ln07;->a:Luz6;

    .line 5
    iget v0, p1, Luz6;->a:I

    .line 6
    iget v1, p1, Luz6;->b:I

    .line 7
    sget-object v4, Ln07;->a:Luz6;

    .line 8
    iget v5, v4, Luz6;->a:I

    .line 9
    iget v4, v4, Luz6;->b:I

    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    float-to-double v5, v0

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    int-to-float v1, v1

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_5

    .line 13
    :cond_1
    iget-object v1, p2, Lc07;->c:Luz6;

    .line 14
    sget-object v4, Ltz6;->g:Ltz6;

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v4, p2, Lc07;->e:Lxz6;

    .line 16
    sget-object v5, Ln07;->a:Luz6;

    .line 17
    iget v5, p1, Luz6;->a:I

    .line 18
    iget v6, p1, Luz6;->b:I

    .line 19
    iget v7, v1, Luz6;->a:I

    .line 20
    iget v1, v1, Luz6;->b:I

    .line 21
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v3, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    .line 22
    div-int/lit8 v4, v5, 0x2

    .line 23
    div-int/lit8 v8, v6, 0x2

    const/4 v9, 0x1

    .line 24
    :goto_1
    div-int v10, v4, v9

    if-le v10, v7, :cond_8

    div-int v10, v8, v9

    if-le v10, v1, :cond_8

    mul-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 25
    :cond_4
    div-int v4, v5, v7

    div-int v1, v6, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_7

    .line 26
    div-int/lit8 v4, v5, 0x2

    .line 27
    div-int/lit8 v8, v6, 0x2

    const/4 v9, 0x1

    .line 28
    :goto_2
    div-int v10, v4, v9

    if-gt v10, v7, :cond_6

    div-int v10, v8, v9

    if-le v10, v1, :cond_8

    :cond_6
    mul-int/lit8 v9, v9, 0x2

    goto :goto_2

    .line 29
    :cond_7
    div-int v4, v5, v7

    div-int v1, v6, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_8
    :goto_3
    if-ge v9, v3, :cond_9

    const/4 v9, 0x1

    .line 30
    :cond_9
    sget-object v1, Ln07;->a:Luz6;

    .line 31
    iget v4, v1, Luz6;->a:I

    .line 32
    iget v1, v1, Luz6;->b:I

    .line 33
    :goto_4
    div-int v7, v5, v9

    if-gt v7, v4, :cond_c

    div-int v7, v6, v9

    if-le v7, v1, :cond_a

    goto :goto_6

    :cond_a
    move v0, v9

    :goto_5
    if-le v0, v3, :cond_b

    .line 34
    iget-boolean v1, p0, La07;->a:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 35
    new-instance v2, Luz6;

    iget v4, p1, Luz6;->a:I

    div-int/2addr v4, v0

    iget p1, p1, Luz6;->b:I

    div-int/2addr p1, v0

    invoke-direct {v2, v4, p1}, Luz6;-><init>(II)V

    aput-object v2, v1, v3

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 p1, 0x3

    .line 37
    iget-object v2, p2, Lc07;->a:Ljava/lang/String;

    aput-object v2, v1, p1

    const-string p1, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    .line 38
    invoke-static {p1, v1}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_b
    iget-object p1, p2, Lc07;->i:Landroid/graphics/BitmapFactory$Options;

    .line 40
    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-object p1

    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    mul-int/lit8 v9, v9, 0x2

    goto :goto_4

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4
.end method
