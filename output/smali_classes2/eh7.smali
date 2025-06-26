.class public final Leh7;
.super Lac7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lac7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ldc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldc7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc7<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lac7;-><init>()V

    .line 2
    iput-object p1, p0, Leh7;->e:Ldc7;

    return-void
.end method


# virtual methods
.method public g(Lcc7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Leh7$a;

    invoke-direct {v0, p1}, Leh7$a;-><init>(Lcc7;)V

    .line 2
    invoke-interface {p1, v0}, Lcc7;->c(Lic7;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Leh7;->e:Ldc7;

    invoke-interface {p1, v0}, Ldc7;->a(Lbc7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Leh7$a;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
