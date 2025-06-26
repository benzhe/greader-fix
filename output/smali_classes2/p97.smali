.class public Lp97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld67;
.implements Lk97$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp97$e;
    }
.end annotation


# static fields
.field public static final Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lka7;",
            "Lx47;",
            ">;"
        }
    .end annotation
.end field

.field public static final R:Ljava/util/logging/Logger;

.field public static final S:[Lo97;


# instance fields
.field public A:Ljavax/net/ssl/HostnameVerifier;

.field public B:I

.field public final C:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lo97;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Lz97;

.field public E:Ljava/util/concurrent/ScheduledExecutorService;

.field public F:Ln77;

.field public G:Z

.field public H:J

.field public I:J

.field public J:Z

.field public final K:Ljava/lang/Runnable;

.field public final L:I

.field public final M:Z

.field public final N:Lg97;

.field public final O:Lb77;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb77<",
            "Lo97;",
            ">;"
        }
    .end annotation
.end field

.field public final P:Lu37;

.field public final a:Ljava/net/InetSocketAddress;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Random;

.field public final e:Lqd5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd5<",
            "Lpd5;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I

.field public g:Lc87$a;

.field public h:Lk97;

.field public i:Lw97;

.field public final j:Ljava/lang/Object;

.field public final k:Ly37;

.field public l:I

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo97;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/concurrent/Executor;

.field public final o:Lu87;

.field public final p:I

.field public q:I

.field public r:Lp97$e;

.field public s:Lv27;

.field public t:Lx47;

.field public u:Z

.field public v:La77;

.field public w:Z

.field public x:Z

.field public final y:Ljavax/net/SocketFactory;

