.class public final Ldt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lat0;


# direct methods
.method public constructor <init>(Lat0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldt0;->a:Lat0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ldt0;->a:Lat0;

    .line 2
    iget-object p1, p1, Lat0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ldt0;->a:Lat0;

    .line 2
    iget-object p1, p1, Lat0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
