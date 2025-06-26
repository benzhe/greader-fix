.class public final Lih7$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lih7$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcc7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lic7;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcc7<",
            "-TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lcc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lic7;",
            ">;",
            "Lcc7<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lih7$a$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Lih7$a$a;->f:Lcc7;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lih7$a$a;->f:Lcc7;

    invoke-interface {v0, p1}, Lcc7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lih7$a$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lih7$a$a;->f:Lcc7;

    invoke-interface {v0, p1}, Lcc7;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
