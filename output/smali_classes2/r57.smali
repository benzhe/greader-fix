.class public final Lr57;
.super Lz27;
.source "SourceFile"


# instance fields
.field public final a:Ls57;

.field public final b:Ld97;


# direct methods
.method public constructor <init>(Ls57;Ld97;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz27;-><init>()V

    const-string v0, "tracer"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lr57;->a:Ls57;

    const-string p1, "time"

    .line 3
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lr57;->b:Ld97;

    return-void
.end method

.method public static d(Lz27$a;)Ljava/util/logging/Level;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object p0
.end method


# virtual methods
.method public a(Lz27$a;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lr57;->a:Ls57;

    .line 2
    iget-object v0, v0, Ls57;->b:Ly37;

    .line 3
    invoke-static {p1}, Lr57;->d(Lz27$a;)Ljava/util/logging/Level;

    move-result-object v1

    .line 4
    sget-object v2, Ls57;->e:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v0, v1, p2}, Ls57;->a(Ly37;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lr57;->c(Lz27$a;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    sget-object v0, Lz27$a;->e:Lz27$a;

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lr57;->a:Ls57;

    const/4 v7, 0x0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    .line 10
    sget-object p1, Lw37$a;->f:Lw37$a;

    goto :goto_0

    .line 11
    :cond_2
    sget-object p1, Lw37$a;->h:Lw37$a;

    goto :goto_0

    .line 12
    :cond_3
    sget-object p1, Lw37$a;->g:Lw37$a;

    :goto_0
    move-object v3, p1

    .line 13
    iget-object p1, p0, Lr57;->b:Ld97;

    .line 14
    invoke-interface {p1}, Ld97;->a()J

    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "description"

    .line 16
    invoke-static {p2, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "severity"

    .line 17
    invoke-static {v3, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timestampNanos"

    .line 18
    invoke-static {p1, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const-string v2, "at least one of channelRef and subchannelRef must be null"

    .line 19
    invoke-static {v1, v2}, Lc50;->G(ZLjava/lang/Object;)V

    .line 20
    new-instance v9, Lw37;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lw37;-><init>(Ljava/lang/String;Lw37$a;JLx37;Lx37;Lv37$a;)V

    .line 21
    iget-object p1, v0, Ls57;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 22
    :try_start_0
    iget-object p2, v0, Ls57;->c:Ljava/util/Collection;

    if-eqz p2, :cond_4

    .line 23
    invoke-interface {p2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_4
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_5
    :goto_1
    return-void
.end method

.method public varargs b(Lz27$a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lr57;->d(Lz27$a;)Ljava/util/logging/Level;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lr57;->c(Lz27$a;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ls57;->e:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    :goto_1
    invoke-virtual {p0, p1, p2}, Lr57;->a(Lz27$a;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lz27$a;)Z
    .locals 3

    .line 1
    sget-object v0, Lz27$a;->e:Lz27$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lr57;->a:Ls57;

    .line 2
    iget-object v0, p1, Ls57;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p1, p1, Ls57;->c:Ljava/util/Collection;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    if-eqz p1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
