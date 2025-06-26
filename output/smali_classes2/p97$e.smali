.class public Lp97$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lla7$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final e:Lq97;

.field public f:Lla7;

.field public g:Z

.field public final synthetic h:Lp97;


# direct methods
.method public constructor <init>(Lp97;Lla7;)V
    .locals 3

    .line 1
    new-instance v0, Lq97;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v2, Lp97;

    invoke-direct {v0, v1, v2}, Lq97;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Lp97$e;->h:Lp97;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lp97$e;->g:Z

    .line 4
    iput-object p2, p0, Lp97$e;->f:Lla7;

    .line 5
    iput-object v0, p0, Lp97$e;->e:Lq97;

    return-void
.end method

.method public constructor <init>(Lp97;Lla7;Lq97;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lp97$e;->h:Lp97;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lp97$e;->g:Z

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lp97$e;->f:Lla7;

    .line 9
    iput-object p1, p0, Lp97$e;->e:Lq97;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "Exception closing frame reader"

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "OkHttpClientTransport"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, p0, Lp97$e;->f:Lla7;

    check-cast v3, Lpa7$c;

    invoke-virtual {v3, p0}, Lpa7$c;->a(Lla7$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, p0, Lp97$e;->h:Lp97;

    .line 5
    iget-object v3, v3, Lp97;->F:Ln77;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Ln77;->a()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, p0, Lp97$e;->h:Lp97;

    sget-object v4, Lka7;->l:Lka7;

    sget-object v5, Lx47;->n:Lx47;

    const-string v6, "End of stream or IOException"

    .line 8
    invoke-virtual {v5, v6}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v5

    .line 9
    sget-object v6, Lp97;->Q:Ljava/util/Map;

    .line 10
    invoke-virtual {v3, v2, v4, v5}, Lp97;->v(ILka7;Lx47;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    iget-object v2, p0, Lp97$e;->f:Lla7;

    check-cast v2, Lpa7$c;

    .line 12
    iget-object v2, v2, Lpa7$c;->e:Lat7;

    invoke-interface {v2}, Lvt7;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 13
    :try_start_2
    iget-object v4, p0, Lp97$e;->h:Lp97;

    sget-object v5, Lka7;->g:Lka7;

    sget-object v6, Lx47;->m:Lx47;

    const-string v7, "error in frame handler"

    .line 14
    invoke-virtual {v6, v7}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v6

    invoke-virtual {v6, v3}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object v3

    .line 15
    sget-object v6, Lp97;->Q:Ljava/util/Map;

    .line 16
    invoke-virtual {v4, v2, v5, v3}, Lp97;->v(ILka7;Lx47;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    :try_start_3
    iget-object v2, p0, Lp97$e;->f:Lla7;

    check-cast v2, Lpa7$c;

    .line 18
    iget-object v2, v2, Lpa7$c;->e:Lat7;

    invoke-interface {v2}, Lvt7;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 19
    :goto_1
    sget-object v3, Lp97;->R:Ljava/util/logging/Logger;

    .line 20
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_2
    iget-object v0, p0, Lp97$e;->h:Lp97;

    .line 22
    iget-object v0, v0, Lp97;->g:Lc87$a;

    .line 23
    invoke-interface {v0}, Lc87$a;->c()V

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v2

    .line 25
    :try_start_4
    iget-object v3, p0, Lp97$e;->f:Lla7;

    check-cast v3, Lpa7$c;

    .line 26
    iget-object v3, v3, Lpa7$c;->e:Lat7;

    invoke-interface {v3}, Lvt7;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 27
    sget-object v4, Lp97;->R:Ljava/util/logging/Logger;

    .line 28
    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :goto_3
    iget-object v0, p0, Lp97$e;->h:Lp97;

    .line 30
    iget-object v0, v0, Lp97;->g:Lc87$a;

    .line 31
    invoke-interface {v0}, Lc87$a;->c()V

    .line 32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v2
.end method
