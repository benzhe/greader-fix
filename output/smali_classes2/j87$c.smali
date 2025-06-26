.class public final Lj87$c;
.super Lc47$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lc47$h;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Lj87;


# direct methods
.method public constructor <init>(Lj87;Lc47$h;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lj87$c;->c:Lj87;

    invoke-direct {p0}, Lc47$i;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lj87$c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p1, "subchannel"

    .line 3
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lj87$c;->a:Lc47$h;

    return-void
.end method


# virtual methods
.method public a(Lc47$f;)Lc47$e;
    .locals 3

    .line 1
    iget-object p1, p0, Lj87$c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lj87$c;->c:Lj87;

    .line 3
    iget-object p1, p1, Lj87;->b:Lc47$d;

    .line 4
    invoke-virtual {p1}, Lc47$d;->c()Lb57;

    move-result-object p1

    new-instance v0, Lj87$c$a;

    invoke-direct {v0, p0}, Lj87$c$a;-><init>(Lj87$c;)V

    .line 5
    iget-object v1, p1, Lb57;->f:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v0, v2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Lb57;->a()V

    .line 7
    :cond_0
    sget-object p1, Lc47$e;->e:Lc47$e;

    return-object p1
.end method
