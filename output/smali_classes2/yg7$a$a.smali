.class public final Lyg7$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyg7$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
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
.field public final synthetic e:Lyg7$a;


# direct methods
.method public constructor <init>(Lyg7$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyg7$a$a;->e:Lyg7$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyg7$a$a;->e:Lyg7$a;

    .line 2
    iget-object v1, v0, Lyg7$a;->i:Lhc7;

    invoke-virtual {v1, p0}, Lhc7;->c(Lic7;)Z

    .line 3
    invoke-virtual {v0}, Lyg7$a;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lyg7$a$a;->e:Lyg7$a;

    .line 2
    iget-object v1, v0, Lyg7$a;->i:Lhc7;

    invoke-virtual {v1, p0}, Lhc7;->c(Lic7;)Z

    .line 3
    invoke-virtual {v0, p1}, Lyg7$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyc7;->w(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyc7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method
