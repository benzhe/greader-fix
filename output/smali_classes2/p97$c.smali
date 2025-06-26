.class public Lp97$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp97;->d(Lc87$a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f:Lj97;

.field public final synthetic g:Lsa7;

.field public final synthetic h:Lp97;


# direct methods
.method public constructor <init>(Lp97;Ljava/util/concurrent/CountDownLatch;Lj97;Lsa7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp97$c;->h:Lp97;

    iput-object p2, p0, Lp97$c;->e:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lp97$c;->f:Lj97;

    iput-object p4, p0, Lp97$c;->g:Lsa7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lp97$c;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :goto_0
    new-instance v0, Lp97$c$a;

    invoke-direct {v0, p0}, Lp97$c$a;-><init>(Lp97$c;)V

    invoke-static {v0}, Ln56;->p(Lvt7;)Lat7;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    :try_start_1
    iget-object v3, p0, Lp97$c;->h:Lp97;

    iget-object v4, v3, Lp97;->P:Lu37;

    if-nez v4, :cond_0

    .line 5
    iget-object v4, v3, Lp97;->y:Ljavax/net/SocketFactory;

    .line 6
    iget-object v3, v3, Lp97;->a:Ljava/net/InetSocketAddress;

    .line 7
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v5, p0, Lp97$c;->h:Lp97;

    .line 8
    iget-object v5, v5, Lp97;->a:Ljava/net/InetSocketAddress;

    .line 9
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v3

    :goto_1
    move-object v6, v3

    goto :goto_2

    .line 10
    :cond_0
    iget-object v5, v4, Lu37;->e:Ljava/net/SocketAddress;

    .line 11
    instance-of v6, v5, Ljava/net/InetSocketAddress;

    if-eqz v6, :cond_4

    .line 12
    iget-object v6, v4, Lu37;->f:Ljava/net/InetSocketAddress;

    .line 13
    check-cast v5, Ljava/net/InetSocketAddress;

    .line 14
    iget-object v7, v4, Lu37;->g:Ljava/lang/String;

    .line 15
    iget-object v4, v4, Lu37;->h:Ljava/lang/String;

    .line 16
    invoke-static {v3, v6, v5, v7, v4}, Lp97;->h(Lp97;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    goto :goto_1

    .line 17
    :goto_2
    iget-object v3, p0, Lp97$c;->h:Lp97;

    .line 18
    iget-object v4, v3, Lp97;->z:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v4, :cond_1

    .line 19
    iget-object v5, v3, Lp97;->A:Ljavax/net/ssl/HostnameVerifier;

    .line 20
    invoke-virtual {v3}, Lp97;->m()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lp97$c;->h:Lp97;

    invoke-virtual {v1}, Lp97;->n()I

    move-result v8

    iget-object v1, p0, Lp97$c;->h:Lp97;

    .line 21
    iget-object v9, v1, Lp97;->D:Lz97;

    .line 22
    invoke-static/range {v4 .. v9}, Lt97;->a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Socket;Ljava/lang/String;ILz97;)Ljavax/net/ssl/SSLSocket;

    move-result-object v6

    .line 23
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 24
    :cond_1
    invoke-virtual {v6, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 25
    invoke-static {v6}, Ln56;->f2(Ljava/net/Socket;)Lvt7;

    move-result-object v3

    invoke-static {v3}, Ln56;->p(Lvt7;)Lat7;

    move-result-object v0

    .line 26
    iget-object v3, p0, Lp97$c;->f:Lj97;

    invoke-static {v6}, Ln56;->b2(Ljava/net/Socket;)Ltt7;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lj97;->a(Ltt7;Ljava/net/Socket;)V

    .line 27
    iget-object v3, p0, Lp97$c;->h:Lp97;

    .line 28
    iget-object v4, v3, Lp97;->s:Lv27;

    .line 29
    invoke-virtual {v4}, Lv27;->b()Lv27$b;

    move-result-object v4

    sget-object v5, Lt37;->a:Lv27$c;

    .line 30
    invoke-virtual {v6}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lv27$b;->b(Lv27$c;Ljava/lang/Object;)Lv27$b;

    sget-object v5, Lt37;->b:Lv27$c;

    .line 31
    invoke-virtual {v6}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lv27$b;->b(Lv27$c;Ljava/lang/Object;)Lv27$b;

    sget-object v5, Lt37;->c:Lv27$c;

    .line 32
    invoke-virtual {v4, v5, v1}, Lv27$b;->b(Lv27$c;Ljava/lang/Object;)Lv27$b;

    sget-object v5, Lt67;->d:Lv27$c;

    if-nez v1, :cond_2

    .line 33
    sget-object v7, Lu47;->e:Lu47;

    goto :goto_3

    :cond_2
    sget-object v7, Lu47;->g:Lu47;

    .line 34
    :goto_3
    invoke-virtual {v4, v5, v7}, Lv27$b;->b(Lv27$c;Ljava/lang/Object;)Lv27$b;

    .line 35
    invoke-virtual {v4}, Lv27$b;->a()Lv27;

    move-result-object v4

    .line 36
    iput-object v4, v3, Lp97;->s:Lv27;
    :try_end_1
    .catch Ly47; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    iget-object v3, p0, Lp97$c;->h:Lp97;

    new-instance v4, Lp97$e;

    iget-object v5, p0, Lp97$c;->g:Lsa7;

    check-cast v5, Lpa7;

    invoke-virtual {v5, v0, v2}, Lpa7;->e(Lat7;Z)Lla7;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lp97$e;-><init>(Lp97;Lla7;)V

    .line 38
    iput-object v4, v3, Lp97;->r:Lp97$e;

    .line 39
    iget-object v0, p0, Lp97$c;->h:Lp97;

    .line 40
    iget-object v3, v0, Lp97;->j:Ljava/lang/Object;

    .line 41
    monitor-enter v3

    .line 42
    :try_start_2
    iget-object v0, p0, Lp97$c;->h:Lp97;

    const-string v2, "socket"

    invoke-static {v6, v2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 44
    iget-object v0, p0, Lp97$c;->h:Lp97;

    new-instance v2, Lv37$b;

    invoke-direct {v2, v1}, Lv37$b;-><init>(Ljavax/net/ssl/SSLSession;)V

    .line 45
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 47
    :cond_4
    :try_start_3
    sget-object v1, Lx47;->m:Lx47;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported SocketAddress implementation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lp97$c;->h:Lp97;

    iget-object v4, v4, Lp97;->P:Lu37;

    .line 48
    iget-object v4, v4, Lu37;->e:Ljava/net/SocketAddress;

    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v1, v3}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v1

    .line 51
    new-instance v3, Ly47;

    invoke-direct {v3, v1}, Ly47;-><init>(Lx47;)V

    .line 52
    throw v3
    :try_end_3
    .catch Ly47; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    .line 53
    :try_start_4
    iget-object v3, p0, Lp97$c;->h:Lp97;

    invoke-virtual {v3, v1}, Lp97;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    iget-object v1, p0, Lp97$c;->h:Lp97;

    new-instance v3, Lp97$e;

    iget-object v4, p0, Lp97$c;->g:Lsa7;

    check-cast v4, Lpa7;

    invoke-virtual {v4, v0, v2}, Lpa7;->e(Lat7;Z)Lla7;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lp97$e;-><init>(Lp97;Lla7;)V

    .line 55
    :goto_4
    iput-object v3, v1, Lp97;->r:Lp97$e;

    return-void

    :catch_2
    move-exception v1

    .line 56
    :try_start_5
    iget-object v3, p0, Lp97$c;->h:Lp97;

    const/4 v4, 0x0

    sget-object v5, Lka7;->l:Lka7;

    .line 57
    iget-object v1, v1, Ly47;->e:Lx47;

    .line 58
    invoke-virtual {v3, v4, v5, v1}, Lp97;->v(ILka7;Lx47;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 59
    iget-object v1, p0, Lp97$c;->h:Lp97;

    new-instance v3, Lp97$e;

    iget-object v4, p0, Lp97$c;->g:Lsa7;

    check-cast v4, Lpa7;

    invoke-virtual {v4, v0, v2}, Lpa7;->e(Lat7;Z)Lla7;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lp97$e;-><init>(Lp97;Lla7;)V

    goto :goto_4

    :goto_5
    iget-object v3, p0, Lp97$c;->h:Lp97;

    new-instance v4, Lp97$e;

    iget-object v5, p0, Lp97$c;->g:Lsa7;

    check-cast v5, Lpa7;

    invoke-virtual {v5, v0, v2}, Lpa7;->e(Lat7;Z)Lla7;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lp97$e;-><init>(Lp97;Lla7;)V

    .line 60
    iput-object v4, v3, Lp97;->r:Lp97$e;

    .line 61
    throw v1
.end method
