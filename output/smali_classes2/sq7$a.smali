.class public abstract Lsq7$a;
.super Lnq7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsq7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnq7<",
        "Lsq7;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lsq7;

.field public final c:Lsq7;


# direct methods
.method public constructor <init>(Lsq7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnq7;-><init>()V

    iput-object p1, p0, Lsq7$a;->c:Lsq7;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lsq7;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lsq7$a;->c:Lsq7;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lsq7$a;->b:Lsq7;

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    sget-object v1, Lsq7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 4
    iget-object p1, p0, Lsq7$a;->c:Lsq7;

    iget-object p2, p0, Lsq7$a;->b:Lsq7;

    invoke-static {p2}, Lim7;->c(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1, p2}, Lsq7;->d(Lsq7;)V

    :cond_2
    return-void
.end method
