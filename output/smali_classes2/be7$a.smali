.class public final Lbe7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcc7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljb7;


# direct methods
.method public constructor <init>(Ljb7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbe7$a;->e:Ljb7;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbe7$a;->e:Ljb7;

    invoke-interface {v0, p1}, Ljb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbe7$a;->e:Ljb7;

    invoke-interface {v0, p1}, Ljb7;->c(Lic7;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lbe7$a;->e:Ljb7;

    invoke-interface {p1}, Ljb7;->a()V

    return-void
.end method
