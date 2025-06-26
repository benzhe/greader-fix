.class public final Lvd7$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvd7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lic7;",
        ">;",
        "Ljb7;",
        "Lic7;"
    }
.end annotation


# instance fields
.field public final e:Ljb7;

.field public final f:Llb7;


# direct methods
.method public constructor <init>(Ljb7;Llb7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lvd7$b;->e:Ljb7;

    .line 3
    iput-object p2, p0, Lvd7$b;->f:Llb7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvd7$b;->f:Llb7;

    new-instance v1, Lvd7$a;

    iget-object v2, p0, Lvd7$b;->e:Ljb7;

    invoke-direct {v1, p0, v2}, Lvd7$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljb7;)V

    invoke-interface {v0, v1}, Llb7;->a(Ljb7;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvd7$b;->e:Ljb7;

    invoke-interface {v0, p1}, Ljb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyc7;->w(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lvd7$b;->e:Ljb7;

    invoke-interface {p1, p0}, Ljb7;->c(Lic7;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyc7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method
