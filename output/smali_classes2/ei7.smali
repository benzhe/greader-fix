.class public final Lei7;
.super Lzb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lei7$a;,
        Lei7$b;,
        Lei7$c;
    }
.end annotation


# static fields
.field public static final a:Lei7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lei7;

    invoke-direct {v0}, Lei7;-><init>()V

    sput-object v0, Lei7;->a:Lei7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzb7;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lzb7$b;
    .locals 1

    .line 1
    new-instance v0, Lei7$c;

    invoke-direct {v0}, Lei7$c;-><init>()V

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)Lic7;
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2
    sget-object p1, Lzc7;->e:Lzc7;

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lic7;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    const-string p2, "run is null"

    .line 2
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 5
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    sget-object p1, Lzc7;->e:Lzc7;

    return-object p1
.end method
