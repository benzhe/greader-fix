.class public final Leo6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz35;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leo6;->a(Lib7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz35<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lib7;


# direct methods
.method public constructor <init>(Lib7;)V
    .locals 0

    iput-object p1, p0, Leo6$a;->a:Lib7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le45;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le45<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Leo6$a;->a:Lib7;

    check-cast p1, Lwd7$a;

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lyc7;->e:Lyc7;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic7;

    if-eq v0, v1, :cond_1

    .line 4
    :try_start_0
    iget-object p1, p1, Lwd7$a;->e:Ljb7;

    invoke-interface {p1}, Ljb7;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lic7;->k()V

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lic7;->k()V

    .line 6
    :cond_0
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
