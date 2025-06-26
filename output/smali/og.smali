.class public abstract Log;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Llg;

.field public volatile c:Leh;


# direct methods
.method public constructor <init>(Llg;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Log;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Log;->b:Llg;

    return-void
.end method


# virtual methods
.method public a()Leh;
    .locals 3

    .line 1
    iget-object v0, p0, Log;->b:Llg;

    invoke-virtual {v0}, Llg;->a()V

    .line 2
    iget-object v0, p0, Log;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Log;->c:Leh;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Log;->b()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Log;->b:Llg;

    invoke-virtual {v1, v0}, Llg;->d(Ljava/lang/String;)Leh;

    move-result-object v0

    .line 6
    iput-object v0, p0, Log;->c:Leh;

    .line 7
    :cond_0
    iget-object v0, p0, Log;->c:Leh;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Log;->b()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Log;->b:Llg;

    invoke-virtual {v1, v0}, Llg;->d(Ljava/lang/String;)Leh;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c(Leh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Log;->c:Leh;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Log;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
