.class public final Lvd7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvd7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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

.field public final f:Ljb7;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lic7;",
            ">;",
            "Ljb7;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lvd7$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Lvd7$a;->f:Ljb7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lvd7$a;->f:Ljb7;

    invoke-interface {v0}, Ljb7;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvd7$a;->f:Ljb7;

    invoke-interface {v0, p1}, Ljb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvd7$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method
