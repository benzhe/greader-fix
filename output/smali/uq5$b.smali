.class public Luq5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsw5$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luq5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Luq5;


# direct methods
.method public constructor <init>(Luq5;Luq5$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luq5$b;->a:Luq5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILx47;)V
    .locals 1

    .line 1
    iget-object v0, p0, Luq5$b;->a:Luq5;

    .line 2
    iget-object v0, v0, Lzp5;->c:Lcr5;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcr5;->a(ILx47;)V

    return-void
.end method

.method public b(ILx47;)V
    .locals 1

    .line 1
    iget-object v0, p0, Luq5$b;->a:Luq5;

    .line 2
    iget-object v0, v0, Lzp5;->c:Lcr5;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcr5;->b(ILx47;)V

    return-void
.end method

.method public c(Lnw5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Luq5$b;->a:Luq5;

    .line 2
    iget-object v0, v0, Lzp5;->c:Lcr5;

    .line 3
    invoke-virtual {v0, p1}, Lcr5;->c(Lnw5;)V

    return-void
.end method

.method public d(I)Lln5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Luq5$b;->a:Luq5;

    .line 2
    iget-object v0, v0, Lzp5;->c:Lcr5;

    .line 3
    invoke-virtual {v0, p1}, Lcr5;->d(I)Lln5;

    move-result-object p1

    return-object p1
.end method

.method public e(Lwq5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Luq5$b;->a:Luq5;

    .line 2
    iget-object v0, v0, Lzp5;->c:Lcr5;

    .line 3
    invoke-virtual {v0, p1}, Lcr5;->e(Lwq5;)V

    return-void
.end method

.method public f(Lsu5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Luq5$b;->a:Luq5;

    .line 2
    iget-object v0, v0, Lzp5;->c:Lcr5;

    .line 3
    invoke-virtual {v0, p1}, Lcr5;->f(Lsu5;)V

    return-void
.end method
