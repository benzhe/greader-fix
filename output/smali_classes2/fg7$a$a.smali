.class public final Lfg7$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfg7$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltb7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lfg7$a;


# direct methods
.method public constructor <init>(Lfg7$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfg7$a$a;->e:Lfg7$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfg7$a$a;->e:Lfg7$a;

    iget-object v0, v0, Lfg7$a;->e:Ltb7;

    invoke-interface {v0}, Ltb7;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfg7$a$a;->e:Lfg7$a;

    iget-object v0, v0, Lfg7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfg7$a$a;->e:Lfg7$a;

    invoke-static {v0, p1}, Lyc7;->w(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

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
    iget-object v0, p0, Lfg7$a$a;->e:Lfg7$a;

    iget-object v0, v0, Lfg7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
