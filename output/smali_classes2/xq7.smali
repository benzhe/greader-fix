.class public final Lxq7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "tk7"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Ln56;->K(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    :goto_0
    invoke-static {v0}, Lsj7;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    :goto_1
    check-cast v0, Ljava/lang/String;

    sput-object v0, Lxq7;->a:Ljava/lang/String;

    :try_start_1
    const-string v0, "xq7"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 5
    invoke-static {v0}, Ln56;->K(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    :goto_2
    invoke-static {v0}, Lsj7;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "kotlinx.coroutines.internal.StackTraceRecoveryKt"

    :goto_3
    check-cast v0, Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;Lwk7;)Ljava/lang/Throwable;
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u0008\u0008\u0008"

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v6}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 4
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 5
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4, v2, v1}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 6
    new-instance v6, Lrj7;

    invoke-direct {v6, v0, v5}, Lrj7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    new-array v0, v2, [Ljava/lang/StackTraceElement;

    .line 7
    new-instance v5, Lrj7;

    invoke-direct {v5, p0, v0}, Lrj7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-array v0, v2, [Ljava/lang/StackTraceElement;

    .line 8
    new-instance v5, Lrj7;

    invoke-direct {v5, p0, v0}, Lrj7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    move-object v6, v5

    .line 9
    :goto_3
    iget-object v0, v6, Lrj7;->e:Ljava/lang/Object;

    .line 10
    check-cast v0, Ljava/lang/Throwable;

    .line 11
    iget-object v5, v6, Lrj7;->f:Ljava/lang/Object;

    .line 12
    check-cast v5, [Ljava/lang/StackTraceElement;

    .line 13
    sget v6, Lpq7;->a:I

    .line 14
    instance-of v6, v0, Lzo7;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    .line 15
    :try_start_0
    move-object v6, v0

    check-cast v6, Lzo7;

    invoke-interface {v6}, Lzo7;->a()Ljava/lang/Throwable;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v6

    invoke-static {v6}, Ln56;->K(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    .line 16
    :goto_4
    instance-of v8, v6, Lsj7$a;

    if-eqz v8, :cond_4

    goto :goto_5

    :cond_4
    move-object v7, v6

    .line 17
    :goto_5
    check-cast v7, Ljava/lang/Throwable;

    goto/16 :goto_13

    .line 18
    :cond_5
    sget-object v6, Lpq7;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_1
    sget-object v9, Lpq7;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl7;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v9, :cond_6

    .line 19
    invoke-interface {v9, v0}, Lpl7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;

    goto/16 :goto_13

    .line 20
    :cond_6
    sget v8, Lpq7;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9, v2}, Lpq7;->a(Ljava/lang/Class;I)I

    move-result v9

    if-eq v8, v9, :cond_b

    .line 21
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v9

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    :goto_6
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v9, :cond_8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_2
    sget-object v10, Lpq7;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Li;->f:Li;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v9, :cond_9

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_9
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_13

    :catchall_1
    move-exception p0

    :goto_9
    if-ge v2, v9, :cond_a

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    .line 22
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 23
    new-instance v8, Loq7;

    invoke-direct {v8}, Loq7;-><init>()V

    const-string v9, "$this$sortedWith"

    .line 24
    invoke-static {v6, v9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "comparator"

    invoke-static {v8, v9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$this$sortedArrayWith"

    .line 25
    invoke-static {v6, v10}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    array-length v10, v6

    if-nez v10, :cond_c

    const/4 v10, 0x1

    goto :goto_a

    :cond_c
    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_d

    goto :goto_b

    .line 27
    :cond_d
    array-length v10, v6

    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v10, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v6, v10}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$this$sortWith"

    .line 28
    invoke-static {v6, v10}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    array-length v9, v6

    if-le v9, v3, :cond_e

    invoke-static {v6, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 30
    :cond_e
    :goto_b
    invoke-static {v6}, Lek7;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 31
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v8, v7

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Constructor;

    .line 32
    const-class v9, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 33
    array-length v11, v10

    if-eqz v11, :cond_14

    if-eq v11, v3, :cond_11

    if-eq v11, v1, :cond_10

    goto :goto_c

    .line 34
    :cond_10
    aget-object v11, v10, v2

    invoke-static {v11, v9}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    aget-object v9, v10, v3

    const-class v10, Ljava/lang/Throwable;

    invoke-static {v9, v10}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 35
    new-instance v9, Lg;

    invoke-direct {v9, v2, v8}, Lg;-><init>(ILjava/lang/Object;)V

    goto :goto_d

    .line 36
    :cond_11
    aget-object v10, v10, v2

    .line 37
    const-class v11, Ljava/lang/Throwable;

    invoke-static {v10, v11}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 38
    new-instance v9, Lg;

    invoke-direct {v9, v3, v8}, Lg;-><init>(ILjava/lang/Object;)V

    goto :goto_d

    .line 39
    :cond_12
    invoke-static {v10, v9}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 40
    new-instance v9, Lg;

    invoke-direct {v9, v1, v8}, Lg;-><init>(ILjava/lang/Object;)V

    goto :goto_d

    :cond_13
    :goto_c
    move-object v8, v7

    goto :goto_e

    .line 41
    :cond_14
    new-instance v9, Lg;

    const/4 v10, 0x3

    invoke-direct {v9, v10, v8}, Lg;-><init>(ILjava/lang/Object;)V

    :goto_d
    move-object v8, v9

    :goto_e
    if-eqz v8, :cond_f

    .line 42
    :cond_15
    sget-object v6, Lpq7;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v10

    if-nez v10, :cond_16

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v10

    goto :goto_f

    :cond_16
    const/4 v10, 0x0

    :goto_f
    const/4 v11, 0x0

    :goto_10
    if-ge v11, v10, :cond_17

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_17
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_3
    sget-object v11, Lpq7;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    if-eqz v8, :cond_18

    move-object v13, v8

    goto :goto_11

    :cond_18
    sget-object v13, Li;->g:Li;

    :goto_11
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v10, :cond_19

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_19
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    if-eqz v8, :cond_1a

    .line 43
    invoke-virtual {v8, v0}, Lg;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;

    :cond_1a
    :goto_13
    if-eqz v7, :cond_29

    .line 44
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_1b

    goto/16 :goto_1e

    .line 45
    :cond_1b
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    .line 46
    invoke-interface {p1}, Lwk7;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v8

    if-eqz v8, :cond_1c

    invoke-virtual {v6, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_1c
    :goto_14
    invoke-interface {p1}, Lwk7;->getCallerFrame()Lwk7;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 48
    invoke-interface {p1}, Lwk7;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v8

    if-eqz v8, :cond_1c

    invoke-virtual {v6, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 49
    :cond_1d
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1e

    goto/16 :goto_1e

    :cond_1e
    const/4 p1, -0x1

    if-eq v0, p0, :cond_23

    .line 50
    array-length p0, v5

    const/4 v8, 0x0

    :goto_15
    if-ge v8, p0, :cond_20

    .line 51
    aget-object v9, v5, v8

    .line 52
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4, v2, v1}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v9

    if-eqz v9, :cond_1f

    goto :goto_16

    :cond_1f
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_20
    const/4 v8, -0x1

    :goto_16
    add-int/2addr v8, v3

    .line 53
    array-length p0, v5

    sub-int/2addr p0, v3

    if-lt p0, v8, :cond_23

    .line 54
    :goto_17
    aget-object v1, v5, p0

    .line 55
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StackTraceElement;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    if-ne v9, v10, :cond_21

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_18

    :cond_21
    const/4 v1, 0x0

    :goto_18
    if-eqz v1, :cond_22

    .line 57
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 58
    :cond_22
    aget-object v1, v5, p0

    invoke-virtual {v6, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    if-eq p0, v8, :cond_23

    add-int/lit8 p0, p0, -0x1

    goto :goto_17

    .line 59
    :cond_23
    new-instance p0, Ljava/lang/StackTraceElement;

    const-string v1, "\u0008\u0008\u0008(Coroutine boundary"

    const-string v4, "\u0008"

    invoke-direct {p0, v1, v4, v4, p1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v6, p0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 62
    sget-object v0, Lxq7;->a:Ljava/lang/String;

    .line 63
    array-length v1, p0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v1, :cond_25

    .line 64
    aget-object v5, p0, v4

    .line 65
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_1a

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_25
    const/4 v4, -0x1

    :goto_1a
    if-ne v4, p1, :cond_26

    new-array p0, v2, [Ljava/lang/StackTraceElement;

    .line 66
    invoke-virtual {v6, p0}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/StackTraceElement;

    invoke-virtual {v7, p0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_1d

    .line 67
    :cond_26
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    add-int/2addr p1, v4

    new-array p1, p1, [Ljava/lang/StackTraceElement;

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v4, :cond_27

    .line 68
    aget-object v1, p0, v0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 69
    :cond_27
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackTraceElement;

    add-int v1, v4, v2

    .line 70
    aput-object v0, p1, v1

    add-int/2addr v2, v3

    goto :goto_1c

    .line 71
    :cond_28
    invoke-virtual {v7, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :goto_1d
    move-object p0, v7

    :cond_29
    :goto_1e
    return-object p0

    :catchall_2
    move-exception p0

    :goto_1f
    if-ge v2, v10, :cond_2a

    .line 72
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2a
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :catchall_3
    move-exception p0

    .line 73
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p0
.end method
