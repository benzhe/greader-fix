.class public final Lge7;
.super Lhb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lge7$a;
    }
.end annotation


# instance fields
.field public final a:Llb7;

.field public final b:Lzb7;


# direct methods
.method public constructor <init>(Llb7;Lzb7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhb7;-><init>()V

    .line 2
    iput-object p1, p0, Lge7;->a:Llb7;

    .line 3
    iput-object p2, p0, Lge7;->b:Lzb7;

    return-void
.end method


# virtual methods
.method public i(Ljb7;)V
    .locals 2

    .line 1
    new-instance v0, Lge7$a;

    iget-object v1, p0, Lge7;->a:Llb7;

    invoke-direct {v0, p1, v1}, Lge7$a;-><init>(Ljb7;Llb7;)V

    .line 2
    invoke-interface {p1, v0}, Ljb7;->c(Lic7;)V

    .line 3
    iget-object p1, p0, Lge7;->b:Lzb7;

    invoke-virtual {p1, v0}, Lzb7;->b(Ljava/lang/Runnable;)Lic7;

    move-result-object p1

    .line 4
    iget-object v0, v0, Lge7$a;->f:Lcd7;

    .line 5
    invoke-static {v0, p1}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method
