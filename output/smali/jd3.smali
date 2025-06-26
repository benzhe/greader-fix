.class public final Ljd3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lgd3;


# direct methods
.method public constructor <init>(Lgd3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljd3;->e:Lgd3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ljd3;->e:Lgd3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v1, v0, Lgd3;->a:Lxb3;

    .line 4
    iget-object v2, v1, Lxb3;->c:Ldalvik/system/DexClassLoader;

    .line 5
    iget-object v1, v1, Lxb3;->e:[B

    .line 6
    iget-object v3, v0, Lgd3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lgd3;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v2, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Lb33; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 8
    iget-object v0, v0, Lgd3;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 9
    :cond_0
    :try_start_1
    iget-object v2, v0, Lgd3;->a:Lxb3;

    .line 10
    iget-object v2, v2, Lxb3;->e:[B

    .line 11
    iget-object v3, v0, Lgd3;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lgd3;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lgd3;->e:[Ljava/lang/Class;

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lgd3;->d:Ljava/lang/reflect/Method;

    .line 13
    iget-object v1, v0, Lgd3;->d:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Lb33; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 14
    iget-object v0, v0, Lgd3;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, v0, Lgd3;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 16
    iget-object v0, v0, Lgd3;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 17
    throw v1

    .line 18
    :catch_0
    iget-object v0, v0, Lgd3;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 19
    :catch_1
    iget-object v0, v0, Lgd3;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 20
    :catch_2
    iget-object v0, v0, Lgd3;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 21
    :catch_3
    iget-object v0, v0, Lgd3;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 22
    :catch_4
    iget-object v0, v0, Lgd3;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void
.end method
