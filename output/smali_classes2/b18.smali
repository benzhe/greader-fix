.class public final Lb18;
.super Ld18;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld18<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lk08;Lp08;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk08;",
            "Lp08<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "koin"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beanDefinition"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Ld18;-><init>(Lk08;Lp08;)V

    return-void
.end method


# virtual methods
.method public b(Lc18;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc18;",
            ")TT;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ld18;->a(Lc18;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
