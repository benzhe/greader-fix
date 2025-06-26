.class public final Lu67;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu67$h;,
        Lu67$g;,
        Lu67$f;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final e:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final g:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:J

.field public static final k:Lt47;

.field public static final l:Lx27$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx27$a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lx87$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx87$c<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lx87$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx87$c<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lqd5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd5<",
            "Lpd5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lu67;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lu67;->a:Ljava/util/logging/Logger;

    const-string v0, "US-ASCII"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 3
    new-instance v0, Lu67$h;

    invoke-direct {v0}, Lu67$h;-><init>()V

    const-string v1, "grpc-timeout"

    .line 4
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v0

    sput-object v0, Lu67;->b:Li47$f;

    .line 5
    sget-object v0, Li47;->c:Li47$d;

    const-string v1, "grpc-encoding"

    .line 6
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v1

    sput-object v1, Lu67;->c:Li47$f;

    .line 7
    new-instance v1, Lu67$f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lu67$f;-><init>(Lu67$a;)V

    const-string v3, "grpc-accept-encoding"

    .line 8
    invoke-static {v3, v1}, Lz37;->a(Ljava/lang/String;Lz37$a;)Li47$f;

    move-result-object v1

    sput-object v1, Lu67;->d:Li47$f;

    const-string v1, "content-encoding"

    .line 9
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v1

    sput-object v1, Lu67;->e:Li47$f;

    .line 10
    new-instance v1, Lu67$f;

    invoke-direct {v1, v2}, Lu67$f;-><init>(Lu67$a;)V

    const-string v2, "accept-encoding"

    .line 11
    invoke-static {v2, v1}, Lz37;->a(Ljava/lang/String;Lz37$a;)Li47$f;

    move-result-object v1

    sput-object v1, Lu67;->f:Li47$f;

    const-string v1, "content-type"

    .line 12
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v1

    sput-object v1, Lu67;->g:Li47$f;

    const-string v1, "te"

    .line 13
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v1

    sput-object v1, Lu67;->h:Li47$f;

    const-string v1, "user-agent"

    .line 14
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v0

    sput-object v0, Lu67;->i:Li47$f;

    .line 15
    sget-object v0, Ljd5$c;->b:Ljd5$c;

    .line 16
    sget-object v0, Ljd5$d;->b:Ljd5$d;

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lu67;->j:J

    .line 19
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 21
    new-instance v0, Lm87;

    invoke-direct {v0}, Lm87;-><init>()V

    sput-object v0, Lu67;->k:Lt47;

    const-string v0, "io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER"

    .line 22
    invoke-static {v0}, Lx27$a;->a(Ljava/lang/String;)Lx27$a;

    move-result-object v0

    sput-object v0, Lu67;->l:Lx27$a;

    .line 23
    new-instance v0, Lu67$b;

    invoke-direct {v0}, Lu67$b;-><init>()V

    sput-object v0, Lu67;->m:Lx87$c;

    .line 24
    new-instance v0, Lu67$c;

    invoke-direct {v0}, Lu67$c;-><init>()V

    sput-object v0, Lu67;->n:Lx87$c;

    .line 25
    new-instance v0, Lu67$d;

    invoke-direct {v0}, Lu67$d;-><init>()V

    sput-object v0, Lu67;->o:Lqd5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    const-string v0, "authority"

    .line 1
    invoke-static {p0, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid authority: "

    invoke-static {v2, p0}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object v0, Lu67;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "exception caught in closeQuietly"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static c(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Ljava/net/InetSocketAddress;

    const-string v1, "getHostString"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 3
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6
    new-instance p1, Lje5;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lje5;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object p1
.end method

.method public static e(Lc47$e;Z)La67;
    .locals 2

    .line 1
    iget-object v0, p0, Lc47$e;->a:Lc47$h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc47$h;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf97;

    invoke-interface {v0}, Lf97;->a()La67;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object p0, p0, Lc47$e;->b:Le37$a;

    if-nez p0, :cond_1

    return-object v0

    .line 4
    :cond_1
    new-instance p1, Lu67$e;

    invoke-direct {p1, v0, p0}, Lu67$e;-><init>(La67;Le37$a;)V

    return-object p1

    .line 5
    :cond_2
    iget-object v0, p0, Lc47$e;->c:Lx47;

    .line 6
    invoke-virtual {v0}, Lx47;->f()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iget-boolean v0, p0, Lc47$e;->d:Z

    if-eqz v0, :cond_3

    .line 8
    new-instance p1, Ln67;

    .line 9
    iget-object p0, p0, Lc47$e;->c:Lx47;

    .line 10
    sget-object v0, Lz57$a;->g:Lz57$a;

    invoke-direct {p1, p0, v0}, Ln67;-><init>(Lx47;Lz57$a;)V

    return-object p1

    :cond_3
    if-nez p1, :cond_4

    .line 11
    new-instance p1, Ln67;

    .line 12
    iget-object p0, p0, Lc47$e;->c:Lx47;

    .line 13
    sget-object v0, Lz57$a;->e:Lz57$a;

    invoke-direct {p1, p0, v0}, Ln67;-><init>(Lx47;Lz57$a;)V

    return-object p1

    :cond_4
    return-object v1
.end method

.method public static f(I)Lx47;
    .locals 3

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    .line 1
    sget-object v0, Lx47$b;->t:Lx47$b;

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    if-eq p0, v0, :cond_5

    const/16 v0, 0x191

    if-eq p0, v0, :cond_4

    const/16 v0, 0x193

    if-eq p0, v0, :cond_3

    const/16 v0, 0x194

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1af

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    .line 2
    sget-object v0, Lx47$b;->i:Lx47$b;

    goto :goto_0

    .line 3
    :cond_1
    :pswitch_0
    sget-object v0, Lx47$b;->u:Lx47$b;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lx47$b;->s:Lx47$b;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lx47$b;->n:Lx47$b;

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lx47$b;->w:Lx47$b;

    goto :goto_0

    .line 7
    :cond_5
    sget-object v0, Lx47$b;->t:Lx47$b;

    .line 8
    :goto_0
    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