.field public z:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lka7;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object v1, Lka7;->f:Lka7;

    sget-object v2, Lx47;->m:Lx47;

    const-string v3, "No error: A GRPC status of OK should have been sent"

    .line 3
    invoke-virtual {v2, v3}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lka7;->g:Lka7;

    const-string v3, "Protocol error"

    .line 6
    invoke-virtual {v2, v3}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lka7;->l:Lka7;

    const-string v3, "Internal error"

    .line 9
    invoke-virtual {v2, v3}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v3

    .line 10
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lka7;->m:Lka7;

    const-string v3, "Flow control error"

    .line 12
    invoke-virtual {v2, v3}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v3

    .line 13
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lka7;->n:Lka7;

    const-string v3, "Stream closed"

    .line 15
    invoke-virtual {v2, v3}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v3

    .line 16
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lka7;->o:Lka7;

    const-string v3, "Frame too large"

    .line 18
    invoke-virtual {v2, v3}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v3

    .line 19
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v1, Lka7;->p:Lka7;

    sget-object v3, Lx47;->n:Lx47;

    const-string v4, "Refused stream"

    .line 21
    invoke-virtual {v3, v4}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v3

    .line 22
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lka7;->q:Lka7;

    sget-object v3, Lx47;->g:Lx47;

    const-string v4, "Cancelled"

    .line 24
    invoke-virtual {v3, v4}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v3

    .line 25
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lka7;->r:Lka7;

    const-string v3, "Compression error"

    .line 27
    invoke-virtual {v2, v3}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v3

    .line 28
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lka7;->s:Lka7;

    const-string v3, "Connect error"

    .line 30
    invoke-virtual {v2, v3}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lka7;->t:Lka7;

    sget-object v2, Lx47;->l:Lx47;

    const-string v3, "Enhance your calm"

    .line 33
    invoke-virtual {v2, v3}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lka7;->u:Lka7;

    sget-object v2, Lx47;->j:Lx47;

    const-string v3, "Inadequate security"

    .line 36
    invoke-virtual {v2, v3}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 39
    sput-object v0, Lp97;->Q:Ljava/util/Map;

    .line 40
    const-class v0, Lp97;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lp97;->R:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Lo97;

    .line 41
    sput-object v0, Lp97;->S:[Lo97;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lv27;Ljava/util/concurrent/Executor;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lz97;IILu37;Ljava/lang/Runnable;ILg97;Z)V
    .locals 8

    move-object v1, p0

    move-object v0, p1

    move-object v2, p3

    move-object v3, p5

    move-object/from16 v4, p9

    move-object/from16 v5, p13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    iput-object v6, v1, Lp97;->d:Ljava/util/Random;

    .line 3
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v1, Lp97;->j:Ljava/lang/Object;

    .line 4
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lp97;->m:Ljava/util/Map;

    const/4 v7, 0x0

    .line 5
    iput v7, v1, Lp97;->B:I

    .line 6
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v1, Lp97;->C:Ljava/util/LinkedList;

    .line 7
    new-instance v7, Lp97$a;

    invoke-direct {v7, p0}, Lp97$a;-><init>(Lp97;)V

    iput-object v7, v1, Lp97;->O:Lb77;

    const-string v7, "address"

    .line 8
    invoke-static {p1, v7}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Lp97;->a:Ljava/net/InetSocketAddress;

    move-object v7, p2

    .line 9
    iput-object v7, v1, Lp97;->b:Ljava/lang/String;

    move/from16 v7, p10

    .line 10
    iput v7, v1, Lp97;->p:I

    move/from16 v7, p11

    .line 11
    iput v7, v1, Lp97;->f:I

    const-string v7, "executor"

    .line 12
    invoke-static {p5, v7}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v1, Lp97;->n:Ljava/util/concurrent/Executor;

    .line 13
    new-instance v7, Lu87;

    invoke-direct {v7, p5}, Lu87;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v7, v1, Lp97;->o:Lu87;

    const/4 v3, 0x3

    .line 14
    iput v3, v1, Lp97;->l:I

    if-nez p6, :cond_0

    .line 15
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p6

    :goto_0
    iput-object v3, v1, Lp97;->y:Ljavax/net/SocketFactory;

    move-object v3, p7

    .line 16
    iput-object v3, v1, Lp97;->z:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v3, p8

    .line 17
    iput-object v3, v1, Lp97;->A:Ljavax/net/ssl/HostnameVerifier;

    const-string v3, "connectionSpec"

    .line 18
    invoke-static {v4, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v1, Lp97;->D:Lz97;

    .line 19
    sget-object v3, Lu67;->o:Lqd5;

    iput-object v3, v1, Lp97;->e:Lqd5;

    const-string v3, "okhttp"

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "grpc-java-"

    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    .line 25
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "1.28.0"

    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    iput-object v2, v1, Lp97;->c:Ljava/lang/String;

    move-object/from16 v2, p12

    .line 29
    iput-object v2, v1, Lp97;->P:Lu37;

    const-string v2, "tooManyPingsRunnable"

    .line 30
    invoke-static {v5, v2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v5, v1, Lp97;->K:Ljava/lang/Runnable;

    move/from16 v2, p14

    .line 31
    iput v2, v1, Lp97;->L:I

    move-object/from16 v2, p15

    .line 32
    iput-object v2, v1, Lp97;->N:Lg97;

    .line 33
    const-class v2, Lp97;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ly37;->a(Ljava/lang/Class;Ljava/lang/String;)Ly37;

    move-result-object v0

    iput-object v0, v1, Lp97;->k:Ly37;

    .line 34
    invoke-static {}, Lv27;->a()Lv27$b;

    move-result-object v0

    sget-object v2, Lt67;->e:Lv27$c;

    move-object v3, p4

    .line 35
    invoke-virtual {v0, v2, p4}, Lv27$b;->b(Lv27$c;Ljava/lang/Object;)Lv27$b;

    invoke-virtual {v0}, Lv27$b;->a()Lv27;

    move-result-object v0

    iput-object v0, v1, Lp97;->s:Lv27;

    move/from16 v0, p16

    .line 36
    iput-boolean v0, v1, Lp97;->M:Z

    .line 37
    monitor-enter v6

    .line 38
    :try_start_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static h(Lp97;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ly47;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\r\n"

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lp97;->y:Ljavax/net/SocketFactory;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-virtual {v1, v2, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lp97;->y:Ljavax/net/SocketFactory;

    .line 5
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-virtual {v1, v2, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p2

    :goto_0
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p2, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 7
    invoke-static {p2}, Ln56;->f2(Ljava/net/Socket;)Lvt7;

    move-result-object v2

    .line 8
    invoke-static {p2}, Ln56;->b2(Ljava/net/Socket;)Ltt7;

    move-result-object v3

    invoke-static {v3}, Ln56;->o(Ltt7;)Lzs7;

    move-result-object v3

    .line 9
    invoke-virtual {p0, p1, p3, p4}, Lp97;->j(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Lj17;

    move-result-object p0

    .line 10
    iget-object p1, p0, Lj17;->a:Lh17;

    const-string p3, "CONNECT %s:%d HTTP/1.1"

    const/4 p4, 0x2

    new-array v4, p4, [Ljava/lang/Object;

    .line 11
    iget-object v5, p1, Lh17;->a:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 12
    iget p1, p1, Lh17;->b:I

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    check-cast v3, Lot7;

    invoke-virtual {v3, p1}, Lot7;->T(Ljava/lang/String;)Lzs7;

    invoke-virtual {v3, v0}, Lot7;->T(Ljava/lang/String;)Lzs7;

    .line 15
    iget-object p1, p0, Lj17;->b:Lg17;

    .line 16
    iget-object p1, p1, Lg17;->a:[Ljava/lang/String;

    array-length p1, p1

    div-int/2addr p1, p4

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p1, :cond_3

    .line 17
    iget-object v4, p0, Lj17;->b:Lg17;

    .line 18
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    mul-int/lit8 v5, p3, 0x2

    if-ltz v5, :cond_2

    .line 19
    iget-object v4, v4, Lg17;->a:[Ljava/lang/String;

    array-length v7, v4

    if-lt v5, v7, :cond_1

    goto :goto_2

    .line 20
    :cond_1
    aget-object v4, v4, v5

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v4, 0x0

    .line 21
    :goto_3
    invoke-virtual {v3, v4}, Lot7;->T(Ljava/lang/String;)Lzs7;

    const-string v4, ": "

    .line 22
    invoke-virtual {v3, v4}, Lot7;->T(Ljava/lang/String;)Lzs7;

    .line 23
    iget-object v4, p0, Lj17;->b:Lg17;

    .line 24
    invoke-virtual {v4, p3}, Lg17;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lot7;->T(Ljava/lang/String;)Lzs7;

    .line 25
    invoke-virtual {v3, v0}, Lot7;->T(Ljava/lang/String;)Lzs7;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 26
    :cond_3
    invoke-virtual {v3, v0}, Lot7;->T(Ljava/lang/String;)Lzs7;

    .line 27
    invoke-virtual {v3}, Lot7;->flush()V

    .line 28
    invoke-static {v2}, Lp97;->s(Lvt7;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk17;->a(Ljava/lang/String;)Lk17;

    move-result-object p0

    .line 29
    :goto_4
    invoke-static {v2}, Lp97;->s(Lvt7;)Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_4

    .line 30
    :cond_4
    iget p1, p0, Lk17;->b:I

    const/16 p3, 0xc8

    if-lt p1, p3, :cond_5

    const/16 p3, 0x12c

    if-ge p1, p3, :cond_5

    return-object p2

    .line 31
    :cond_5
    new-instance p1, Lxs7;

    invoke-direct {p1}, Lxs7;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 32
    :try_start_1
    invoke-virtual {p2}, Ljava/net/Socket;->shutdownOutput()V

    const-wide/16 v3, 0x400

    .line 33
    invoke-interface {v2, p1, v3, v4}, Lvt7;->read(Lxs7;J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p3

    .line 34
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read body: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lxs7;->k0(Ljava/lang/String;)Lxs7;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 35
    :goto_5
    :try_start_3
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :try_start_4
    const-string p2, "Response returned from proxy was not successful (expected 2xx, got %d %s). Response body:\n%s"

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    .line 36
    iget v0, p0, Lk17;->b:I

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v6

    iget-object p0, p0, Lk17;->c:Ljava/lang/String;

    aput-object p0, p3, v1

    invoke-virtual {p1}, Lxs7;->t()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, p4

    .line 38
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 39
    sget-object p1, Lx47;->n:Lx47;

    invoke-virtual {p1, p0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p0

    .line 40
    new-instance p1, Ly47;

    invoke-direct {p1, p0}, Ly47;-><init>(Lx47;)V

    .line 41
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 42
    sget-object p1, Lx47;->n:Lx47;

    const-string p2, "Failed trying to connect with proxy"

    invoke-virtual {p1, p2}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    invoke-virtual {p1, p0}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object p0

    .line 43
    new-instance p1, Ly47;

    invoke-direct {p1, p0}, Ly47;-><init>(Lx47;)V

    .line 44
    throw p1
.end method

.method public static i(Lp97;Lka7;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lp97;->z(Lka7;)Lx47;

    move-result-object v0

    invoke-virtual {v0, p2}, Lx47;->b(Ljava/lang/String;)Lx47;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lp97;->v(ILka7;Lx47;)V

    return-void
.end method

.method public static s(Lvt7;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lxs7;

    invoke-direct {v0}, Lxs7;-><init>()V

    :cond_0
    const-wide/16 v1, 0x1

    .line 2
    invoke-interface {p0, v0, v1, v2}, Lvt7;->read(Lxs7;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 3
    iget-wide v3, v0, Lxs7;->f:J

    sub-long/2addr v3, v1

    .line 4
    invoke-virtual {v0, v3, v4}, Lxs7;->f(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lxs7;->i0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string v1, "\\n not found: "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lxs7;->e0()Lbt7;

    move-result-object v0

    invoke-virtual {v0}, Lbt7;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static z(Lka7;)Lx47;
    .locals 2

    .line 1
    sget-object v0, Lp97;->Q:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx47;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lx47;->h:Lx47;

    const-string v1, "Unknown http2 error code: "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lka7;->e:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "failureCause"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lx47;->n:Lx47;

    invoke-virtual {v0, p1}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object p1

    .line 3
    sget-object v0, Lka7;->l:Lka7;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lp97;->v(ILka7;Lx47;)V

    return-void
.end method

.method public b(Lx47;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp97;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp97;->t:Lx47;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lp97;->t:Lx47;

    .line 5
    iget-object v1, p0, Lp97;->g:Lc87$a;

    invoke-interface {v1, p1}, Lc87$a;->a(Lx47;)V

    .line 6
    invoke-virtual {p0}, Lp97;->y()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lx47;)V
    .locals 7

    .line 1
    sget-object v0, Lz57$a;->e:Lz57$a;

    invoke-virtual {p0, p1}, Lp97;->b(Lx47;)V

    .line 2
    iget-object v1, p0, Lp97;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lp97;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo97;

    .line 8
    iget-object v4, v4, Lo97;->m:Lo97$b;

    const/4 v5, 0x0

    .line 9
    new-instance v6, Li47;

    invoke-direct {v6}, Li47;-><init>()V

    .line 10
    invoke-virtual {v4, p1, v0, v5, v6}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo97;

    invoke-virtual {p0, v3}, Lp97;->r(Lo97;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lp97;->C:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo97;

    .line 13
    iget-object v4, v3, Lo97;->m:Lo97$b;

    const/4 v5, 0x1

    .line 14
    new-instance v6, Li47;

    invoke-direct {v6}, Li47;-><init>()V

    .line 15
    invoke-virtual {v4, p1, v0, v5, v6}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    .line 16
    invoke-virtual {p0, v3}, Lp97;->r(Lo97;)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object p1, p0, Lp97;->C:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 18
    invoke-virtual {p0}, Lp97;->y()V

    .line 19
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Lc87$a;)Ljava/lang/Runnable;
    .locals 9

    const-string v0, "listener"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc87$a;

    iput-object p1, p0, Lp97;->g:Lc87$a;

    .line 2
    iget-boolean p1, p0, Lp97;->G:Z

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lu67;->n:Lx87$c;

    invoke-static {p1}, Lx87;->a(Lx87$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lp97;->E:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance p1, Ln77;

    new-instance v1, Ln77$c;

    invoke-direct {v1, p0}, Ln77$c;-><init>(Ld67;)V

    iget-object v2, p0, Lp97;->E:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v3, p0, Lp97;->H:J

    iget-wide v5, p0, Lp97;->I:J

    iget-boolean v7, p0, Lp97;->J:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ln77;-><init>(Ln77$d;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V

    iput-object p1, p0, Lp97;->F:Ln77;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-boolean v0, p1, Ln77;->d:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Ln77;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lp97;->a:Ljava/net/InetSocketAddress;

    const/4 v0, 0x1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lp97;->j:Ljava/lang/Object;

    monitor-enter p1

    .line 11
    :try_start_1
    new-instance v0, Lk97;

    invoke-direct {v0, p0, v1, v1}, Lk97;-><init>(Lk97$a;Lma7;Lq97;)V

    iput-object v0, p0, Lp97;->h:Lk97;

    .line 12
    new-instance v2, Lw97;

    invoke-direct {v2, p0, v0}, Lw97;-><init>(Lp97;Lma7;)V

    iput-object v2, p0, Lp97;->i:Lw97;

    .line 13
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    iget-object p1, p0, Lp97;->o:Lu87;

    new-instance v0, Lp97$b;

    invoke-direct {v0, p0}, Lp97$b;-><init>(Lp97;)V

    .line 15
    iget-object v2, p1, Lu87;->f:Ljava/util/Queue;

    const-string v3, "\'r\' must not be null."

    invoke-static {v0, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p1, v0}, Lu87;->c(Ljava/lang/Runnable;)V

    return-object v1

    :catchall_1
    move-exception v0

    .line 17
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 18
    :cond_3
    iget-object p1, p0, Lp97;->o:Lu87;

    .line 19
    new-instance v2, Lj97;

    invoke-direct {v2, p1, p0}, Lj97;-><init>(Lu87;Lk97$a;)V

    .line 20
    new-instance p1, Lpa7;

    invoke-direct {p1}, Lpa7;-><init>()V

    .line 21
    invoke-static {v2}, Ln56;->o(Ltt7;)Lzs7;

    move-result-object v3

    .line 22
    new-instance v4, Lpa7$d;

    invoke-direct {v4, v3, v0}, Lpa7$d;-><init>(Lzs7;Z)V

    .line 23
    iget-object v3, p0, Lp97;->j:Ljava/lang/Object;

    monitor-enter v3

    .line 24
    :try_start_3
    new-instance v5, Lk97;

    .line 25
    new-instance v6, Lq97;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v8, Lp97;

    invoke-direct {v6, v7, v8}, Lq97;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    invoke-direct {v5, p0, v4, v6}, Lk97;-><init>(Lk97$a;Lma7;Lq97;)V

    .line 26
    iput-object v5, p0, Lp97;->h:Lk97;

    .line 27
    new-instance v4, Lw97;

    invoke-direct {v4, p0, v5}, Lw97;-><init>(Lp97;Lma7;)V

    iput-object v4, p0, Lp97;->i:Lw97;

    .line 28
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 29
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 30
    iget-object v0, p0, Lp97;->o:Lu87;

    new-instance v4, Lp97$c;

    invoke-direct {v4, p0, v3, v2, p1}, Lp97$c;-><init>(Lp97;Ljava/util/concurrent/CountDownLatch;Lj97;Lsa7;)V

    .line 31
    iget-object p1, v0, Lu87;->f:Ljava/util/Queue;

    const-string v2, "\'r\' must not be null."

    invoke-static {v4, v2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v0, v4}, Lu87;->c(Ljava/lang/Runnable;)V

    .line 33
    :try_start_4
    invoke-virtual {p0}, Lp97;->t()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 34
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 35
    iget-object p1, p0, Lp97;->o:Lu87;

    new-instance v0, Lp97$d;

    invoke-direct {v0, p0}, Lp97$d;-><init>(Lp97;)V

    .line 36
    iget-object v2, p1, Lu87;->f:Ljava/util/Queue;

    const-string v3, "\'r\' must not be null."

    invoke-static {v0, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p1, v0}, Lu87;->c(Ljava/lang/Runnable;)V

    return-object v1

    :catchall_2
    move-exception p1

    .line 38
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1

    :catchall_3
    move-exception p1

    .line 39
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method public e()Ly37;
    .locals 1

    .line 1
    iget-object v0, p0, Lp97;->k:Ly37;

    return-object v0
.end method

.method public f(La67$a;Ljava/util/concurrent/Executor;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lp97;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp97;->h:Lk97;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 3
    iget-boolean v1, p0, Lp97;->w:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lp97;->o()Ljava/lang/Throwable;

    move-result-object v1

    .line 5
    new-instance v2, Lz67;

    invoke-direct {v2, p1, v1}, Lz67;-><init>(La67$a;Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p2, v2}, La77;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lp97;->v:La77;

    if-eqz v1, :cond_2

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lp97;->d:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    .line 10
    iget-object v1, p0, Lp97;->e:Lqd5;

    invoke-interface {v1}, Lqd5;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpd5;

    .line 11
    invoke-virtual {v1}, Lpd5;->c()Lpd5;

    .line 12
    new-instance v6, La77;

    invoke-direct {v6, v4, v5, v1}, La77;-><init>(JLpd5;)V

    iput-object v6, p0, Lp97;->v:La77;

    .line 13
    iget-object v1, p0, Lp97;->N:Lg97;

    .line 14
    iget-wide v7, v1, Lg97;->e:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v1, Lg97;->e:J

    move-object v1, v6

    :goto_1
    if-eqz v2, :cond_3

    .line 15
    iget-object v2, p0, Lp97;->h:Lk97;

    const/16 v6, 0x20

    ushr-long v6, v4, v6

    long-to-int v7, v6

    long-to-int v5, v4

    invoke-virtual {v2, v3, v7, v5}, Lk97;->ping(ZII)V

    .line 16
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    monitor-enter v1

    .line 18
    :try_start_1
    iget-boolean v0, v1, La77;->d:Z

    if-nez v0, :cond_4

    .line 19
    iget-object v0, v1, La77;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    monitor-exit v1

    goto :goto_3

    .line 21
    :cond_4
    iget-object v0, v1, La77;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 22
    new-instance v2, Lz67;

    invoke-direct {v2, p1, v0}, Lz67;-><init>(La67$a;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 23
    :cond_5
    iget-wide v2, v1, La77;->f:J

    .line 24
    new-instance v0, Ly67;

    invoke-direct {v0, p1, v2, v3}, Ly67;-><init>(La67$a;J)V

    move-object v2, v0

    .line 25
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-static {p2, v2}, La77;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 27
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 28
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public g(Lj47;Li47;Lx27;)Ly57;
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    move-object/from16 v14, p3

    const-string v1, "method"

    move-object/from16 v2, p1

    .line 1
    invoke-static {v2, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "headers"

    .line 2
    invoke-static {v0, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v15, Lp97;->s:Lv27;

    .line 4
    sget-object v3, La97;->c:La97;

    .line 5
    iget-object v3, v14, Lx27;->g:Ljava/util/List;

    .line 6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    sget-object v1, La97;->c:La97;

    :goto_0
    move-object v12, v1

    goto :goto_2

    .line 8
    :cond_0
    sget-object v4, Lv27;->b:Lv27;

    .line 9
    sget-object v4, Lx27;->k:Lx27;

    const-string v4, "transportAttrs cannot be null"

    .line 10
    invoke-static {v1, v4}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "callOptions cannot be null"

    .line 11
    invoke-static {v14, v4}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v4, Le37$b;

    invoke-direct {v4, v1, v14}, Le37$b;-><init>(Lv27;Lx27;)V

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [La57;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_1

    .line 14
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le37$a;

    invoke-virtual {v7, v4, v0}, Le37$a;->a(Le37$b;Li47;)Le37;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 15
    :cond_1
    new-instance v1, La97;

    invoke-direct {v1, v5}, La97;-><init>([La57;)V

    goto :goto_0

    .line 16
    :goto_2
    iget-object v13, v15, Lp97;->j:Ljava/lang/Object;

    monitor-enter v13

    .line 17
    :try_start_0
    new-instance v16, Lo97;

    iget-object v4, v15, Lp97;->h:Lk97;

    iget-object v6, v15, Lp97;->i:Lw97;

    iget-object v7, v15, Lp97;->j:Ljava/lang/Object;

    iget v8, v15, Lp97;->p:I

    iget v9, v15, Lp97;->f:I

    iget-object v10, v15, Lp97;->b:Ljava/lang/String;

    iget-object v11, v15, Lp97;->c:Ljava/lang/String;

    iget-object v5, v15, Lp97;->N:Lg97;

    iget-boolean v3, v15, Lp97;->M:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v3, p2

    move-object v0, v5

    move-object/from16 v5, p0

    move-object/from16 v18, v13

    move-object v13, v0

    move-object/from16 v14, p3

    move/from16 v15, v17

    :try_start_1
    invoke-direct/range {v1 .. v15}, Lo97;-><init>(Lj47;Li47;Lk97;Lp97;Lw97;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;La97;Lg97;Lx27;Z)V

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v16

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v18, v13

    :goto_3
    move-object/from16 v13, v18

    .line 18
    :goto_4
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method

.method public final j(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Lj17;
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 1
    new-instance v2, Lh17$b;

    invoke-direct {v2}, Lh17$b;-><init>()V

    const-string v3, "https"

    .line 2
    iput-object v3, v2, Lh17$b;->a:Ljava/lang/String;

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "host == null"

    if-eqz v3, :cond_31

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    .line 5
    invoke-static {v3, v6, v5, v6}, Lh17;->c(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    const-string v7, "["

    .line 6
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v8, ":"

    if-eqz v7, :cond_24

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/16 v9, 0x10

    new-array v10, v9, [B

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    :goto_0
    if-ge v12, v7, :cond_17

    if-ne v11, v9, :cond_1

    :cond_0
    :goto_1
    move-object/from16 v17, v3

    goto/16 :goto_d

    :cond_1
    add-int/lit8 v9, v12, 0x2

    if-gt v9, v7, :cond_4

    const-string v15, "::"

    move/from16 v16, v14

    const/4 v14, 0x2

    .line 8
    invoke-virtual {v5, v12, v15, v6, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v6, -0x1

    if-eq v13, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x2

    move-object/from16 v17, v3

    if-ne v9, v7, :cond_3

    move v13, v11

    goto/16 :goto_c

    :cond_3
    move v14, v9

    move v13, v11

    goto/16 :goto_9

    :cond_4
    move/from16 v16, v14

    :cond_5
    if-eqz v11, :cond_13

    const/4 v9, 0x1

    .line 9
    invoke-virtual {v5, v12, v8, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v14

    if-eqz v14, :cond_6

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8

    :cond_6
    const-string v14, "."

    .line 10
    invoke-virtual {v5, v12, v14, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v6, v11, -0x2

    move v9, v6

    move/from16 v14, v16

    :goto_2
    if-ge v14, v7, :cond_10

    const/16 v12, 0x10

    if-ne v9, v12, :cond_7

    goto :goto_3

    :cond_7
    if-eq v9, v6, :cond_9

    .line 11
    invoke-virtual {v5, v14}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v15, 0x2e

    if-eq v12, v15, :cond_8

    :goto_3
    move-object/from16 v17, v3

    move/from16 v16, v13

    goto :goto_6

    :cond_8
    add-int/lit8 v14, v14, 0x1

    :cond_9
    const/4 v12, 0x0

    move v15, v14

    :goto_4
    if-ge v15, v7, :cond_d

    move/from16 v16, v13

    .line 12
    invoke-virtual {v5, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move-object/from16 v17, v3

    const/16 v3, 0x30

    if-lt v13, v3, :cond_e

    const/16 v3, 0x39

    if-le v13, v3, :cond_a

    goto :goto_5

    :cond_a
    if-nez v12, :cond_b

    if-eq v14, v15, :cond_b

    goto :goto_6

    :cond_b
    mul-int/lit8 v12, v12, 0xa

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x30

    const/16 v3, 0xff

    if-le v12, v3, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v16

    move-object/from16 v3, v17

    goto :goto_4

    :cond_d
    move-object/from16 v17, v3

    move/from16 v16, v13

    :cond_e
    :goto_5
    sub-int v3, v15, v14

    if-nez v3, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v3, v9, 0x1

    int-to-byte v12, v12

    .line 13
    aput-byte v12, v10, v9

    move v9, v3

    move v14, v15

    move/from16 v13, v16

    move-object/from16 v3, v17

    goto :goto_2

    :cond_10
    move-object/from16 v17, v3

    move/from16 v16, v13

    add-int/lit8 v6, v6, 0x4

    if-eq v9, v6, :cond_11

    :goto_6
    const/4 v3, 0x0

    goto :goto_7

    :cond_11
    const/4 v3, 0x1

    :goto_7
    if-nez v3, :cond_12

    goto :goto_d

    :cond_12
    add-int/lit8 v11, v11, 0x2

    move/from16 v13, v16

    goto :goto_c

    :cond_13
    :goto_8
    move-object/from16 v17, v3

    move/from16 v16, v13

    move v14, v12

    move/from16 v13, v16

    :goto_9
    const/4 v3, 0x0

    move v12, v14

    :goto_a
    if-ge v12, v7, :cond_15

    .line 14
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 15
    invoke-static {v6}, Lh17;->a(C)I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_14

    goto :goto_b

    :cond_14
    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_15
    :goto_b
    sub-int v6, v12, v14

    if-eqz v6, :cond_18

    const/4 v9, 0x4

    if-le v6, v9, :cond_16

    goto :goto_d

    :cond_16
    add-int/lit8 v6, v11, 0x1

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 16
    aput-byte v9, v10, v11

    add-int/lit8 v11, v6, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 17
    aput-byte v3, v10, v6

    const/4 v6, 0x0

    const/16 v9, 0x10

    move-object/from16 v3, v17

    goto/16 :goto_0

    :cond_17
    move-object/from16 v17, v3

    move/from16 v16, v13

    :goto_c
    const/16 v3, 0x10

    if-eq v11, v3, :cond_1a

    const/4 v3, -0x1

    if-ne v13, v3, :cond_19

    :cond_18
    :goto_d
    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_e

    :cond_19
    sub-int v3, v11, v13

    rsub-int/lit8 v5, v3, 0x10

    .line 18
    invoke-static {v10, v13, v10, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v3, v11, 0x10

    add-int/2addr v3, v13

    const/4 v5, 0x0

    .line 19
    invoke-static {v10, v13, v3, v5}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_1a
    const/4 v3, 0x0

    .line 20
    :try_start_0
    invoke-static {v10}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_e
    if-nez v5, :cond_1b

    goto/16 :goto_15

    .line 21
    :cond_1b
    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    .line 22
    array-length v6, v5

    const/16 v7, 0x10

    if-ne v6, v7, :cond_23

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 23
    :goto_f
    array-length v11, v5

    if-ge v6, v11, :cond_1e

    move v11, v6

    :goto_10
    if-ge v11, v7, :cond_1c

    .line 24
    aget-byte v7, v5, v11

    if-nez v7, :cond_1c

    add-int/lit8 v7, v11, 0x1

    aget-byte v7, v5, v7

    if-nez v7, :cond_1c

    add-int/lit8 v11, v11, 0x2

    const/16 v7, 0x10

    goto :goto_10

    :cond_1c
    sub-int v7, v11, v6

    if-le v7, v9, :cond_1d

    move v10, v6

    move v9, v7

    :cond_1d
    add-int/lit8 v6, v11, 0x2

    const/16 v7, 0x10

    goto :goto_f

    .line 25
    :cond_1e
    new-instance v6, Lxs7;

    invoke-direct {v6}, Lxs7;-><init>()V

    .line 26
    :cond_1f
    :goto_11
    array-length v7, v5

    if-ge v3, v7, :cond_22

    const/16 v7, 0x3a

    if-ne v3, v10, :cond_20

    .line 27
    invoke-virtual {v6, v7}, Lxs7;->Q(I)Lxs7;

    add-int/2addr v3, v9

    const/16 v11, 0x10

    if-ne v3, v11, :cond_1f

    .line 28
    invoke-virtual {v6, v7}, Lxs7;->Q(I)Lxs7;

    goto :goto_11

    :cond_20
    if-lez v3, :cond_21

    .line 29
    invoke-virtual {v6, v7}, Lxs7;->Q(I)Lxs7;

    .line 30
    :cond_21
    aget-byte v7, v5, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v11, v3, 0x1

    aget-byte v11, v5, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v7, v11

    int-to-long v11, v7

    .line 31
    invoke-virtual {v6, v11, v12}, Lxs7;->Z(J)Lxs7;

    add-int/lit8 v3, v3, 0x2

    goto :goto_11

    .line 32
    :cond_22
    invoke-virtual {v6}, Lxs7;->t()Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    .line 33
    :cond_23
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_24
    move-object/from16 v17, v3

    .line 35
    :try_start_1
    invoke-static {v5}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_15

    :cond_25
    const/4 v5, 0x0

    .line 37
    :goto_12
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_29

    .line 38
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x1f

    if-le v6, v7, :cond_28

    const/16 v7, 0x7f

    if-lt v6, v7, :cond_26

    goto :goto_13

    :cond_26
    const-string v7, " #%/:?@[\\]"

    .line 39
    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, -0x1

    if-eq v6, v7, :cond_27

    goto :goto_13

    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_28
    :goto_13
    const/4 v5, 0x1

    goto :goto_14

    :cond_29
    const/4 v5, 0x0

    :goto_14
    if-eqz v5, :cond_2a

    :catch_1
    :goto_15
    const/4 v3, 0x0

    :cond_2a
    :goto_16
    if-eqz v3, :cond_30

    .line 40
    iput-object v3, v2, Lh17$b;->b:Ljava/lang/String;

    .line 41
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    if-lez v3, :cond_2f

    const v5, 0xffff

    if-gt v3, v5, :cond_2f

    .line 42
    iput v3, v2, Lh17$b;->c:I

    .line 43
    iget-object v3, v2, Lh17$b;->a:Ljava/lang/String;

    if-eqz v3, :cond_2e

    .line 44
    iget-object v3, v2, Lh17$b;->b:Ljava/lang/String;

    if-eqz v3, :cond_2d

    .line 45
    new-instance v3, Lh17;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lh17;-><init>(Lh17$b;Lh17$a;)V

    .line 46
    new-instance v2, Lj17$b;

    invoke-direct {v2}, Lj17$b;-><init>()V

    .line 47
    iput-object v3, v2, Lj17$b;->a:Lh17;

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    iget-object v5, v3, Lh17;->a:Ljava/lang/String;

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v3, v3, Lh17;->b:I

    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Host"

    invoke-virtual {v2, v4, v3}, Lj17$b;->a(Ljava/lang/String;Ljava/lang/String;)Lj17$b;

    move-object/from16 v5, p0

    iget-object v3, v5, Lp97;->c:Ljava/lang/String;

    const-string v4, "User-Agent"

    .line 53
    invoke-virtual {v2, v4, v3}, Lj17$b;->a(Ljava/lang/String;Ljava/lang/String;)Lj17$b;

    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2b

    .line 54
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 56
    invoke-static {v0}, Lbt7;->C([B)Lbt7;

    move-result-object v0

    invoke-virtual {v0}, Lbt7;->i()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v1, "Proxy-Authorization"

    .line 58
    invoke-virtual {v2, v1, v0}, Lj17$b;->a(Ljava/lang/String;Ljava/lang/String;)Lj17$b;

    goto :goto_17

    .line 59
    :catch_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_2b
    :goto_17
    iget-object v0, v2, Lj17$b;->a:Lh17;

    if-eqz v0, :cond_2c

    .line 61
    new-instance v0, Lj17;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lj17;-><init>(Lj17$b;Lj17$a;)V

    return-object v0

    .line 62
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    move-object/from16 v5, p0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    move-object/from16 v5, p0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    move-object/from16 v5, p0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected port: "

    invoke-static {v1, v3}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    move-object/from16 v5, p0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected host: "

    move-object/from16 v2, v17

    invoke-static {v1, v2}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    move-object/from16 v5, p0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(ILx47;Lz57$a;ZLka7;Li47;)V
    .locals 1

    .line 1
    iget-object p5, p0, Lp97;->j:Ljava/lang/Object;

    monitor-enter p5

    .line 2
    :try_start_0
    iget-object p6, p0, Lp97;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo97;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iget-object p6, p1, Lo97;->m:Lo97$b;

    .line 4
    new-instance v0, Li47;

    invoke-direct {v0}, Li47;-><init>()V

    .line 5
    invoke-virtual {p6, p2, p3, p4, v0}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lp97;->w()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p0}, Lp97;->y()V

    .line 8
    invoke-virtual {p0, p1}, Lp97;->r(Lo97;)V

    .line 9
    :cond_1
    monitor-exit p5

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l()[Lo97;
    .locals 3

    .line 1
    iget-object v0, p0, Lp97;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp97;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lp97;->S:[Lo97;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lo97;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lp97;->b:Ljava/lang/String;

    invoke-static {v0}, Lu67;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lp97;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 3

    .line 1
    iget-object v0, p0, Lp97;->b:Ljava/lang/String;

    invoke-static {v0}, Lu67;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lp97;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public final o()Ljava/lang/Throwable;
    .locals 3

    .line 1
    iget-object v0, p0, Lp97;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp97;->t:Lx47;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Ly47;

    invoke-direct {v2, v1}, Ly47;-><init>(Lx47;)V

    .line 5
    monitor-exit v0

    return-object v2

    .line 6
    :cond_0
    sget-object v1, Lx47;->n:Lx47;

    const-string v2, "Connection closed"

    invoke-virtual {v1, v2}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v1

    .line 7
    new-instance v2, Ly47;

    invoke-direct {v2, v1}, Ly47;-><init>(Lx47;)V

    .line 8
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public p(I)Lo97;
    .locals 2

    .line 1
    iget-object v0, p0, Lp97;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp97;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo97;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lp97;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lp97;->l:I

    const/4 v2, 0x1

    if-ge p1, v1, :cond_0

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final r(Lo97;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lp97;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lp97;->C:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lp97;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iput-boolean v1, p0, Lp97;->x:Z

    .line 4
    iget-object v0, p0, Lp97;->F:Ln77;

    if-eqz v0, :cond_4

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v2, v0, Ln77;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 7
    monitor-exit v0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_1
    iget-object v2, v0, Ln77;->e:Ln77$e;

    sget-object v3, Ln77$e;->f:Ln77$e;

    if-eq v2, v3, :cond_1

    sget-object v3, Ln77$e;->g:Ln77$e;

    if-ne v2, v3, :cond_2

    .line 9
    :cond_1
    sget-object v2, Ln77$e;->e:Ln77$e;

    iput-object v2, v0, Ln77;->e:Ln77$e;

    .line 10
    :cond_2
    iget-object v2, v0, Ln77;->e:Ln77$e;

    sget-object v3, Ln77$e;->h:Ln77$e;

    if-ne v2, v3, :cond_3

    .line 11
    sget-object v2, Ln77$e;->i:Ln77$e;

    iput-object v2, v0, Ln77;->e:Ln77$e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 13
    :cond_4
    :goto_0
    iget-boolean v0, p1, Le57;->c:Z

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lp97;->O:Lb77;

    invoke-virtual {v0, p1, v1}, Lb77;->c(Ljava/lang/Object;Z)V

    :cond_5
    return-void
.end method

.method public t()V
    .locals 6

    .line 1
    iget-object v0, p0, Lp97;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp97;->h:Lk97;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v2, v1, Lk97;->f:Lma7;

    invoke-interface {v2}, Lma7;->connectionPreface()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    :try_start_2
    iget-object v1, v1, Lk97;->e:Lk97$a;

    invoke-interface {v1, v2}, Lk97$a;->a(Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    new-instance v1, Lra7;

    invoke-direct {v1}, Lra7;-><init>()V

    const/4 v2, 0x7

    .line 7
    iget v3, p0, Lp97;->f:I

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v1, v2, v4, v3}, Lra7;->b(III)Lra7;

    .line 9
    iget-object v2, p0, Lp97;->h:Lk97;

    .line 10
    iget-object v3, v2, Lk97;->g:Lq97;

    sget-object v5, Lq97$a;->f:Lq97$a;

    invoke-virtual {v3, v5, v1}, Lq97;->f(Lq97$a;Lra7;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    iget-object v3, v2, Lk97;->f:Lma7;

    invoke-interface {v3, v1}, Lma7;->f0(Lra7;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 12
    :try_start_4
    iget-object v2, v2, Lk97;->e:Lk97$a;

    invoke-interface {v2, v1}, Lk97$a;->a(Ljava/lang/Throwable;)V

    .line 13
    :goto_1
    iget v1, p0, Lp97;->f:I

    const v2, 0xffff

    if-le v1, v2, :cond_0

    .line 14
    iget-object v3, p0, Lp97;->h:Lk97;

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v3, v4, v1, v2}, Lk97;->windowUpdate(IJ)V

    .line 15
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget-object v1, p0, Lp97;->k:Ly37;

    .line 2
    iget-wide v1, v1, Ly37;->c:J

    const-string v3, "logId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lnd5;->b(Ljava/lang/String;J)Lnd5;

    iget-object v1, p0, Lp97;->a:Ljava/net/InetSocketAddress;

    const-string v2, "address"

    .line 4
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 5
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lo97;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp97;->x:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lp97;->x:Z

    .line 3
    iget-object v0, p0, Lp97;->F:Ln77;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ln77;->b()V

    .line 5
    :cond_0
    iget-boolean v0, p1, Le57;->c:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lp97;->O:Lb77;

    invoke-virtual {v0, p1, v1}, Lb77;->c(Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method public final v(ILka7;Lx47;)V
    .locals 7

    .line 1
    sget-object v0, Lz57$a;->f:Lz57$a;

    iget-object v1, p0, Lp97;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, p0, Lp97;->t:Lx47;

    if-nez v2, :cond_0

    .line 3
    iput-object p3, p0, Lp97;->t:Lx47;

    .line 4
    iget-object v2, p0, Lp97;->g:Lc87$a;

    invoke-interface {v2, p3}, Lc87$a;->a(Lx47;)V

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 5
    iget-boolean v4, p0, Lp97;->u:Z

    if-nez v4, :cond_1

    .line 6
    iput-boolean v2, p0, Lp97;->u:Z

    .line 7
    iget-object v4, p0, Lp97;->h:Lk97;

    new-array v5, v3, [B

    invoke-virtual {v4, v3, p2, v5}, Lk97;->H0(ILka7;[B)V

    .line 8
    :cond_1
    iget-object p2, p0, Lp97;->m:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 9
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, p1, :cond_2

    .line 12
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo97;

    .line 14
    iget-object v5, v5, Lo97;->m:Lo97$b;

    .line 15
    new-instance v6, Li47;

    invoke-direct {v6}, Li47;-><init>()V

    invoke-virtual {v5, p3, v0, v3, v6}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    .line 16
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo97;

    invoke-virtual {p0, v4}, Lp97;->r(Lo97;)V

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Lp97;->C:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo97;

    .line 18
    iget-object v3, p2, Lo97;->m:Lo97$b;

    .line 19
    new-instance v4, Li47;

    invoke-direct {v4}, Li47;-><init>()V

    invoke-virtual {v3, p3, v0, v2, v4}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    .line 20
    invoke-virtual {p0, p2}, Lp97;->r(Lo97;)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object p1, p0, Lp97;->C:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 22
    invoke-virtual {p0}, Lp97;->y()V

    .line 23
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final w()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lp97;->C:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lp97;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lp97;->B:I

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v0, p0, Lp97;->C:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo97;

    .line 3
    invoke-virtual {p0, v0}, Lp97;->x(Lo97;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final x(Lo97;)V
    .locals 9

    .line 1
    iget v0, p1, Lo97;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "StreamId already assigned"

    .line 2
    invoke-static {v0, v4}, Lc50;->G(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lp97;->m:Ljava/util/Map;

    iget v4, p0, Lp97;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lp97;->u(Lo97;)V

    .line 5
    iget-object v0, p1, Lo97;->m:Lo97$b;

    .line 6
    iget v4, p0, Lp97;->l:I

    .line 7
    iget-object v5, v0, Lo97$b;->O:Lo97;

    .line 8
    iget v5, v5, Lo97;->l:I

    if-ne v5, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v5, "the stream has been started with id %s"

    if-eqz v3, :cond_b

    .line 9
    iget-object v3, v0, Lo97$b;->O:Lo97;

    .line 10
    iput v4, v3, Lo97;->l:I

    .line 11
    iget-object v3, v0, Lo97$b;->O:Lo97;

    .line 12
    iget-object v3, v3, Lo97;->m:Lo97$b;

    .line 13
    iget-object v4, v3, Le57$c;->m:Lz57;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_a

    .line 14
    iget-object v4, v3, Lh57$a;->f:Ljava/lang/Object;

    monitor-enter v4

    .line 15
    :try_start_0
    iget-boolean v5, v3, Lh57$a;->i:Z

    xor-int/2addr v5, v2

    const-string v6, "Already allocated"

    invoke-static {v5, v6}, Lc50;->G(ZLjava/lang/Object;)V

    .line 16
    iput-boolean v2, v3, Lh57$a;->i:Z

    .line 17
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v3}, Lh57$a;->c()V

    .line 19
    iget-object v2, v3, Lh57$a;->g:Lg97;

    .line 20
    iget-wide v3, v2, Lg97;->b:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lg97;->b:J

    .line 21
    iget-object v2, v2, Lg97;->a:Ld97;

    invoke-interface {v2}, Ld97;->a()J

    .line 22
    iget-boolean v2, v0, Lo97$b;->M:Z

    if-eqz v2, :cond_5

    .line 23
    iget-object v3, v0, Lo97$b;->J:Lk97;

    iget-object v2, v0, Lo97$b;->O:Lo97;

    .line 24
    iget-boolean v4, v2, Lo97;->p:Z

    const/4 v5, 0x0

    .line 25
    iget v6, v2, Lo97;->l:I

    const/4 v7, 0x0

    .line 26
    iget-object v8, v0, Lo97$b;->C:Ljava/util/List;

    invoke-virtual/range {v3 .. v8}, Lk97;->B0(ZZIILjava/util/List;)V

    .line 27
    iget-object v2, v0, Lo97$b;->O:Lo97;

    .line 28
    iget-object v2, v2, Lo97;->i:La97;

    .line 29
    iget-object v2, v2, La97;->a:[La57;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 30
    check-cast v5, Le37;

    .line 31
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 32
    iput-object v2, v0, Lo97$b;->C:Ljava/util/List;

    .line 33
    iget-object v2, v0, Lo97$b;->D:Lxs7;

    .line 34
    iget-wide v2, v2, Lxs7;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    .line 35
    iget-object v2, v0, Lo97$b;->K:Lw97;

    iget-boolean v3, v0, Lo97$b;->E:Z

    iget-object v4, v0, Lo97$b;->O:Lo97;

    .line 36
    iget v4, v4, Lo97;->l:I

    .line 37
    iget-object v5, v0, Lo97$b;->D:Lxs7;

    iget-boolean v6, v0, Lo97$b;->F:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lw97;->a(ZILxs7;Z)V

    .line 38
    :cond_4
    iput-boolean v1, v0, Lo97$b;->M:Z

    .line 39
    :cond_5
    iget-object v0, p1, Lo97;->g:Lj47;

    .line 40
    iget-object v0, v0, Lj47;->a:Lj47$d;

    .line 41
    sget-object v1, Lj47$d;->e:Lj47$d;

    if-eq v0, v1, :cond_6

    sget-object v1, Lj47$d;->g:Lj47$d;

    if-ne v0, v1, :cond_7

    .line 42
    :cond_6
    iget-boolean p1, p1, Lo97;->p:Z

    if-eqz p1, :cond_8

    .line 43
    :cond_7
    iget-object p1, p0, Lp97;->h:Lk97;

    invoke-virtual {p1}, Lk97;->flush()V

    .line 44
    :cond_8
    iget p1, p0, Lp97;->l:I

    const v0, 0x7ffffffd

    if-lt p1, v0, :cond_9

    const p1, 0x7fffffff

    .line 45
    iput p1, p0, Lp97;->l:I

    .line 46
    sget-object v0, Lka7;->f:Lka7;

    sget-object v1, Lx47;->n:Lx47;

    const-string v2, "Stream ids exhausted"

    .line 47
    invoke-virtual {v1, v2}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v1

    .line 48
    invoke-virtual {p0, p1, v0, v1}, Lp97;->v(ILka7;Lx47;)V

    goto :goto_4

    :cond_9
    add-int/lit8 p1, p1, 0x2

    .line 49
    iput p1, p0, Lp97;->l:I

    :goto_4
    return-void

    :catchall_0
    move-exception p1

    .line 50
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 51
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 52
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v5, v0}, Lc50;->q0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y()V
    .locals 8

    .line 1
    iget-object v0, p0, Lp97;->t:Lx47;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lp97;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lp97;->C:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-boolean v0, p0, Lp97;->w:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lp97;->w:Z

    .line 4
    iget-object v1, p0, Lp97;->F:Ln77;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v4, v1, Ln77;->e:Ln77$e;

    sget-object v5, Ln77$e;->j:Ln77$e;

    if-eq v4, v5, :cond_3

    .line 7
    iput-object v5, v1, Ln77;->e:Ln77$e;

    .line 8
    iget-object v4, v1, Ln77;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_2

    .line 9
    invoke-interface {v4, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 10
    :cond_2
    iget-object v4, v1, Ln77;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_3

    .line 11
    invoke-interface {v4, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 12
    iput-object v3, v1, Ln77;->g:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_3
    monitor-exit v1

    .line 14
    sget-object v1, Lu67;->n:Lx87$c;

    iget-object v4, p0, Lp97;->E:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1, v4}, Lx87;->b(Lx87$c;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, p0, Lp97;->E:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    monitor-exit v1

    throw v0

    .line 16
    :cond_4
    :goto_0
    iget-object v1, p0, Lp97;->v:La77;

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {p0}, Lp97;->o()Ljava/lang/Throwable;

    move-result-object v4

    .line 18
    monitor-enter v1

    .line 19
    :try_start_1
    iget-boolean v5, v1, La77;->d:Z

    if-eqz v5, :cond_5

    .line 20
    monitor-exit v1

    goto :goto_2

    .line 21
    :cond_5
    iput-boolean v0, v1, La77;->d:Z

    .line 22
    iput-object v4, v1, La77;->e:Ljava/lang/Throwable;

    .line 23
    iget-object v5, v1, La77;->c:Ljava/util/Map;

    .line 24
    iput-object v3, v1, La77;->c:Ljava/util/Map;

    .line 25
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La67$a;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    .line 28
    new-instance v7, Lz67;

    invoke-direct {v7, v6, v4}, Lz67;-><init>(La67$a;Ljava/lang/Throwable;)V

    .line 29
    invoke-static {v5, v7}, La77;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 30
    :cond_6
    :goto_2
    iput-object v3, p0, Lp97;->v:La77;

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 31
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 32
    :cond_7
    :goto_3
    iget-boolean v1, p0, Lp97;->u:Z

    if-nez v1, :cond_8

    .line 33
    iput-boolean v0, p0, Lp97;->u:Z

    .line 34
    iget-object v0, p0, Lp97;->h:Lk97;

    sget-object v1, Lka7;->f:Lka7;

    new-array v3, v2, [B

    invoke-virtual {v0, v2, v1, v3}, Lk97;->H0(ILka7;[B)V

    .line 35
    :cond_8
    iget-object v0, p0, Lp97;->h:Lk97;

    invoke-virtual {v0}, Lk97;->close()V

    :cond_9
    :goto_4
    return-void
.end method
