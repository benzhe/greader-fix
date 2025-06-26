.class public Lgd3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxb3;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public volatile d:Ljava/lang/reflect/Method;

.field public final e:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public varargs constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxb3;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lgd3;->d:Ljava/lang/reflect/Method;

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lgd3;->f:Ljava/util/concurrent/CountDownLatch;

    .line 4
    iput-object p1, p0, Lgd3;->a:Lxb3;

    .line 5
    iput-object p2, p0, Lgd3;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lgd3;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lgd3;->e:[Ljava/lang/Class;

    .line 8
    iget-object p1, p1, Lxb3;->b:Ljava/util/concurrent/ExecutorService;

    .line 9
    new-instance p2, Ljd3;

    invoke-direct {p2, p0}, Ljd3;-><init>(Lgd3;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final a([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb33;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgd3;->a:Lxb3;

    .line 2
    iget-object v0, v0, Lxb3;->d:Lx33;

    .line 3
    invoke-virtual {v0, p1, p2}, Lx33;->b([BLjava/lang/String;)[B

    move-result-object p1

    .line 4
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2
.end method
