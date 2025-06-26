.class public final Lge7$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljb7;
.implements Lic7;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lic7;",
        ">;",
        "Ljb7;",
        "Lic7;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final e:Ljb7;

.field public final f:Lcd7;

.field public final g:Llb7;


# direct methods
.method public constructor <init>(Ljb7;Llb7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lge7$a;->e:Ljb7;

    .line 3
    iput-object p2, p0, Lge7$a;->g:Llb7;

    .line 4
    new-instance p1, Lcd7;

    invoke-direct {p1}, Lcd7;-><init>()V

    iput-object p1, p0, Lge7$a;->f:Lcd7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lge7$a;->e:Ljb7;

    invoke-interface {v0}, Ljb7;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lge7$a;->e:Ljb7;

    invoke-interface {v0, p1}, Ljb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyc7;->w(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-static {p0}, Lyc7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lge7$a;->f:Lcd7;

    .line 3
    invoke-static {v0}, Lyc7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lge7$a;->g:Llb7;

    invoke-interface {v0, p0}, Llb7;->a(Ljb7;)V

    return-void
.end method
