.class public Lxy6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lty6;


# static fields
.field public static final e:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field public a:Lwy6;

.field public b:Ljava/io/File;

.field public final c:Laz6;

.field public d:Landroid/graphics/Bitmap$CompressFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lxy6;->e:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Laz6;JI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lxy6;->e:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lxy6;->d:Landroid/graphics/Bitmap$CompressFormat;

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_4

    if-ltz p6, :cond_3

    if-eqz p3, :cond_2

    if-nez v2, :cond_0

    const-wide p4, 0x7fffffffffffffffL

    :cond_0
    move-wide v3, p4

    if-nez p6, :cond_1

    const p6, 0x7fffffff

    const v5, 0x7fffffff

    goto :goto_0

    :cond_1
    move v5, p6

    .line 3
    :goto_0
    iput-object p2, p0, Lxy6;->b:Ljava/io/File;

    .line 4
    iput-object p3, p0, Lxy6;->c:Laz6;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 5
    invoke-virtual/range {v0 .. v5}, Lxy6;->c(Ljava/io/File;Ljava/io/File;JI)V

    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fileNameGenerator argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxFileCount argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxSize argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lxy6;->a:Lwy6;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v2, p0, Lxy6;->c:Laz6;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v1, p1}, Lwy6;->f(Ljava/lang/String;)Lwy6$e;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :try_start_3
    iget-object v2, p1, Lwy6$e;->e:[Ljava/io/File;

    aget-object v0, v2, v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lwy6$e;->close()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :goto_1
    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_4

    :catch_2
    move-exception v1

    :goto_2
    move-object p1, v0

    .line 8
    :goto_3
    :try_start_4
    invoke-static {v1}, Lp07;->c(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lwy6$e;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lwy6$e;->close()V

    :cond_3
    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/io/InputStream;Lo07;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxy6;->a:Lwy6;

    .line 2
    iget-object v1, p0, Lxy6;->c:Laz6;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lwy6;->e(Ljava/lang/String;)Lwy6$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 6
    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1, v0}, Lwy6$c;->c(I)Ljava/io/OutputStream;

    move-result-object v0

    const v2, 0x8000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 7
    :try_start_0
    invoke-static {p2, v1, p3, v2}, Ln56;->E(Ljava/io/InputStream;Ljava/io/OutputStream;Lo07;I)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1}, Lwy6$c;->b()V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Lwy6$c;->a()V

    :goto_1
    return p2

    :catchall_0
    move-exception p2

    .line 11
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 12
    :catch_1
    invoke-virtual {p1}, Lwy6$c;->a()V

    throw p2
.end method

.method public final c(Ljava/io/File;Ljava/io/File;JI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p1

    move-wide v3, p3

    move v5, p5

    .line 1
    :try_start_0
    invoke-static/range {v0 .. v5}, Lwy6;->i(Ljava/io/File;IIJI)Lwy6;

    move-result-object p1

    iput-object p1, p0, Lxy6;->a:Lwy6;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lp07;->c(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v3, p3

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lxy6;->c(Ljava/io/File;Ljava/io/File;JI)V

    .line 4
    :cond_0
    iget-object p2, p0, Lxy6;->a:Lwy6;

    if-eqz p2, :cond_1

    :goto_0
    return-void

    .line 5
    :cond_1
    throw p1
.end method

.method public clear()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lxy6;->a:Lwy6;

    .line 2
    invoke-virtual {v0}, Lwy6;->close()V

    .line 3
    iget-object v0, v0, Lwy6;->e:Ljava/io/File;

    invoke-static {v0}, Lzy6;->b(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lp07;->c(Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    :try_start_1
    iget-object v0, p0, Lxy6;->a:Lwy6;

    .line 6
    iget-object v2, v0, Lwy6;->e:Ljava/io/File;

    .line 7
    iget-object v3, p0, Lxy6;->b:Ljava/io/File;

    .line 8
    monitor-enter v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    :try_start_2
    iget-wide v4, v0, Lwy6;->j:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0

    .line 10
    iget-object v0, p0, Lxy6;->a:Lwy6;

    .line 11
    monitor-enter v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 12
    :try_start_4
    iget v6, v0, Lwy6;->k:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0

    move-object v1, p0

    .line 13
    invoke-virtual/range {v1 .. v6}, Lxy6;->c(Ljava/io/File;Ljava/io/File;JI)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 15
    monitor-exit v0

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    .line 16
    invoke-static {v0}, Lp07;->c(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
