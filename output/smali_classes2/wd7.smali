.class public final Lwd7;
.super Lhb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwd7$a;
    }
.end annotation


# instance fields
.field public final a:Lkb7;


# direct methods
.method public constructor <init>(Lkb7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhb7;-><init>()V

    .line 2
    iput-object p1, p0, Lwd7;->a:Lkb7;

    return-void
.end method


# virtual methods
.method public i(Ljb7;)V
    .locals 1

    .line 1
    new-instance v0, Lwd7$a;

    invoke-direct {v0, p1}, Lwd7$a;-><init>(Ljb7;)V

    .line 2
    invoke-interface {p1, v0}, Ljb7;->c(Lic7;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lwd7;->a:Lkb7;

    invoke-interface {p1, v0}, Lkb7;->a(Lib7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Lwd7$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
